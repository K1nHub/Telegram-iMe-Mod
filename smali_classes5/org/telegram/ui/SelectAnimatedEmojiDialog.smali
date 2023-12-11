.class public Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.super Landroid/widget/FrameLayout;
.source "SelectAnimatedEmojiDialog.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$onRecentClearedListener;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$onLongPressedListener;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackButton;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$HeaderView;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;,
        Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;
    }
.end annotation


# static fields
.field private static final emptyViewEmojis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static isFirstOpen:Z

.field private static lastSearchKeyboardLanguage:[Ljava/lang/String;

.field private static listStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private static preloaded:[Z


# instance fields
.field private accentColor:I

.field private adapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;

.field private animateExpandFromButton:Landroid/view/View;

.field private animateExpandFromButtonTranslate:F

.field private animateExpandFromPosition:I

.field private animateExpandStartTime:J

.field private animateExpandToPosition:I

.field private animationsEnabled:Z

.field private backgroundDelegate:Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;

.field private backgroundView:Landroid/view/View;

.field private baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field bigReactionAnimatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

.field bigReactionImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field public bigReactionListener:Lorg/telegram/ui/SelectAnimatedEmojiDialog$onLongPressedListener;

.field private bottomGradientShown:Z

.field private bottomGradientView:Landroid/view/View;

.field private bubble1View:Landroid/view/View;

.field private bubble2View:Landroid/view/View;

.field private cachedEmojiTabs:[Lorg/telegram/ui/Components/EmojiTabsStrip;

.field public cancelPressed:Z

.field private clearSearchRunnable:Ljava/lang/Runnable;

.field public contentView:Landroid/widget/FrameLayout;

.field private contentViewForeground:Landroid/view/View;

.field private final currentAccount:I

.field private defaultStatuses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan;",
            ">;"
        }
    .end annotation
.end field

.field private defaultTopicIconRow:I

.field private dimAnimator:Landroid/animation/ValueAnimator;

.field private dismiss:Ljava/lang/Runnable;

.field private drawBackground:Z

.field private drawableToBounds:Landroid/graphics/Rect;

.field public emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

.field public emojiGridViewContainer:Landroid/widget/FrameLayout;

.field emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field public emojiSearchEmptyView:Landroid/widget/FrameLayout;

.field private emojiSearchEmptyViewImageView:Lorg/telegram/ui/Components/BackupImageView;

.field public emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

.field private emojiSelectAlpha:F

.field private emojiSelectAnimator:Landroid/animation/ValueAnimator;

.field private emojiSelectRect:Landroid/graphics/Rect;

.field private emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

.field public emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

.field public emojiTabsShadow:Landroid/view/View;

.field private emojiX:Ljava/lang/Integer;

.field private enterAnimationInProgress:Z

.field private expandedEmojiSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public forUser:Z

.field private forumIconDrawable:Landroid/graphics/drawable/Drawable;

.field private forumIconImage:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

.field private frozenEmojiPacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private gridSearch:Z

.field private gridSwitchAnimator:Landroid/animation/ValueAnimator;

.field public gridViewContainer:Landroid/widget/FrameLayout;

.field private hideAnimator:Landroid/animation/ValueAnimator;

.field private hintExpireDate:Ljava/lang/Integer;

.field private includeEmpty:Z

.field public includeHint:Z

.field private installedEmojiSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private isAttached:Z

.field private lastQuery:Ljava/lang/String;

.field private layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private listStateId:Ljava/lang/Integer;

.field private longtapHintRow:I

.field private notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field public onRecentClearedListener:Lorg/telegram/ui/SelectAnimatedEmojiDialog$onRecentClearedListener;

.field private overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

.field private packs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/EmojiView$EmojiPack;",
            ">;"
        }
    .end annotation
.end field

.field paint:Landroid/graphics/Paint;

.field private popularSectionRow:I

.field private positionToButton:Landroid/util/SparseIntArray;

.field private positionToExpand:Landroid/util/SparseIntArray;

.field private positionToSection:Landroid/util/SparseIntArray;

.field private premiumStar:Landroid/graphics/drawable/Drawable;

.field private premiumStarColorFilter:Landroid/graphics/ColorFilter;

.field pressedProgress:F

.field private recent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan;",
            ">;"
        }
    .end annotation
.end field

.field private recentExpandButton:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

.field private recentExpanded:Z

.field private recentReactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;"
        }
    .end annotation
.end field

.field private recentReactionsEndRow:I

.field private recentReactionsSectionRow:I

.field private recentReactionsStartRow:I

.field private recentReactionsToSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
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

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private rowHashCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private scaleX:F

.field private scaleY:F

.field private scrimAlpha:F

.field private scrimColor:I

.field private scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

.field private scrimDrawableParent:Landroid/view/View;

.field private scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

.field private searchAdapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

.field public searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

.field private searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

.field private searchEmptyViewVisible:Z

.field private searchLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;"
        }
    .end annotation
.end field

.field private searchRow:I

.field private searchRunnable:Ljava/lang/Runnable;

.field public searched:Z

.field public searching:Z

.field private sectionToPosition:Landroid/util/SparseIntArray;

.field private selectStatusDateDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

.field selectedDocumentIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

.field selectedReactions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;"
        }
    .end annotation
.end field

.field public selectorAccentPaint:Landroid/graphics/Paint;

.field public selectorPaint:Landroid/graphics/Paint;

.field private showAnimator:Landroid/animation/ValueAnimator;

.field private showStickers:Z

.field private smoothScrolling:Z

.field private stickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private stickersSearchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private topGradientView:Landroid/view/View;

.field private topMarginDp:I

.field private topReactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;"
        }
    .end annotation
.end field

.field private topReactionsEndRow:I

.field private topReactionsStartRow:I

.field private topicEmojiHeaderRow:I

.field private totalCount:I

.field private type:I

.field private final updateRows:Ljava/lang/Runnable;

.field private final updateRowsDelayed:Ljava/lang/Runnable;

.field public useAccentForPlus:Z


# direct methods
.method public static synthetic $r8$lambda$2dyoA_hpomFBn7vR1Lg1p75D7Cg(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$switchGrids$9(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3vFYBDoG22edNCDccQEKcvaY1s4(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onShow$28(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3z07fKiVe6DLUnUlb19q-JfuPMM(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$22(Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5D5EjQ2vB14V4iDCIcFPa-ZbKko(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$switchSearchEmptyView$11(ZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$60C6p3Nu8_PiYOVo5DKptD8KNgE(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$CYBZVDeeVCXnONvtqj-ww_xzky8(Lorg/telegram/ui/SelectAnimatedEmojiDialog;FI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$expand$25(FI)V

    return-void
.end method

.method public static synthetic $r8$lambda$FMtW1cM1l2qFFLLOvPOR0L4Ay64(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onEmojiClick$24(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GWc5CMn1NYy5DcNK22Lwhgmjcv4(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$15(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M581htUX9dZalKD079x_-JQY6qQ(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$new$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$NGTAJq3gMCAKTwPNywbbpFGNvmA(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ODarN0iNFjJRmSrY7jJdZYVQimo(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onShow$32()V

    return-void
.end method

.method public static synthetic $r8$lambda$Pf3n2H11cjQ2pmypvJcVVE_vfhY(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$23(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$RVLKnkrLXSXUKQ43SU8zoBAHz0g(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onShow$31()V

    return-void
.end method

.method public static synthetic $r8$lambda$StDtCYcuKd4sxHv02g1XxwwFXqI(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onDismiss$33(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UlOv6E5WIf3MxWrhimOLZXGN3L8(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onShow$30()V

    return-void
.end method

.method public static synthetic $r8$lambda$Vjpn9uPFgUPt85LqNEaOtMYUaSQ(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ILandroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$new$4(ILandroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VnybNAgkd0fkxobi_3ImiYLdPTY(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$19(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Voy0CBeG7Arx98nudcfPYbCwUOY(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_emojiList;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$13(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_emojiList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XFz7EtaXDDJnljnQ4Av4fmE8nYg(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$new$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$b0U6dJeL4FKdbVwz_kuF1Ojjr0w(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$new$1(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cbrsPS7_mz4CWsqesnoHkHjKqH0(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$16(Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dkKHJFBW28J_vzY-oRcVSZ-rYTs(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/graphics/Rect;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;[ZLjava/lang/Runnable;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$animateEmojiSelect$8(Landroid/graphics/Rect;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;[ZLjava/lang/Runnable;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gjweB7P_T0OC1sP8vG5KgqQmE0I(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$hY-FByU_PMz2DXtdKuIfPvL5NHE(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onShow$29()V

    return-void
.end method

.method public static synthetic $r8$lambda$jvbF67anRrMNaiIZHjsKAimOR3M(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$switchGrids$10(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l5-ld1YUg0ola9ge6ZPdxWd0r9E(ZLjava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$14(ZLjava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nYkpPaetSxaQMjwhBN-nR8KBu00(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ZLjava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$18(ZLjava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pXW6fCX6X61LUGFDQvLqw3D7pZk(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;Z)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$21(Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$qHlhdhpl3pbM_DWTu0FQcYyxnhM(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$20(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sdUnkYt8aIBvTgLu76vSfqz8LYo(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onRecentLongClick$6(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uMDhJgQaW-yutnHoLN7ojbRkGmQ(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/util/LinkedHashSet;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$search$17(Ljava/util/LinkedHashSet;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uO0w8bAcnLn91TnIbyq_hJLV2EE(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$new$2(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wryq9NYlD4Sy8_BjHSCYg1JeXmg(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$setEnterAnimationInProgress$34(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z8P1ghVGv30ERdGmhB1Mp60gE-s(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$onRecentLongClick$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zhk7KDjodiObHpzYPR4Jbz_fPcY(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lambda$setDim$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const-string v0, "\ud83d\ude16"

    const-string v1, "\ud83d\ude2b"

    const-string v2, "\ud83e\udee0"

    const-string v3, "\ud83d\ude28"

    const-string v4, "\u2753"

    .line 1539
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emptyViewEmojis:Ljava/util/List;

    const/4 v0, 0x5

    new-array v0, v0, [Z

    .line 2986
    sput-object v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->preloaded:[Z

    const/4 v0, 0x1

    .line 4139
    sput-boolean v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isFirstOpen:Z

    .line 4848
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->listStates:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    const/4 v6, 0x1

    const/16 v8, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    .line 420
    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 11

    .line 423
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    move-object/from16 v8, p7

    invoke-static {v0, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V
    .locals 33

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    move/from16 v15, p5

    move/from16 v10, p6

    move-object/from16 v9, p7

    move/from16 v8, p9

    .line 427
    invoke-direct {v11, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 173
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    .line 175
    new-instance v0, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectorPaint:Landroid/graphics/Paint;

    .line 176
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectorAccentPaint:Landroid/graphics/Paint;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickerSets:Ljava/util/ArrayList;

    .line 346
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    const/4 v6, 0x2

    new-array v0, v6, [Lorg/telegram/ui/Components/EmojiTabsStrip;

    .line 351
    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->cachedEmojiTabs:[Lorg/telegram/ui/Components/EmojiTabsStrip;

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    .line 374
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToSection:Landroid/util/SparseIntArray;

    .line 375
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->sectionToPosition:Landroid/util/SparseIntArray;

    .line 376
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToExpand:Landroid/util/SparseIntArray;

    .line 377
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToButton:Landroid/util/SparseIntArray;

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->expandedEmojiSets:Ljava/util/ArrayList;

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->installedEmojiSets:Ljava/util/ArrayList;

    const/4 v5, 0x0

    .line 380
    iput-boolean v5, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpanded:Z

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactions:Ljava/util/ArrayList;

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultStatuses:Ljava/util/ArrayList;

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->frozenEmojiPacks:Ljava/util/ArrayList;

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    .line 388
    iput-boolean v5, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    .line 389
    iput-boolean v5, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeHint:Z

    .line 391
    iput-boolean v7, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawBackground:Z

    .line 396
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1228
    iput v4, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimAlpha:F

    .line 1234
    iput v4, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAlpha:F

    .line 1237
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 1359
    iput-boolean v5, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientShown:Z

    .line 1369
    iput-boolean v5, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->smoothScrolling:Z

    .line 1394
    iput-boolean v5, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searching:Z

    .line 1395
    iput-boolean v5, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searched:Z

    .line 1406
    iput-boolean v5, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSearch:Z

    .line 1541
    iput-boolean v5, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewVisible:Z

    const/4 v2, -0x1

    .line 2677
    iput v2, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromPosition:I

    iput v2, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandToPosition:I

    const-wide/16 v0, -0x1

    .line 2678
    iput-wide v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandStartTime:J

    .line 4113
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda17;

    invoke-direct {v0, v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows:Ljava/lang/Runnable;

    .line 4114
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda13;

    invoke-direct {v0, v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRowsDelayed:Ljava/lang/Runnable;

    .line 4145
    new-instance v0, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 4809
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->paint:Landroid/graphics/Paint;

    .line 428
    iput-object v9, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 429
    iput v15, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    move/from16 v0, p3

    .line 430
    iput-boolean v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    .line 431
    iput-object v12, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 432
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emoji"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v15, :cond_0

    const-string v2, "status"

    goto :goto_0

    :cond_0
    const-string v2, "reaction"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "usehint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    move v0, v7

    goto :goto_1

    :cond_1
    move v0, v5

    :goto_1
    iput-boolean v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeHint:Z

    .line 433
    iput v8, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->accentColor:I

    .line 435
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectorPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v1, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 436
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectorAccentPaint:Landroid/graphics/Paint;

    const/16 v1, 0x1e

    invoke-static {v8, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v8, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStarColorFilter:Landroid/graphics/ColorFilter;

    .line 439
    iput-object v14, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiX:Ljava/lang/Integer;

    if-nez v14, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    .line 440
    :cond_2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v17, 0x1a

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v17, 0x124

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v0, v1, v3}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_3

    .line 441
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xaa

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    if-le v0, v1, :cond_3

    move/from16 v17, v7

    goto :goto_3

    :cond_3
    move/from16 v17, v5

    .line 444
    :goto_3
    invoke-virtual {v11, v7}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    const/4 v1, 0x5

    const/4 v0, 0x4

    if-eqz v15, :cond_4

    if-eq v15, v6, :cond_4

    if-ne v15, v1, :cond_5

    :cond_4
    move/from16 v1, p8

    .line 446
    iput v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    .line 447
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v11, v1, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 448
    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda10;

    invoke-direct {v1, v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    const/16 v23, 0x30

    if-eqz v3, :cond_a

    .line 457
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v13}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    .line 458
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$drawable;->shadowed_bubble1:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 459
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v5, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 460
    iget-object v4, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 461
    iget-object v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    const/16 v24, 0xa

    const/high16 v25, 0x41200000    # 10.0f

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v4, 0x50

    goto :goto_4

    :cond_6
    move/from16 v4, v23

    :goto_4
    or-int/lit8 v26, v4, 0x3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v4, v5

    if-eqz v17, :cond_7

    const/16 v5, -0xc

    goto :goto_5

    :cond_7
    move v5, v0

    :goto_5
    int-to-float v5, v5

    add-float v27, v4, v5

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    goto :goto_6

    :cond_8
    iget v4, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    :goto_6
    int-to-float v4, v4

    const/16 v29, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    :goto_7
    int-to-float v5, v5

    move/from16 v28, v4

    move/from16 v30, v5

    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v11, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    :cond_a
    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$1;

    invoke-direct {v1, v11, v13, v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundView:Landroid/view/View;

    if-eq v15, v2, :cond_c

    if-ne v15, v0, :cond_b

    goto :goto_8

    :cond_b
    const/4 v6, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    move v6, v7

    .line 477
    :goto_9
    new-instance v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$2;

    move v4, v0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 p3, v3

    move v3, v6

    move-object/from16 v4, p7

    move-object v7, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$2;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Integer;)V

    iput-object v7, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    .line 525
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    .line 526
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;

    move-object/from16 v5, p3

    invoke-direct {v0, v11, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$3;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/Integer;)V

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 552
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    if-eqz v6, :cond_e

    .line 554
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setElevation(F)V

    goto :goto_a

    :cond_d
    move-object/from16 v5, p3

    const/4 v7, 0x1

    :cond_e
    :goto_a
    const/16 v6, 0x8

    if-eqz v15, :cond_f

    const/4 v0, 0x2

    if-eq v15, v0, :cond_f

    const/4 v4, 0x5

    if-ne v15, v4, :cond_10

    goto :goto_b

    :cond_f
    const/4 v4, 0x5

    .line 559
    :goto_b
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 562
    :cond_10
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundView:Landroid/view/View;

    const/4 v7, -0x1

    invoke-static {v7, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, 0x77

    const/16 v27, 0x0

    const/16 v18, 0x6

    if-eqz v15, :cond_12

    const/4 v1, 0x2

    if-ne v15, v1, :cond_11

    goto :goto_c

    :cond_11
    const/16 v28, 0x0

    goto :goto_d

    :cond_12
    :goto_c
    iget v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    add-int/lit8 v1, v1, 0x6

    move/from16 v28, v1

    :goto_d
    const/16 v29, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    add-int/lit8 v1, v1, 0x6

    move/from16 v30, v1

    goto :goto_e

    :cond_13
    const/16 v30, 0x0

    :goto_e
    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v5, :cond_18

    .line 566
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$4;

    invoke-direct {v0, v11, v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$4;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    .line 574
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->shadowed_bubble2_half:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 575
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v2, v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 576
    iget-object v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 577
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    const/16 v24, 0x11

    const/high16 v25, 0x41100000    # 9.0f

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x3

    const/16 v23, 0x50

    goto :goto_f

    :cond_14
    const/4 v1, 0x3

    :goto_f
    or-int/lit8 v26, v23, 0x3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v2, v3

    if-eqz v17, :cond_15

    const/16 v3, -0x19

    goto :goto_10

    :cond_15
    const/16 v3, 0xa

    :goto_10
    int-to-float v3, v3

    add-float v27, v2, v3

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v2

    if-eqz v2, :cond_16

    const/16 v28, 0x0

    goto :goto_11

    :cond_16
    iget v2, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    move/from16 v28, v2

    :goto_11
    const/16 v29, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v2

    if-eqz v2, :cond_17

    iget v2, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x9

    int-to-float v2, v2

    move/from16 v30, v2

    goto :goto_12

    :cond_17
    const/16 v30, 0x0

    :goto_12
    invoke-static/range {v24 .. v30}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_13

    :cond_18
    const/4 v1, 0x3

    :goto_13
    if-eqz v12, :cond_19

    if-eq v15, v1, :cond_19

    if-eq v15, v4, :cond_19

    const/4 v3, 0x4

    if-eq v15, v3, :cond_1a

    if-eqz v10, :cond_1a

    const/16 v17, 0x1

    goto :goto_14

    :cond_19
    const/4 v3, 0x4

    :cond_1a
    const/16 v17, 0x0

    :goto_14
    const/4 v1, 0x2

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_20

    .line 582
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x1

    if-eqz v17, :cond_1b

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda23;

    invoke-direct {v1, v11, v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move-object/from16 v23, v1

    move-object v1, v0

    goto :goto_16

    :cond_1b
    move-object v1, v0

    const/16 v23, 0x0

    :goto_16
    move-object v0, v1

    move-object/from16 v31, v1

    const/16 v22, 0x2

    move-object/from16 v1, p0

    move/from16 v24, v2

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    move/from16 v25, v4

    move/from16 v4, v19

    move-object/from16 v32, v5

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, p5

    move-object/from16 v8, v23

    move/from16 v9, p9

    move v12, v10

    move/from16 v10, p5

    .line 589
    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$5;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZZILjava/lang/Runnable;II)V

    move-object/from16 v0, v31

    .line 635
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    new-instance v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda9;

    invoke-direct {v2, v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v6, 0x0

    .line 643
    iput-boolean v6, v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateButtonDrawables:Z

    const/4 v7, 0x4

    if-ne v15, v7, :cond_1c

    const/16 v1, 0xd

    .line 645
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->setAnimatedEmojiCacheType(I)V

    move-object/from16 v8, v32

    const/4 v1, 0x2

    goto :goto_19

    :cond_1c
    const/4 v1, 0x2

    if-eqz v15, :cond_1e

    if-ne v15, v1, :cond_1d

    goto :goto_17

    :cond_1d
    move/from16 v2, v25

    goto :goto_18

    :cond_1e
    :goto_17
    move/from16 v2, v18

    .line 647
    :goto_18
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->setAnimatedEmojiCacheType(I)V

    move-object/from16 v8, v32

    :goto_19
    if-nez v8, :cond_1f

    const/4 v2, 0x1

    goto :goto_1a

    :cond_1f
    move v2, v6

    .line 649
    :goto_1a
    iput-boolean v2, v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->animateAppear:Z

    const/high16 v2, 0x40a00000    # 5.0f

    .line 650
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->setPaddingLeft(F)V

    .line 651
    iget-object v2, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    const/16 v3, 0x24

    const/4 v9, -0x1

    invoke-static {v9, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 652
    iget-object v2, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->cachedEmojiTabs:[Lorg/telegram/ui/Components/EmojiTabsStrip;

    aput-object v0, v2, v24

    add-int/lit8 v2, v24, 0x1

    move v3, v7

    move-object v5, v8

    move v7, v9

    move v10, v12

    move/from16 v4, v25

    const/16 v6, 0x8

    move-object/from16 v12, p1

    move-object/from16 v9, p7

    move/from16 v8, p9

    goto/16 :goto_15

    :cond_20
    move/from16 v25, v4

    move-object v8, v5

    move v9, v7

    move v12, v10

    const/4 v6, 0x0

    move v7, v3

    .line 655
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->cachedEmojiTabs:[Lorg/telegram/ui/Components/EmojiTabsStrip;

    aget-object v2, v0, v6

    iput-object v2, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    const/4 v10, 0x1

    .line 656
    aget-object v0, v0, v10

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 658
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$6;

    invoke-direct {v0, v11, v13, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$6;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Ljava/lang/Integer;)V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    .line 667
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    move-object/from16 v5, p7

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 668
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v3, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    const/16 v16, -0x1

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v17, v9, v4

    const/16 v18, 0x30

    const/16 v19, 0x0

    const/high16 v20, 0x42100000    # 36.0f

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    invoke-static {v0, v10, v9, v6}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 670
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$7;

    invoke-direct {v0, v11, v13, v15}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$7;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;I)V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    .line 694
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$8;

    invoke-direct {v0, v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$8;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const-wide/16 v3, 0xdc

    .line 700
    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 701
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const-wide/16 v3, 0x104

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 702
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const-wide/16 v3, 0xa0

    invoke-virtual {v0, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 703
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 704
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 705
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 706
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v4, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 707
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    const/16 v16, 0x26

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v0, v4, v6, v9, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 708
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;

    const/4 v2, 0x0

    invoke-direct {v0, v11, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$1;)V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->adapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;

    .line 709
    iget-object v4, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 711
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    new-instance v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$9;

    const/16 v6, 0x28

    invoke-direct {v4, v11, v13, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$9;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;I)V

    iput-object v4, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 728
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$10;

    invoke-direct {v4, v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$10;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 739
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$11;

    invoke-direct {v0, v11, v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$11;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    .line 746
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$12;

    invoke-direct {v0, v11, v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$12;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridViewContainer:Landroid/widget/FrameLayout;

    .line 796
    iget-object v4, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x77

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 797
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    iget-object v4, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridViewContainer:Landroid/widget/FrameLayout;

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 799
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$13;

    invoke-direct {v0, v11, v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$13;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;)V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    .line 806
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 807
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 808
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 810
    :cond_21
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    if-ne v15, v7, :cond_22

    .line 812
    sget v1, Lorg/telegram/messenger/R$string;->NoEmojiOrStickersFound:I

    const-string v2, "NoEmojiOrStickersFound"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    :cond_22
    if-nez v15, :cond_23

    .line 814
    sget v1, Lorg/telegram/messenger/R$string;->NoEmojiFound:I

    const-string v2, "NoEmojiFound"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    :cond_23
    if-eq v15, v10, :cond_25

    const/4 v1, 0x2

    if-ne v15, v1, :cond_24

    goto :goto_1b

    .line 818
    :cond_24
    sget v1, Lorg/telegram/messenger/R$string;->NoIconsFound:I

    const-string v2, "NoIconsFound"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    .line 816
    :cond_25
    :goto_1b
    sget v1, Lorg/telegram/messenger/R$string;->NoReactionsFound:I

    const-string v2, "NoReactionsFound"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1c
    const/high16 v1, 0x41600000    # 14.0f

    .line 821
    invoke-virtual {v0, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 822
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_emojiPanelEmptyText:I

    invoke-static {v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 823
    new-instance v1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v1, v13}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyViewImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 824
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyView:Landroid/widget/FrameLayout;

    .line 825
    iget-object v2, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyViewImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v17, 0x24

    const/16 v18, 0x24

    const/16 v19, 0x31

    const/16 v20, 0x0

    const/16 v21, 0x10

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 826
    iget-object v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyView:Landroid/widget/FrameLayout;

    const/16 v17, -0x2

    const/16 v18, -0x2

    const/16 v21, 0x3c

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 827
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 828
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyView:Landroid/widget/FrameLayout;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 829
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyView:Landroid/widget/FrameLayout;

    const/16 v17, -0x1

    const/16 v19, 0x10

    const/16 v21, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 830
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v2, 0x36

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 831
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, v11, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$1;)V

    iput-object v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchAdapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 832
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$14;

    invoke-direct {v1, v11, v13, v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$14;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;I)V

    iput-object v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 850
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$15;

    invoke-direct {v1, v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$15;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 863
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 864
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/16 v16, -0x1

    const/16 v18, 0x77

    const/16 v19, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, 0x30

    const/16 v19, 0x0

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v4, v3, v2

    const/high16 v6, 0x42100000    # 36.0f

    add-float v20, v4, v6

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 867
    new-instance v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v2, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    .line 868
    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$16;

    invoke-direct {v1, v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$16;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setAnimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;)V

    .line 879
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda33;

    invoke-direct {v1, v11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollListener(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;)V

    .line 883
    new-instance v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, p5

    move-object/from16 v3, p2

    move-object v10, v4

    move-object/from16 v4, p7

    move-object v6, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$17;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Integer;)V

    .line 979
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    float-to-long v3, v1

    invoke-virtual {v0, v10, v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;J)V

    .line 980
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v10, v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;J)V

    .line 981
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda34;

    invoke-direct {v0, v11, v15}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;I)V

    .line 1016
    iget-object v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1017
    iget-object v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1019
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$18;

    invoke-direct {v0, v11, v13, v12}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$18;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Z)V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    const/16 v1, 0x34

    .line 1038
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1039
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1040
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    const/16 v17, 0x34

    const/16 v19, 0x0

    const/16 v20, -0x4

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1042
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$19;

    invoke-direct {v0, v11, v13, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$19;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;Ljava/lang/Integer;)V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topGradientView:Landroid/view/View;

    .line 1051
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->gradient_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1052
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v2, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    const v4, 0x3f4ccccd    # 0.8f

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->multiplyAlphaComponent(IF)I

    move-result v3

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1053
    iget-object v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topGradientView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1054
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topGradientView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1055
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topGradientView:Landroid/view/View;

    const/high16 v17, 0x41a00000    # 20.0f

    const/16 v18, 0x37

    const/16 v19, 0x0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v3, v5, v3

    const/high16 v5, 0x42100000    # 36.0f

    add-float v20, v3, v5

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1057
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v13}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientView:Landroid/view/View;

    .line 1058
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->gradient_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1059
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v2, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-static {v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->multiplyAlphaComponent(IF)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1061
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1062
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientView:Landroid/view/View;

    const/16 v2, 0x14

    const/16 v3, 0x57

    const/4 v4, -0x1

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1064
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v13}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentViewForeground:Landroid/view/View;

    .line 1065
    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1066
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentViewForeground:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1067
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentViewForeground:Landroid/view/View;

    invoke-static {v4, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1069
    iget v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-virtual {v11, v15, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->preload(II)V

    .line 1071
    iget-object v0, v11, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setLayerNum(I)V

    .line 1073
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isAnimatedShow()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1074
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->beforePreparing()V

    :cond_26
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1076
    invoke-direct {v11, v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawBackground:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->sectionToPosition:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;II)V
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrollToPosition(II)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->checkScroll()V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;I)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateTabsPosition(I)V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateSearchBox()V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRow:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)F
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scaleX:F

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToSection:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToButton:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsSectionRow:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->popularSectionRow:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->longtapHintRow:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topicEmojiHeaderRow:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchAdapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->incrementHintUse()V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)F
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scaleY:F

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setBigReactionAnimatedEmoji(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectStatusDateDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    return-object p0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectStatusDateDialog:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    return-object p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/lang/Runnable;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dismiss:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/Rect;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundDelegate:Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;

    return-object p0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    return-object p1
.end method

.method static synthetic access$3702(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSwitchAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$3800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3902(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z
    .locals 0

    .line 137
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->enterAnimationInProgress()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersSearchResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 137
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->getCacheType()I

    move-result p0

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isAttached:Z

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->forumIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->forumIconImage:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    return-object p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsStartRow:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/ColorFilter;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStarColorFilter:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsEndRow:I

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactionsStartRow:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactionsEndRow:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/util/SparseIntArray;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToExpand:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultTopicIconRow:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/lang/Integer;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hintExpireDate:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpandButton:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    return-object p0
.end method

.method static synthetic access$5902(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpandButton:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->smoothScrolling:Z

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)Z
    .locals 0

    .line 137
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->smoothScrolling:Z

    return p1
.end method

.method static synthetic access$6100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpanded:Z

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultStatuses:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->installedEmojiSets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ZZ)V
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showStickers:Z

    return p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->clearRecent()V

    return-void
.end method

.method static synthetic access$702(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)Z
    .locals 0

    .line 137
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showStickers:Z

    return p1
.end method

.method static synthetic access$7100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->accentColor:I

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)J
    .locals 2

    .line 137
    iget-wide v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandStartTime:J

    return-wide v0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromButton:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromPosition:I

    return p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)F
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromButtonTranslate:F

    return p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandToPosition:I

    return p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 137
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->getPremiumStar()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)[Lorg/telegram/ui/Components/EmojiTabsStrip;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->cachedEmojiTabs:[Lorg/telegram/ui/Components/EmojiTabsStrip;

    return-object p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Lorg/telegram/messenger/AnimationNotificationsLocker;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    return-object p0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;F)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateShow(F)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ZZZ)V
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZZ)V

    return-void
.end method

.method static synthetic access$9300(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I
    .locals 0

    .line 137
    iget p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimColor:I

    return p0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;
    .locals 0

    .line 137
    iget-object p0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientView:Landroid/view/View;

    return-object p0
.end method

.method private checkScroll()V
    .locals 3

    .line 1362
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSearch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v0

    .line 1363
    iget-boolean v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientShown:Z

    if-eq v0, v1, :cond_2

    .line 1364
    iput-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientShown:Z

    .line 1365
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bottomGradientView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    return-void
.end method

.method private clearRecent()V
    .locals 2

    .line 2437
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onRecentClearedListener:Lorg/telegram/ui/SelectAnimatedEmojiDialog$onRecentClearedListener;

    if-eqz v0, :cond_0

    .line 2438
    invoke-interface {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$onRecentClearedListener;->onRecentCleared()V

    :cond_0
    return-void
.end method

.method private enterAnimationInProgress()Z
    .locals 1

    .line 2433
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->enterAnimationInProgress:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

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

.method private getCacheType()I
    .locals 4

    .line 3476
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/16 v1, 0xd

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method private getPremiumStar()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1217
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStar:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 1218
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1219
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_filled_blocked:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStar:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 1221
    :cond_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_settings_premium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStar:Landroid/graphics/drawable/Drawable;

    .line 1223
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStar:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStarColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1225
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStar:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private incrementHintUse()V
    .locals 3

    .line 2950
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 2953
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emoji"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-nez v1, :cond_1

    const-string v1, "status"

    goto :goto_0

    :cond_1
    const-string v1, "reaction"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "usehint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2954
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_2

    .line 2956
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method private isAnimatedShow()Z
    .locals 2

    .line 4148
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$animateEmojiSelect$8(Landroid/graphics/Rect;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;[ZLjava/lang/Runnable;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1321
    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Float;

    invoke-virtual {p6}, Ljava/lang/Float;->floatValue()F

    move-result p6

    mul-float v0, p6, p6

    mul-float/2addr v0, p6

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 1322
    iput v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimAlpha:F

    float-to-double v2, p6

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 1323
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float v0, v1, v0

    iput v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAlpha:F

    .line 1324
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    invoke-static {p1, v0, p6, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)V

    .line 1325
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->overshootInterpolator:Landroid/view/animation/OvershootInterpolator;

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p6

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v0, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result p2

    mul-float/2addr p1, p2

    .line 1326
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    .line 1327
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    .line 1328
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    mul-float/2addr v3, p1

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    .line 1329
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    .line 1330
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    float-to-int p1, v4

    .line 1326
    invoke-virtual {p2, v0, v1, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1332
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    const p1, 0x3f59999a    # 0.85f

    cmpl-float p1, p6, p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 1334
    aget-boolean p2, p3, p1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 1335
    aput-boolean p2, p3, p1

    .line 1336
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    if-eqz p5, :cond_0

    .line 1337
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz p1, :cond_0

    .line 1338
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->play()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$expand$25(FI)V
    .locals 3

    .line 3452
    :try_start_0
    new-instance v0, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;-><init>(Landroid/content/Context;IF)V

    .line 3453
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 3454
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3456
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 449
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dismiss:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 450
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$1(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 583
    invoke-virtual {p0, v0, v1, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->search(Ljava/lang/String;ZZ)V

    .line 584
    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onSettings()V

    .line 585
    new-instance v0, Lorg/telegram/ui/StickersActivity;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->frozenEmojiPacks:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/StickersActivity;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 586
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dismiss:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 587
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)Z
    .locals 1

    .line 636
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onRecentLongClick()V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 638
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private synthetic lambda$new$26()V
    .locals 1

    const/4 v0, 0x1

    .line 4113
    invoke-direct {p0, v0, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$27()V
    .locals 2

    .line 4115
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeDelayed(Ljava/lang/Runnable;)V

    .line 4116
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 0

    .line 880
    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->invalidateParent()V

    return-void
.end method

.method private synthetic lambda$new$4(ILandroid/view/View;I)V
    .locals 3

    .line 982
    instance-of v0, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 983
    check-cast p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 984
    iget-boolean p3, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    if-eqz p3, :cond_0

    .line 985
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->incrementHintUse()V

    .line 986
    iget-object p3, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onReactionClick(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    goto :goto_0

    .line 987
    :cond_0
    iget-boolean p3, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isStaticIcon:Z

    if-eqz p3, :cond_1

    iget-object p3, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p3, :cond_1

    .line 988
    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onStickerClick(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_0

    .line 990
    :cond_1
    iget-object p3, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiClick(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    :goto_0
    if-eq p1, v2, :cond_5

    .line 994
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 997
    :cond_2
    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const/4 p3, 0x0

    .line 998
    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiClick(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V

    if-eq p1, v2, :cond_5

    .line 1001
    :try_start_1
    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1004
    :cond_3
    instance-of v0, p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    if-eqz v0, :cond_4

    .line 1005
    check-cast p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    .line 1006
    invoke-virtual {p0, p3, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->expand(ILandroid/view/View;)V

    if-eq p1, v2, :cond_5

    .line 1009
    :try_start_2
    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->performHapticFeedback(II)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 1013
    invoke-virtual {p2}, Landroid/view/View;->callOnClick()Z

    :catch_0
    :cond_5
    :goto_1
    return-void
.end method

.method private synthetic lambda$onDismiss$33(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 4708
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    const/16 v1, 0x8

    .line 4709
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, p1

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4710
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4711
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 4713
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    if-eqz v0, :cond_1

    mul-float v1, p1, p1

    .line 4714
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4716
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4717
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 4718
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$onEmojiClick$24(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 2

    .line 2938
    iget-wide v0, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$onRecentLongClick$5(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1115
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_account_clearRecentEmojiStatuses;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_account_clearRecentEmojiStatuses;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1116
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->clearRecentEmojiStatuses()Ljava/util/ArrayList;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 1117
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZ)V

    return-void
.end method

.method private synthetic lambda$onRecentLongClick$6(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1122
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setDim(FZ)V

    return-void
.end method

.method private synthetic lambda$onShow$28(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 4182
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateShow(F)V

    return-void
.end method

.method private synthetic lambda$onShow$29()V
    .locals 1

    .line 4227
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$onShow$30()V
    .locals 3

    .line 4226
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->enableHw()V

    .line 4227
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$onShow$31()V
    .locals 1

    .line 4233
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$onShow$32()V
    .locals 3

    .line 4232
    invoke-static {}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->enableHw()V

    .line 4233
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$search$12()V
    .locals 2

    .line 1619
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1620
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1622
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchAdapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->updateRows(Z)V

    return-void
.end method

.method private static synthetic lambda$search$13(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$TL_emojiList;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1643
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 1645
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$search$14(ZLjava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1641
    sget-object p0, Lorg/telegram/ui/Components/StickerCategoriesListView;->search:Lorg/telegram/messenger/CacheFetcher;

    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda27;

    invoke-direct {v1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda27;-><init>(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p1, v1}, Lorg/telegram/messenger/CacheFetcher;->fetch(ILjava/lang/Object;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    .line 1648
    :cond_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$search$15(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;Ljava/util/ArrayList;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1654
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 1656
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$search$16(Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V
    .locals 2

    .line 1652
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda26;

    invoke-direct {v1, p2, p3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda26;-><init>(Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MediaDataController;->getAnimatedEmojiByKeywords(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$search$17(Ljava/util/LinkedHashSet;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2

    const/4 p6, 0x0

    .line 1705
    :goto_0
    :try_start_0
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p6, v0, :cond_3

    .line 1706
    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    const-string v1, "animated_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1707
    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1709
    :cond_0
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1710
    :cond_1
    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz v0, :cond_2

    .line 1712
    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    .line 1719
    :catch_0
    :cond_3
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$search$18(ZLjava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v2, p2

    move-object/from16 v9, p3

    const/4 v7, 0x0

    if-eqz p1, :cond_9

    .line 1661
    iget v0, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v0

    move v1, v7

    .line 1664
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v1, v3, :cond_4

    .line 1665
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    goto :goto_2

    .line 1668
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    move v5, v7

    .line 1672
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_3

    .line 1673
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v8, v4}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1674
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    if-eqz v8, :cond_2

    .line 1675
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1676
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1681
    :cond_4
    iget v0, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getFeaturedEmojiSets()Ljava/util/ArrayList;

    move-result-object v0

    move v1, v7

    .line 1682
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 1683
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v3, :cond_7

    .line 1684
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->keywords:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    .line 1685
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    move v5, v7

    .line 1689
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_7

    .line 1690
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v8, v4}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1691
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    if-eqz v8, :cond_6

    .line 1692
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v9, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1693
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1699
    :cond_8
    invoke-interface/range {p6 .. p6}, Ljava/lang/Runnable;->run()V

    goto :goto_7

    .line 1701
    :cond_9
    iget v0, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v8

    sget-object v10, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    const/4 v11, 0x0

    new-instance v12, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda25;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/util/LinkedHashSet;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    const/4 v13, 0x1

    iget v1, v6, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    move v14, v1

    goto :goto_6

    :cond_a
    move v14, v7

    :goto_6
    const/4 v15, 0x0

    const/16 v1, 0x1e

    .line 1721
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v7, v8

    move-object v8, v10

    move-object/from16 v9, p3

    move v10, v11

    move-object v11, v12

    move-object v12, v0

    .line 1701
    invoke-virtual/range {v7 .. v16}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Ljava/util/concurrent/CountDownLatch;ZZZLjava/lang/Integer;)V

    :goto_7
    return-void
.end method

.method private static synthetic lambda$search$19(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4

    .line 1760
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_2

    .line 1761
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;

    iget-object v1, v1, Lorg/telegram/messenger/MediaDataController$KeywordResult;->emoji:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 1762
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    .line 1763
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1764
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1765
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1766
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1770
    :cond_2
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$search$20(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/Runnable;)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p2

    .line 1726
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 1727
    invoke-interface/range {p4 .. p4}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1730
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1731
    new-instance v4, Landroid/util/LongSparseArray;

    invoke-direct {v4, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 1732
    iget v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MediaDataController;->getAllStickers()Ljava/util/HashMap;

    move-result-object v5

    .line 1733
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xe

    const/4 v8, 0x1

    if-gt v6, v7, :cond_8

    .line 1735
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object v9, p1

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_5

    add-int/lit8 v10, v6, -0x1

    const/4 v11, 0x2

    if-ge v7, v10, :cond_3

    .line 1737
    invoke-interface {v9, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const v12, 0xd83c

    if-ne v10, v12, :cond_1

    add-int/lit8 v10, v7, 0x1

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const v13, 0xdffb

    if-lt v12, v13, :cond_1

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const v12, 0xdfff

    if-le v10, v12, :cond_2

    :cond_1
    invoke-interface {v9, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v12, 0x200d

    if-ne v10, v12, :cond_3

    add-int/lit8 v10, v7, 0x1

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    const/16 v13, 0x2640

    if-eq v12, v13, :cond_2

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v12, 0x2642

    if-ne v10, v12, :cond_3

    :cond_2
    new-array v10, v11, [Ljava/lang/CharSequence;

    .line 1738
    invoke-interface {v9, v3, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v10, v3

    add-int/lit8 v11, v7, 0x2

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-interface {v9, v11, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v10, v8

    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    add-int/lit8 v6, v6, -0x2

    goto :goto_1

    .line 1741
    :cond_3
    invoke-interface {v9, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const v12, 0xfe0f

    if-ne v10, v12, :cond_4

    new-array v10, v11, [Ljava/lang/CharSequence;

    .line 1742
    invoke-interface {v9, v3, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v10, v3

    add-int/lit8 v11, v7, 0x1

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-interface {v9, v11, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v10, v8

    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    add-int/lit8 v6, v6, -0x1

    :goto_1
    add-int/lit8 v7, v7, -0x1

    :cond_4
    add-int/2addr v7, v8

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_6

    .line 1747
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_8

    .line 1748
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 1749
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1750
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_3
    if-ge v3, v7, :cond_7

    .line 1751
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1752
    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v4, v10, v11, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1754
    :cond_7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v5, :cond_9

    .line 1757
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v8, :cond_9

    .line 1758
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v6

    sget-object v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda24;

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v10, v5, v2, v1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda24;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    const/4 v11, 0x0

    move-object v8, p1

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/messenger/MediaDataController;->getEmojiSuggestions([Ljava/lang/String;Ljava/lang/String;ZLorg/telegram/messenger/MediaDataController$KeywordResultCallback;Z)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$search$21(Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;Z)V
    .locals 2

    .line 1775
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->clearSearchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1776
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1777
    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->clearSearchRunnable:Ljava/lang/Runnable;

    .line 1780
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastQuery:Ljava/lang/String;

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 1783
    iput-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searched:Z

    .line 1784
    invoke-virtual {p0, v0, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->switchGrids(ZZ)V

    .line 1785
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 1786
    invoke-virtual {p2, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->showProgress(Z)V

    .line 1788
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    if-nez p2, :cond_3

    .line 1789
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    goto :goto_0

    .line 1791
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1793
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersSearchResult:Ljava/util/ArrayList;

    if-nez p2, :cond_4

    .line 1794
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersSearchResult:Ljava/util/ArrayList;

    goto :goto_1

    .line 1796
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1798
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 1799
    iget p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eq p2, v0, :cond_5

    const/4 v1, 0x2

    if-ne p2, v1, :cond_7

    .line 1800
    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    .line 1801
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 1803
    :cond_6
    invoke-virtual {p4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    if-eqz p1, :cond_7

    .line 1805
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1809
    :cond_7
    :goto_2
    invoke-virtual {p5}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 1810
    iget-object p4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromCustomEmoji(Ljava/lang/Long;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1812
    :cond_8
    invoke-virtual {p6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 1813
    iget-object p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickersSearchResult:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 1815
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchAdapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

    xor-int/lit8 p2, p7, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->updateRows(Z)V

    return-void
.end method

.method private synthetic lambda$search$22(Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;ZLjava/lang/Runnable;)V
    .locals 10

    .line 1774
    new-instance v9, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda21;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;Z)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$search$23(Ljava/lang/String;ZZ)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v7, p1

    .line 1632
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1633
    iget v0, v9, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getReactionsMap()Ljava/util/HashMap;

    move-result-object v10

    .line 1634
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1635
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/Emoji;->fullyConsistsOfEmojis(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1636
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1637
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x5

    new-array v14, v0, [Lorg/telegram/messenger/Utilities$Callback;

    .line 1638
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda32;

    invoke-direct {v0, v2, v7, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda32;-><init>(ZLjava/lang/String;Ljava/util/LinkedHashSet;)V

    const/4 v1, 0x0

    aput-object v0, v14, v1

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda29;

    invoke-direct {v0, v9, v7, v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/LinkedHashSet;)V

    const/4 v1, 0x1

    aput-object v0, v14, v1

    new-instance v15, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda31;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v3, v8

    move-object/from16 v4, p1

    move-object v5, v10

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;ZLjava/util/LinkedHashSet;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    const/4 v0, 0x2

    aput-object v15, v14, v0

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda28;

    invoke-direct {v0, v9, v7, v12, v13}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    const/4 v1, 0x3

    aput-object v0, v14, v1

    new-instance v13, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda30;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v11

    move-object v6, v8

    move-object v7, v12

    move/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/HashMap;Ljava/util/LinkedHashSet;Ljava/util/ArrayList;Z)V

    const/4 v0, 0x4

    aput-object v13, v14, v0

    invoke-static {v14}, Lorg/telegram/messenger/Utilities;->doCallbacks([Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$setDim$7(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1139
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentViewForeground:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1140
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1142
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    const/high16 v1, -0x1000000

    const/high16 v2, 0x437f0000    # 255.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-static {v1, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result p1

    .line 1143
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1144
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1146
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1147
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    return-void
.end method

.method private static synthetic lambda$setEnterAnimationInProgress$34(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5441
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 5442
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$switchGrids$10(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1451
    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->invalidateParent()V

    return-void
.end method

.method private synthetic lambda$switchGrids$9(ZLandroid/animation/ValueAnimator;)V
    .locals 3

    .line 1424
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    sub-float p2, v0, p2

    .line 1428
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->setAlpha(F)V

    .line 1429
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 1430
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->setAlpha(F)V

    .line 1431
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 1432
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    mul-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$switchSearchEmptyView$11(ZLandroid/animation/ValueAnimator;)V
    .locals 1

    .line 1555
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p2

    .line 1559
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    mul-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private onRecentLongClick()V
    .locals 4

    .line 1111
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1112
    sget v1, Lorg/telegram/messenger/R$string;->ClearRecentEmojiStatusesTitle:I

    const-string v3, "ClearRecentEmojiStatusesTitle"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1113
    sget v1, Lorg/telegram/messenger/R$string;->ClearRecentEmojiStatusesText:I

    const-string v3, "ClearRecentEmojiStatusesText"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1114
    sget v1, Lorg/telegram/messenger/R$string;->Clear:I

    const-string v3, "Clear"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1119
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v3, "Cancel"

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 1120
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setDimEnabled(Z)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1121
    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1124
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 1125
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setDim(FZ)V

    return-void
.end method

.method private onStickerClick(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 1

    const/4 v0, 0x0

    .line 1080
    invoke-virtual {p0, p1, v0, p2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V

    return-void
.end method

.method public static preload(I)V
    .locals 4

    .line 2989
    sget-object v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->preloaded:[Z

    aget-boolean v0, v0, p0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2992
    :cond_0
    sget-object v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->preloaded:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    .line 2993
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    .line 2994
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/MediaDataController;->fetchEmojiStatuses(IZ)V

    .line 2995
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->checkReactions()V

    .line 2996
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;-><init>()V

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 2997
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getDefaultEmojiStatuses()Ljava/util/ArrayList;

    .line 2998
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->checkDefaultTopicIcons()V

    .line 2999
    invoke-static {p0, v1}, Lorg/telegram/ui/Components/StickerCategoriesListView;->preload(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private scrollToPosition(II)V
    .locals 4

    .line 1372
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1373
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    if-nez v0, :cond_0

    sub-int v0, p1, v1

    .line 1374
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42900000    # 72.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->animationsEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1375
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollDirection(I)V

    .line 1376
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-virtual {v0, p1, p2, v2, v3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollToPosition(IIZZ)V

    goto :goto_1

    .line 1378
    :cond_3
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$21;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$21;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/content/Context;I)V

    .line 1388
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 1389
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->setOffset(I)V

    .line 1390
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    :goto_1
    return-void
.end method

.method private setBigReactionAnimatedEmoji(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V
    .locals 1

    .line 1094
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isAttached:Z

    if-nez v0, :cond_0

    return-void

    .line 1097
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionAnimatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 1101
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 1103
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionAnimatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz p1, :cond_3

    .line 1105
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->premiumStarColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1106
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionAnimatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private setDim(FZ)V
    .locals 3

    .line 1132
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dimAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1133
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 1134
    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dimAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    const/high16 v0, 0x3e800000    # 0.25f

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v1, 0x0

    .line 1137
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentViewForeground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    aput v2, p2, v1

    const/4 v1, 0x1

    mul-float/2addr p1, v0

    aput p1, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dimAnimator:Landroid/animation/ValueAnimator;

    .line 1138
    new-instance p2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1150
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dimAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1151
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dimAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1152
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dimAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1154
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentViewForeground:Landroid/view/View;

    mul-float v1, p1, v0

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1155
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    const/high16 v1, -0x1000000

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr p1, v2

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {v1, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-static {p2, p1}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result p1

    .line 1156
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 1157
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1159
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    if-eqz p2, :cond_3

    .line 1160
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateRows(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 3005
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZZ)V

    return-void
.end method

.method private updateRows(ZZZ)V
    .locals 26

    move-object/from16 v0, p0

    .line 3009
    iget-boolean v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animationsEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move/from16 v1, p2

    .line 3012
    :goto_0
    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v4, 0x5

    if-nez p1, :cond_2

    .line 3017
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->frozenEmojiPacks:Ljava/util/ArrayList;

    if-nez v5, :cond_4

    .line 3018
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    iget-boolean v6, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showStickers:Z

    if-eqz v6, :cond_3

    move v6, v2

    goto :goto_1

    :cond_3
    move v6, v4

    :goto_1
    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->frozenEmojiPacks:Ljava/util/ArrayList;

    .line 3020
    :cond_4
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->frozenEmojiPacks:Ljava/util/ArrayList;

    .line 3021
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getFeaturedEmojiSets()Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3023
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3024
    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v8, -0x1

    .line 3025
    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsSectionRow:I

    .line 3026
    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsStartRow:I

    .line 3027
    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsEndRow:I

    .line 3028
    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->popularSectionRow:I

    .line 3029
    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->longtapHintRow:I

    .line 3030
    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultTopicIconRow:I

    .line 3031
    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topicEmojiHeaderRow:I

    .line 3032
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3033
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultStatuses:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3034
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3035
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3036
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3037
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->clear()V

    .line 3038
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->sectionToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->clear()V

    .line 3039
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToExpand:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->clear()V

    .line 3040
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3041
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToButton:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->clear()V

    .line 3042
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3043
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3045
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    const/4 v10, 0x4

    if-eqz v9, :cond_5

    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-ne v9, v10, :cond_6

    :cond_5
    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-eq v9, v4, :cond_6

    .line 3046
    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v11, v9, 0x1

    iput v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRow:I

    .line 3047
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v11, 0x9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3049
    :cond_6
    iput v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRow:I

    .line 3052
    :goto_2
    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const-wide/16 v12, 0x2

    const-wide/32 v14, 0xa8d7

    const/4 v8, 0x0

    const-wide/16 v16, 0xd

    const/4 v11, 0x1

    if-ne v9, v4, :cond_9

    .line 3053
    iget-boolean v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    if-eqz v9, :cond_7

    .line 3054
    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/2addr v9, v11

    iput v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    .line 3055
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3057
    :cond_7
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MediaDataController;->replyIconsDefault:Lorg/telegram/tgnet/TLRPC$TL_emojiList;

    if-eqz v4, :cond_13

    .line 3058
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    if-eqz v9, :cond_13

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_13

    move v9, v2

    .line 3059
    :goto_3
    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v9, v12, :cond_8

    .line 3060
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    new-instance v13, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v13, v10, v11, v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x1

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    .line 3062
    :goto_4
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_13

    .line 3063
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v9

    mul-long v9, v9, v16

    add-long/2addr v9, v14

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3064
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v9, 0x1

    add-int/2addr v4, v9

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    move v2, v10

    if-ne v9, v2, :cond_d

    .line 3068
    iget-boolean v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showStickers:Z

    if-eqz v2, :cond_a

    .line 3069
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lorg/telegram/messenger/MediaDataController;->getRecentStickersNoCopy(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    .line 3070
    :goto_5
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_13

    .line 3071
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/32 v9, 0xf3d9

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    mul-long v11, v11, v16

    add-long/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3072
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v9, 0x1

    add-int/2addr v4, v9

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3075
    :cond_a
    iget-boolean v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->forUser:Z

    if-eqz v2, :cond_b

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MediaDataController;->profileAvatarConstructorDefault:Lorg/telegram/tgnet/TLRPC$TL_emojiList;

    goto :goto_6

    :cond_b
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MediaDataController;->groupAvatarConstructorDefault:Lorg/telegram/tgnet/TLRPC$TL_emojiList;

    :goto_6
    if-eqz v2, :cond_13

    .line 3076
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x0

    .line 3077
    :goto_7
    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_c

    .line 3078
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v11, v2, Lorg/telegram/tgnet/TLRPC$TL_emojiList;->document_id:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-direct {v10, v11, v12, v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    .line 3080
    :goto_8
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_13

    .line 3081
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v9

    mul-long v9, v9, v16

    add-long/2addr v9, v14

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3082
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v9, 0x1

    add-int/2addr v4, v9

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    const/4 v2, 0x3

    if-ne v9, v2, :cond_13

    .line 3087
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topicEmojiHeaderRow:I

    .line 3088
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v9, 0xc

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3089
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultTopicIconRow:I

    .line 3090
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v9, 0x7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3092
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/UserConfig;->defaultTopicIcons:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 3095
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    if-nez v4, :cond_f

    .line 3097
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/MediaDataController;->getStickerSetByEmojiOrName(Ljava/lang/String;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    goto :goto_9

    :cond_e
    move-object v4, v8

    :cond_f
    :goto_9
    if-nez v4, :cond_10

    goto :goto_c

    .line 3104
    :cond_10
    iget-boolean v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    if-eqz v2, :cond_11

    .line 3105
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v9, 0x1

    add-int/2addr v2, v9

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    .line 3106
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v9, 0x2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3108
    :cond_11
    iget-object v2, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x0

    .line 3109
    :goto_a
    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_12

    .line 3110
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {v10, v11, v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_12
    const/4 v2, 0x0

    .line 3114
    :goto_b
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_13

    .line 3115
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v9

    mul-long v9, v9, v16

    add-long/2addr v9, v14

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3116
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v9, 0x1

    add-int/2addr v4, v9

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 3122
    :cond_13
    :goto_c
    iget-boolean v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeHint:Z

    if-eqz v2, :cond_14

    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_14

    const/4 v4, 0x3

    if-eq v2, v4, :cond_14

    const/4 v4, 0x4

    if-eq v2, v4, :cond_14

    const/4 v4, 0x5

    if-eq v2, v4, :cond_14

    .line 3123
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->longtapHintRow:I

    .line 3124
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v9, 0x6

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3127
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsToSet:Ljava/util/List;

    if-eqz v2, :cond_1e

    .line 3128
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactionsStartRow:I

    .line 3129
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsToSet:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    :goto_d
    const/16 v11, 0x10

    if-ge v4, v11, :cond_16

    .line 3131
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_15

    .line 3132
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactions:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_16
    const/4 v4, 0x0

    .line 3135
    :goto_e
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_17

    .line 3136
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v12, -0x1600

    iget-object v14, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactions:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hashCode()I

    move-result v14

    int-to-long v14, v14

    mul-long v14, v14, v16

    add-long/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 3138
    :cond_17
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v4, v11

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    .line 3139
    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topReactionsEndRow:I

    .line 3141
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_31

    const/4 v4, 0x0

    .line 3143
    :goto_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_19

    .line 3144
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v11, v11, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_18

    const/4 v4, 0x0

    goto :goto_10

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_19
    const/4 v4, 0x1

    :goto_10
    if-eqz v4, :cond_1a

    .line 3150
    iget v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 3151
    iget v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->popularSectionRow:I

    .line 3152
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v12, 0x5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 3155
    :cond_1a
    iget v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsSectionRow:I

    .line 3156
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v12, 0x4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3159
    :cond_1b
    :goto_11
    iget v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iput v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsStartRow:I

    .line 3160
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    .line 3161
    :goto_12
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_1d

    .line 3162
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    if-eqz v4, :cond_1c

    const/16 v12, 0x108b

    goto :goto_13

    :cond_1c
    const/16 v12, -0xc46

    :goto_13
    int-to-long v12, v12

    iget-object v14, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v14, v14, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 3164
    :cond_1d
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    .line 3165
    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsEndRow:I

    goto/16 :goto_1f

    .line 3167
    :cond_1e
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-nez v2, :cond_31

    .line 3168
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaDataController;->getRecentEmojiStatuses()Ljava/util/ArrayList;

    move-result-object v2

    .line 3169
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;-><init>()V

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    if-nez v4, :cond_1f

    goto/16 :goto_1f

    .line 3173
    :cond_1f
    iget-boolean v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    if-eqz v11, :cond_20

    .line 3174
    iget v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/2addr v11, v12

    iput v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    .line 3175
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v12, 0x2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3177
    :cond_20
    iget v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v11}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/MediaDataController;->getDefaultEmojiStatuses()Ljava/util/ArrayList;

    move-result-object v11

    .line 3179
    iget-object v12, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    const/16 v13, 0x68

    if-eqz v12, :cond_22

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_22

    const/4 v12, 0x0

    :goto_14
    const/4 v9, 0x7

    .line 3180
    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-ge v12, v9, :cond_22

    .line 3181
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v14, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-direct {v10, v14, v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3182
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-boolean v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    add-int/2addr v9, v10

    if-lt v9, v13, :cond_21

    goto :goto_15

    :cond_21
    add-int/lit8 v12, v12, 0x1

    const-wide/32 v14, 0xa8d7

    goto :goto_14

    :cond_22
    :goto_15
    if-eqz v2, :cond_28

    .line 3187
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_28

    .line 3188
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    .line 3189
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_24

    goto :goto_16

    :cond_24
    const/4 v9, 0x0

    .line 3194
    :goto_17
    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_26

    .line 3195
    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v14

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    cmp-long v10, v14, v24

    if-nez v10, :cond_25

    const/4 v9, 0x1

    goto :goto_18

    :cond_25
    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    :cond_26
    const/4 v9, 0x0

    :goto_18
    if-eqz v9, :cond_27

    goto :goto_16

    .line 3202
    :cond_27
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v10, v14, v15, v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3203
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-boolean v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    add-int/2addr v4, v9

    if-lt v4, v13, :cond_23

    :cond_28
    if-eqz v11, :cond_2d

    .line 3208
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 3209
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_29
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$EmojiStatus;

    .line 3210
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getEmojiStatusDocumentId(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_2a

    goto :goto_19

    :cond_2a
    const/4 v9, 0x0

    .line 3215
    :goto_1a
    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_2c

    .line 3216
    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v10

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v10, v10, v14

    if-nez v10, :cond_2b

    const/4 v9, 0x1

    goto :goto_1b

    :cond_2b
    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    :cond_2c
    const/4 v9, 0x0

    :goto_1b
    if-nez v9, :cond_29

    .line 3222
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-direct {v10, v11, v12, v8}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3223
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-boolean v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    add-int/2addr v4, v9

    if-lt v4, v13, :cond_29

    .line 3231
    :cond_2d
    iget-boolean v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    rsub-int/lit8 v2, v2, 0x28

    .line 3232
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v2, :cond_30

    iget-boolean v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpanded:Z

    if-nez v4, :cond_30

    const/4 v4, 0x0

    :goto_1c
    const/4 v9, 0x1

    add-int/lit8 v10, v2, -0x1

    if-ge v4, v10, :cond_2e

    .line 3234
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v10

    mul-long v10, v10, v16

    const-wide/32 v12, 0xa8d7

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3235
    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v10, 0x1

    add-int/2addr v9, v10

    iput v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 3237
    :cond_2e
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x28

    iget-boolean v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    add-int/2addr v4, v9

    const/4 v9, 0x1

    add-int/2addr v4, v9

    int-to-long v9, v4

    mul-long v9, v9, v16

    const-wide/16 v11, -0x159b

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3238
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpandButton:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;

    if-eqz v2, :cond_2f

    .line 3239
    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;->textView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x28

    iget-boolean v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    add-int/2addr v9, v10

    const/4 v10, 0x1

    add-int/2addr v9, v10

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d

    :cond_2f
    const/4 v10, 0x1

    .line 3241
    :goto_1d
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToExpand:Landroid/util/SparseIntArray;

    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v9, -0x1

    invoke-virtual {v2, v4, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 3242
    iget v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/2addr v2, v10

    iput v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    goto :goto_1f

    :cond_30
    const/4 v2, 0x0

    .line 3244
    :goto_1e
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_31

    .line 3245
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v9

    mul-long v9, v9, v16

    const-wide/32 v11, 0xa8d7

    add-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3246
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v9, 0x1

    add-int/2addr v4, v9

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_31
    :goto_1f
    const/4 v2, 0x0

    .line 3252
    :goto_20
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v9, 0x23fb

    if-ge v2, v4, :cond_36

    .line 3253
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v4, :cond_35

    .line 3254
    iget-object v13, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v13, :cond_32

    goto/16 :goto_22

    .line 3257
    :cond_32
    iget v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v14, 0x5

    if-ne v13, v14, :cond_33

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isTextColorSet(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Z

    move-result v13

    if-nez v13, :cond_33

    goto/16 :goto_22

    .line 3260
    :cond_33
    iget-object v13, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v14, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-nez v14, :cond_34

    iget-boolean v14, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showStickers:Z

    if-eqz v14, :cond_35

    :cond_34
    iget-object v14, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->installedEmojiSets:Ljava/util/ArrayList;

    iget-wide v11, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_35

    .line 3261
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToSection:Landroid/util/SparseIntArray;

    iget v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 3262
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->sectionToPosition:Landroid/util/SparseIntArray;

    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 3263
    iget v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v12, 0x1

    add-int/2addr v11, v12

    iput v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    .line 3264
    iget-object v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v13, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v13, v13, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    mul-long v13, v13, v16

    add-long/2addr v13, v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3266
    new-instance v9, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    invoke-direct {v9}, Lorg/telegram/ui/Components/EmojiView$EmojiPack;-><init>()V

    .line 3267
    iput-boolean v12, v9, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    const/4 v10, 0x0

    .line 3268
    iput-boolean v10, v9, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    .line 3269
    iput-boolean v12, v9, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    .line 3270
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isPremiumEmojiPack(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Z

    move-result v10

    xor-int/2addr v10, v12

    iput-boolean v10, v9, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    .line 3271
    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iput-object v10, v9, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 3272
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    iput-object v4, v9, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    .line 3273
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 3274
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3275
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v10, v9, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v4, v10

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v4, 0x0

    .line 3276
    :goto_21
    iget-object v10, v9, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_35

    .line 3277
    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v11, v9, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    mul-long v11, v11, v16

    const-wide/16 v13, 0xc8c

    add-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_35
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_20

    .line 3283
    :cond_36
    iget-boolean v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showStickers:Z

    if-nez v2, :cond_43

    const/4 v2, 0x0

    .line 3285
    :goto_23
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_43

    .line 3286
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .line 3287
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    const/4 v11, 0x0

    .line 3290
    :goto_24
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_38

    .line 3291
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    iget-object v12, v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v12, v12, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iget-wide v14, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    cmp-long v12, v12, v14

    if-nez v12, :cond_37

    const/4 v11, 0x1

    goto :goto_25

    :cond_37
    add-int/lit8 v11, v11, 0x1

    goto :goto_24

    :cond_38
    const/4 v11, 0x0

    :goto_25
    if-eqz v11, :cond_3a

    :cond_39
    :goto_26
    const/4 v11, 0x1

    const-wide/16 v13, 0xc8c

    const-wide/16 v18, -0x159b

    goto/16 :goto_2c

    .line 3301
    :cond_3a
    instance-of v11, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerSetNoCovered;

    if-eqz v11, :cond_3b

    .line 3302
    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    invoke-static {v11}, Lorg/telegram/messenger/MediaDataController;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v11

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->hash:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x1

    invoke-virtual {v3, v11, v4, v12}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Ljava/lang/Integer;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 3304
    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    .line 3305
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isPremiumEmojiPack(Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)Z

    move-result v4

    goto :goto_27

    .line 3307
    :cond_3b
    instance-of v11, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v11, :cond_3c

    .line 3308
    move-object v11, v4

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    .line 3309
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isPremiumEmojiPack(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)Z

    move-result v4

    goto :goto_27

    :cond_3c
    move-object v11, v8

    const/4 v4, 0x0

    :goto_27
    if-nez v11, :cond_3d

    goto :goto_26

    .line 3316
    :cond_3d
    iget v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_3e

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_39

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v13}, Lorg/telegram/messenger/MessageObject;->isTextColorEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v12

    if-nez v12, :cond_3e

    goto :goto_26

    .line 3320
    :cond_3e
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToSection:Landroid/util/SparseIntArray;

    iget v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v14, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 3321
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->sectionToPosition:Landroid/util/SparseIntArray;

    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    iget v14, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    invoke-virtual {v12, v13, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 3322
    iget v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v13, 0x1

    add-int/2addr v12, v13

    iput v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    .line 3323
    iget-object v12, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-wide v13, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    mul-long v13, v13, v16

    add-long/2addr v13, v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3325
    new-instance v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    invoke-direct {v12}, Lorg/telegram/ui/Components/EmojiView$EmojiPack;-><init>()V

    .line 3326
    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->installedEmojiSets:Ljava/util/ArrayList;

    iget-wide v14, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    iput-boolean v13, v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    const/4 v13, 0x1

    .line 3327
    iput-boolean v13, v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->featured:Z

    xor-int/2addr v4, v13

    .line 3328
    iput-boolean v4, v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->free:Z

    .line 3329
    iput-object v5, v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    .line 3330
    iput-object v11, v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    .line 3331
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 3332
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->expandedEmojiSets:Ljava/util/ArrayList;

    iget-object v11, v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v13, v11, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    .line 3334
    iget-object v4, v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v11, 0x18

    if-le v4, v11, :cond_40

    iget-boolean v4, v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    if-nez v4, :cond_40

    .line 3335
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    add-int/2addr v4, v11

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v4, 0x0

    :goto_28
    const/16 v13, 0x17

    if-ge v4, v13, :cond_3f

    .line 3337
    iget-object v13, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v14, v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    mul-long v14, v14, v16

    const-wide/16 v22, 0xc8c

    add-long v14, v14, v22

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 3339
    :cond_3f
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-wide v13, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    mul-long v13, v13, v16

    const-wide/16 v18, -0x159b

    add-long v13, v13, v18

    const-wide/16 v22, 0xa9

    iget-object v15, v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v11

    const/4 v11, 0x1

    add-int/2addr v15, v11

    int-to-long v9, v15

    mul-long v9, v9, v22

    add-long/2addr v13, v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3340
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToExpand:Landroid/util/SparseIntArray;

    iget v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    sub-int/2addr v9, v11

    iget-object v10, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2a

    :cond_40
    const-wide/16 v18, -0x159b

    .line 3342
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v9, v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v4, v9

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v9, 0x0

    .line 3343
    :goto_29
    iget-object v4, v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v9, v4, :cond_41

    .line 3344
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    iget-object v10, v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v10, v10, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    mul-long v10, v10, v16

    const-wide/16 v13, 0xc8c

    add-long/2addr v10, v13

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_29

    :cond_41
    :goto_2a
    const-wide/16 v13, 0xc8c

    .line 3348
    iget-boolean v4, v12, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->installed:Z

    if-nez v4, :cond_42

    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v9, 0x4

    if-eq v4, v9, :cond_42

    const/4 v10, 0x5

    if-eq v4, v10, :cond_42

    .line 3349
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToButton:Landroid/util/SparseIntArray;

    iget v11, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    iget-object v15, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v4, v11, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 3350
    iget v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    const/4 v11, 0x1

    add-int/2addr v4, v11

    iput v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->totalCount:I

    .line 3351
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->rowHashCodes:Ljava/util/ArrayList;

    const-wide/16 v20, 0xcf9

    iget-wide v9, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    mul-long v9, v9, v16

    add-long v9, v9, v20

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_42
    const/4 v11, 0x1

    .line 3354
    :goto_2b
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2c
    add-int/lit8 v2, v2, 0x1

    const-wide/16 v9, 0x23fb

    goto/16 :goto_23

    .line 3358
    :cond_43
    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiTabsStrip;->updateEmojiPacks(Ljava/util/ArrayList;)V

    if-eqz v1, :cond_44

    .line 3361
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v2, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_2d

    .line 3363
    :cond_44
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :goto_2d
    if-eqz p3, :cond_45

    .line 3366
    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$24;

    invoke-direct {v1, v0, v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$24;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->adapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;

    .line 3386
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_2e

    :cond_45
    const/4 v2, 0x0

    .line 3388
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->adapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3391
    :goto_2e
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-boolean v3, v1, Lorg/telegram/ui/Components/RecyclerListView;->scrolledByUserOnce:Z

    if-nez v3, :cond_46

    .line 3392
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_46
    return-void
.end method

.method private updateRowsDelayed()V
    .locals 1

    .line 4120
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRowsDelayed:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 4121
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRowsDelayed:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateSearchBox()V
    .locals 5

    .line 1191
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    if-nez v0, :cond_0

    return-void

    .line 1194
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searched:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1195
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 1196
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1197
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 1199
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/16 v1, 0x34

    if-lez v0, :cond_3

    .line 1200
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1201
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRow:I

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "searchbox"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1202
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1203
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_0

    .line 1205
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_0

    .line 1208
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method public static updateSearchEmptyViewImage(ILorg/telegram/ui/Components/BackupImageView;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 1469
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getFeaturedEmojiSets()Ljava/util/ArrayList;

    move-result-object v0

    .line 1470
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1471
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 1472
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move v4, v3

    .line 1473
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 1474
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    if-eqz v6, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    .line 1475
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_stickerSetFullCovered;->documents:Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1476
    invoke-static {v6}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    move v7, v3

    .line 1477
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 1478
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v8, :cond_2

    .line 1479
    sget-object v9, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emptyViewEmojis:Ljava/util/List;

    invoke-static {v8, v2}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v5, v0, -0x1

    if-gtz v0, :cond_1

    move v0, v5

    move-object v5, v8

    goto :goto_2

    :cond_1
    move v0, v5

    move-object v5, v8

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    if-gtz v0, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    if-eqz v5, :cond_7

    if-lez v0, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    move-object v12, v5

    goto/16 :goto_9

    .line 1491
    :cond_7
    :goto_5
    invoke-static {p0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSets(I)Ljava/util/ArrayList;

    move-result-object p0

    .line 1492
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1493
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    move p0, v3

    .line 1494
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge p0, v4, :cond_6

    .line 1495
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v4, :cond_a

    .line 1496
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1497
    invoke-static {v4}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    move v6, v3

    .line 1498
    :goto_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_a

    .line 1499
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_9

    .line 1500
    sget-object v8, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emptyViewEmojis:Ljava/util/List;

    invoke-static {v7, v2}, Lorg/telegram/messenger/MessageObject;->findAnimatedEmojiEmoticon(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    add-int/lit8 v5, v0, -0x1

    if-gtz v0, :cond_8

    move v0, v5

    move-object v5, v7

    goto :goto_8

    :cond_8
    move v0, v5

    move-object v5, v7

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_a
    :goto_8
    if-eqz v5, :cond_b

    if-gtz v0, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    :goto_9
    if-eqz v12, :cond_f

    const-string p0, "36_36"

    .line 1518
    iget-object v0, v12, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const v2, 0x3e4ccccd    # 0.2f

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/DocumentObject;->getSvgThumb(Ljava/util/ArrayList;IF)Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v11

    .line 1519
    iget-object v0, v12, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 1520
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const-string v2, "video/webm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x200

    if-eqz v1, :cond_d

    .line 1521
    invoke-static {v12}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    .line 1522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "g"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz v11, :cond_c

    .line 1524
    invoke-virtual {v11, v2, v2}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    :cond_c
    :goto_a
    move-object v8, p0

    move-object v7, v1

    goto :goto_b

    :cond_d
    if-eqz v11, :cond_e

    .line 1527
    invoke-static {v12, v3}, Lorg/telegram/messenger/MessageObject;->isAnimatedStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1528
    invoke-virtual {v11, v2, v2}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideWidthAndHeight(II)V

    .line 1530
    :cond_e
    invoke-static {v12}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    goto :goto_a

    :goto_b
    const/4 p0, 0x7

    .line 1533
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    const/4 p0, 0x4

    .line 1534
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 1535
    invoke-static {v0, v12}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    const-string v10, "36_36"

    move-object v6, p1

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method private updateShow(F)V
    .locals 16

    move-object/from16 v0, p0

    .line 4598
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    const/4 v2, -0x1

    const/high16 v3, 0x42f00000    # 120.0f

    const/high16 v4, 0x44480000    # 800.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    mul-float v1, p1, v4

    sub-float/2addr v1, v6

    div-float/2addr v1, v3

    div-float/2addr v1, v7

    .line 4599
    invoke-static {v1, v6, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    .line 4600
    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v8, v1}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    .line 4601
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4602
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/view/View;->setScaleX(F)V

    .line 4603
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v2

    goto :goto_0

    :cond_0
    move v9, v5

    :goto_0
    int-to-float v9, v9

    mul-float/2addr v1, v9

    invoke-virtual {v8, v1}, Landroid/view/View;->setScaleY(F)V

    .line 4606
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    const/high16 v8, 0x41f00000    # 30.0f

    if-eqz v1, :cond_3

    mul-float v1, p1, v4

    sub-float/2addr v1, v8

    div-float/2addr v1, v3

    div-float/2addr v1, v7

    .line 4607
    invoke-static {v1, v6, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    .line 4609
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    invoke-virtual {v9, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4610
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    invoke-virtual {v9, v1}, Landroid/view/View;->setScaleX(F)V

    .line 4611
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_1
    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v9, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_3
    mul-float v1, p1, v4

    const/high16 v2, 0x42200000    # 40.0f

    sub-float v2, v1, v2

    const/high16 v4, 0x442f0000    # 700.0f

    div-float v5, v2, v4

    .line 4614
    invoke-static {v5, v6, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v5

    const/high16 v9, 0x42a00000    # 80.0f

    sub-float v9, v1, v9

    div-float/2addr v9, v4

    .line 4615
    invoke-static {v9, v6, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    const v9, 0x443b8000    # 750.0f

    div-float/2addr v2, v9

    .line 4616
    invoke-static {v2, v6, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v2

    sub-float/2addr v1, v8

    div-float/2addr v1, v3

    .line 4617
    invoke-static {v1, v6, v7}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v1

    .line 4618
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v5

    .line 4619
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v3

    .line 4623
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4624
    iget-object v4, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v4, 0x0

    move v8, v4

    .line 4625
    :goto_2
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v9, v9, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 4626
    iget-object v9, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v9, v9, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 4627
    invoke-virtual {v9, v1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 4629
    :cond_4
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v8, :cond_5

    .line 4630
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 4632
    :cond_5
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    const/4 v9, -0x5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    sub-float v11, v7, v1

    mul-float/2addr v10, v11

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4633
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    if-eqz v8, :cond_6

    .line 4634
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v11

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationY(F)V

    :cond_6
    const v8, 0x3e19999a    # 0.15f

    const v9, 0x3f59999a    # 0.85f

    mul-float/2addr v5, v9

    add-float/2addr v5, v8

    .line 4636
    iput v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scaleX:F

    const v5, 0x3d99999a    # 0.075f

    const v8, 0x3f6ccccd    # 0.925f

    mul-float/2addr v3, v8

    add-float/2addr v3, v5

    .line 4637
    iput v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scaleY:F

    .line 4638
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v3, v5, :cond_7

    .line 4639
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->invalidateOutline()V

    goto :goto_3

    .line 4641
    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4642
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4643
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->invalidate()V

    .line 4645
    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    if-eqz v3, :cond_8

    .line 4646
    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4648
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 4649
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    iget v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scaleX:F

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 4651
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPivotX()F

    move-result v1

    mul-float v3, v1, v1

    float-to-double v8, v3

    .line 4652
    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    .line 4653
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-double v10, v3

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    .line 4654
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    float-to-double v10, v3

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    iget-object v3, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-double v14, v3

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    .line 4652
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v3, v8

    move v5, v4

    .line 4656
    :goto_4
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v8, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    const/high16 v9, 0x3fe00000    # 1.75f

    const/high16 v10, 0x40000000    # 2.0f

    if-ge v5, v8, :cond_d

    .line 4657
    iget-object v8, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v8, v8, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    cmpl-float v11, p1, v6

    const/4 v12, 0x0

    if-nez v11, :cond_9

    const/4 v11, 0x2

    .line 4659
    invoke-virtual {v8, v11, v12}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_5

    :cond_9
    cmpl-float v11, p1, v7

    if-nez v11, :cond_a

    .line 4661
    invoke-virtual {v8, v4, v12}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4663
    :cond_a
    :goto_5
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v10

    add-float/2addr v11, v12

    sub-float/2addr v11, v1

    .line 4664
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v10

    add-float/2addr v12, v13

    .line 4665
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 4666
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float v12, v10, v12

    :cond_b
    mul-float/2addr v11, v11

    mul-float/2addr v12, v12

    const v10, 0x3ecccccd    # 0.4f

    mul-float/2addr v12, v10

    add-float/2addr v11, v12

    float-to-double v10, v11

    .line 4668
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 4669
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v9

    invoke-static {v2, v10, v3, v11}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v9

    .line 4670
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-eqz v10, :cond_c

    move v9, v6

    .line 4673
    :cond_c
    invoke-virtual {v8, v9}, Landroid/view/View;->setScaleX(F)V

    .line 4674
    invoke-virtual {v8, v9}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 4676
    :cond_d
    :goto_6
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_11

    .line 4677
    iget-object v5, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4678
    instance-of v7, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v7, :cond_10

    .line 4679
    move-object v7, v5

    check-cast v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 4680
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v10

    add-float/2addr v8, v11

    sub-float/2addr v8, v1

    .line 4681
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v10

    add-float/2addr v11, v12

    .line 4682
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 4683
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    sub-float v11, v12, v11

    :cond_e
    mul-float/2addr v8, v8

    mul-float/2addr v11, v11

    const v12, 0x3e4ccccd    # 0.2f

    mul-float/2addr v11, v12

    add-float/2addr v8, v11

    float-to-double v11, v8

    .line 4685
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v8, v11

    .line 4686
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    invoke-static {v2, v8, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->cascade(FFFF)F

    move-result v5

    .line 4687
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_f

    move v5, v6

    .line 4690
    :cond_f
    invoke-virtual {v7, v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setAnimatedScale(F)V

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 4693
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 4694
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    return-void
.end method

.method private updateTabsPosition(I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    .line 1168
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpanded:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    add-int/2addr v1, v0

    :goto_0
    const/4 v0, 0x0

    if-le p1, v1, :cond_6

    .line 1169
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p1, v1, :cond_1

    goto :goto_5

    .line 1173
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 1174
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToSection:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 1175
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->defaultStatuses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    sub-int v2, v0, v2

    if-ltz v2, :cond_2

    .line 1176
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_3

    goto :goto_4

    .line 1180
    :cond_3
    iget-boolean v3, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    if-eqz v3, :cond_4

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_3

    :cond_4
    const/16 v3, 0x18

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_3
    if-le p1, v1, :cond_5

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_5

    .line 1182
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->select(I)V

    return-void

    :cond_5
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1170
    :cond_6
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->select(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method public animateEmojiSelect(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Ljava/lang/Runnable;)V
    .locals 10

    .line 1293
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 1298
    iput-boolean v0, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 1299
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1300
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    .line 1301
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    .line 1302
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    .line 1303
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    .line 1304
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 1300
    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1308
    iget-object v1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v2, :cond_1

    .line 1309
    iget v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    const/4 v4, 0x7

    check-cast v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentId()J

    move-result-wide v5

    invoke-static {v2, v4, v5, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move-object v7, v1

    .line 1314
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 1315
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    .line 1316
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-array v0, v0, [Z

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 1319
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAnimator:Landroid/animation/ValueAnimator;

    .line 1320
    new-instance v9, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda4;

    move-object v1, v9

    move-object v2, p0

    move-object v4, p1

    move-object v5, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/graphics/Rect;Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;[ZLjava/lang/Runnable;Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1342
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$20;

    invoke-direct {v1, p0, v0, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$20;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;[ZLjava/lang/Runnable;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1353
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1354
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x104

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1355
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 1294
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateExpandAppearDuration()J
    .locals 4

    .line 2685
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandToPosition:I

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromPosition:I

    sub-int/2addr v0, v1

    const/16 v1, 0x37

    .line 2686
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x1e

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1c2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public animateExpandCrossfadeDuration()J
    .locals 4

    .line 2690
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandToPosition:I

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromPosition:I

    sub-int/2addr v0, v1

    const/16 v1, 0x2d

    .line 2691
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x19

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public animateExpandDuration()J
    .locals 4

    .line 2681
    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandAppearDuration()J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandCrossfadeDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    .line 4126
    sget p2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 4127
    aget-object p2, p3, p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showStickers:Z

    if-eqz p1, :cond_4

    .line 4128
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRowsDelayed()V

    goto :goto_0

    .line 4130
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->featuredEmojiDidLoad:I

    if-ne p1, p2, :cond_2

    .line 4131
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRowsDelayed()V

    goto :goto_0

    .line 4132
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->recentEmojiStatusesUpdate:I

    if-ne p1, p2, :cond_3

    .line 4133
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRowsDelayed()V

    goto :goto_0

    .line 4134
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    if-ne p1, p2, :cond_4

    .line 4135
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRowsDelayed()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1245
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiX:Ljava/lang/Integer;

    if-eqz v3, :cond_7

    .line 1246
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1247
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawableParent:Landroid/view/View;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v3

    :goto_0
    const/16 v4, 0xff

    .line 1249
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_1

    .line 1250
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v4

    .line 1252
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawableParent:Landroid/view/View;

    if-nez v5, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 1253
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1254
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v5

    neg-float v5, v5

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1255
    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    int-to-double v6, v4

    iget-object v8, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v8

    float-to-double v8, v8

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    iget v8, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimAlpha:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setAlpha(I)V

    .line 1256
    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    if-nez v5, :cond_3

    .line 1257
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    :cond_3
    cmpl-float v5, v3, v2

    const/high16 v6, 0x3fc00000    # 1.5f

    if-lez v5, :cond_4

    cmpg-float v5, v3, v6

    if-gez v5, :cond_4

    const/4 v5, 0x2

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    int-to-float v5, v5

    cmpl-float v6, v3, v6

    if-lez v6, :cond_5

    .line 1260
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3f4f5c29    # 0.81f

    mul-float/2addr v6, v7

    add-float/2addr v6, v2

    goto :goto_3

    :cond_5
    move v6, v1

    :goto_3
    neg-float v6, v6

    .line 1261
    iget-object v7, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiX:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v5

    .line 1262
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    sub-float v8, v3, v2

    mul-float/2addr v5, v8

    add-float/2addr v5, v6

    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isBottom()Z

    move-result v6

    const/high16 v8, 0x40000000    # 2.0f

    if-nez v6, :cond_6

    iget v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    iget v9, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->topMarginDp:I

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v8

    sub-float/2addr v6, v9

    :goto_4
    add-float/2addr v5, v6

    invoke-virtual {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->getScrimDrawableTranslationY()F

    move-result v6

    add-float/2addr v5, v6

    .line 1263
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    div-float/2addr v6, v8

    .line 1264
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v3

    div-float/2addr v9, v8

    .line 1265
    iget-object v8, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    sub-float v10, v7, v6

    float-to-int v10, v10

    sub-float v11, v5, v9

    float-to-int v11, v11

    add-float/2addr v7, v6

    float-to-int v6, v7

    add-float/2addr v5, v9

    float-to-int v5, v5

    invoke-virtual {v8, v10, v11, v6, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1266
    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    iget-object v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    int-to-float v9, v7

    .line 1269
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    add-float/2addr v9, v6

    float-to-int v6, v9

    iget-object v9, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    .line 1270
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v3

    add-float/2addr v10, v9

    float-to-int v9, v10

    .line 1266
    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1272
    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawableToBounds:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v3, v3, v6, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1273
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1274
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setAlpha(I)V

    .line 1275
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1276
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1278
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1279
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_8

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 1280
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1281
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1282
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    iget v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectAlpha:F

    mul-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1283
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1284
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->accentColor:I

    iget v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimColor:I

    iget v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimAlpha:F

    sub-float/2addr v2, v5

    invoke-static {v3, v4, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1285
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSelectView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1286
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    return-void
.end method

.method public drawBigReaction(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 10

    .line 4812
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-nez v0, :cond_0

    return-void

    .line 4815
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 4816
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v0, :cond_6

    .line 4817
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->pressedProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->cancelPressed:Z

    if-nez v3, :cond_2

    const v3, 0x3c2ec33e

    add-float/2addr v1, v3

    .line 4818
    iput v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->pressedProgress:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 4820
    iput v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->pressedProgress:F

    .line 4821
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionListener:Lorg/telegram/ui/SelectAnimatedEmojiDialog$onLongPressedListener;

    if-eqz v1, :cond_1

    .line 4822
    invoke-interface {v1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$onLongPressedListener;->onLongPressed(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)V

    .line 4825
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->pressedProgress:F

    iput v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->bigReactionSelectedProgress:F

    .line 4828
    :cond_2
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->pressedProgress:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 4830
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4831
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4832
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->paint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4833
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v7, v2

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v8, v2

    iget-object v9, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4834
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v0, v2, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4835
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-boolean v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiverToDraw:Lorg/telegram/messenger/ImageReceiver;

    .line 4836
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionAnimatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionAnimatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4837
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionAnimatedEmoji:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    .line 4840
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactionView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 4841
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 4843
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4844
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_6
    return-void
.end method

.method public expand(ILandroid/view/View;)V
    .locals 9

    .line 3397
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->positionToExpand:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    const/4 v0, 0x0

    .line 3402
    iput v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromButtonTranslate:F

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz p1, :cond_4

    .line 3403
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_4

    const/16 v3, 0x18

    .line 3405
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;

    .line 3406
    iget-boolean v5, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    if-eqz v5, :cond_0

    return-void

    :cond_0
    add-int/lit8 v5, p1, 0x1

    .line 3409
    iget-object v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->packs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v1

    .line 3411
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->sectionToPosition:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    .line 3412
    iget-object v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->expandedEmojiSets:Ljava/util/ArrayList;

    iget-object v7, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3414
    iget-boolean v6, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    if-eqz v6, :cond_2

    iget-object v6, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_1

    :cond_2
    iget-object v6, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 3415
    :goto_1
    iget-object v7, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v3, :cond_3

    add-int/lit8 v7, p1, 0x1

    add-int/2addr v7, v6

    .line 3416
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2

    :cond_3
    move-object v7, v0

    .line 3418
    :goto_2
    iput-boolean v2, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->expanded:Z

    .line 3419
    iget-object v4, v4, Lorg/telegram/ui/Components/EmojiView$EmojiPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_7

    :cond_4
    const/4 v3, -0x1

    if-ne p1, v3, :cond_b

    const/16 p1, 0x28

    .line 3422
    iget-boolean v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpanded:Z

    if-eqz v4, :cond_5

    return-void

    .line 3426
    :cond_5
    iget v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRow:I

    if-eq v5, v3, :cond_6

    move v5, v2

    goto :goto_3

    :cond_6
    move v5, v1

    :goto_3
    iget v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->longtapHintRow:I

    if-eq v6, v3, :cond_7

    move v3, v2

    goto :goto_4

    :cond_7
    move v3, v1

    :goto_4
    add-int/2addr v5, v3

    iget-boolean v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeEmpty:Z

    add-int/2addr v5, v3

    if-eqz v4, :cond_8

    .line 3427
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_5
    move v6, v3

    goto :goto_6

    :cond_8
    rsub-int/lit8 v3, v3, 0x28

    add-int/lit8 v3, v3, -0x2

    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_5

    .line 3428
    :goto_6
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3429
    iput-boolean v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentExpanded:Z

    move v3, p1

    move-object v7, v0

    move p1, v5

    move v5, v1

    :goto_7
    if-le v4, v6, :cond_9

    add-int/2addr p1, v2

    add-int/2addr p1, v6

    .line 3435
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sub-int/2addr v4, v6

    .line 3436
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3439
    :cond_9
    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZ)V

    if-eqz v7, :cond_b

    if-eqz v0, :cond_b

    .line 3442
    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromButton:Landroid/view/View;

    .line 3443
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandFromPosition:I

    .line 3444
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandToPosition:I

    .line 3445
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateExpandStartTime:J

    if-eqz v5, :cond_b

    .line 3448
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3449
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    div-int/lit8 v3, v3, 0x2

    if-le p2, v3, :cond_a

    const/high16 p2, 0x3fc00000    # 1.5f

    goto :goto_8

    :cond_a
    const/high16 p2, 0x40600000    # 3.5f

    .line 3450
    :goto_8
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;FI)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_b
    return-void
.end method

.method protected getScrimDrawableTranslationY()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected invalidateParent()V
    .locals 0

    return-void
.end method

.method public invalidateSearchBox()V
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->invalidate()V

    return-void
.end method

.method public isBottom()Z
    .locals 2

    .line 147
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 4086
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 4087
    iput-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isAttached:Z

    .line 4088
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->featuredEmojiDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4089
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4090
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentEmojiStatusesUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4091
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4093
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v0, :cond_0

    .line 4094
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setSecondParent(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 4100
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 4101
    invoke-direct {p0, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->setBigReactionAnimatedEmoji(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    const/4 v1, 0x0

    .line 4102
    iput-boolean v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isAttached:Z

    .line 4103
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->featuredEmojiDidLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4104
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4105
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->recentEmojiStatusesUpdate:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4106
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->groupStickersDidLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4108
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-eqz v1, :cond_0

    .line 4109
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setSecondParent(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDismiss(Ljava/lang/Runnable;)V
    .locals 3

    .line 4698
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->listStateId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 4699
    sget-object v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->listStates:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->layoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4702
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 4703
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 4704
    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 4706
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    .line 4707
    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4720
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$26;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$26;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4730
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4731
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4732
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 4734
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    if-eqz p1, :cond_2

    .line 4735
    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->access$8500(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onEmojiClick(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan;)V
    .locals 5

    .line 2924
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->incrementHintUse()V

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 2925
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    iget-wide v2, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2928
    :cond_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;-><init>()V

    .line 2929
    invoke-virtual {p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_emojiStatus;->document_id:J

    .line 2931
    iget-object v2, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    iget-wide v3, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    .line 2932
    :cond_1
    instance-of v3, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v3, :cond_6

    .line 2933
    iget v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-nez v3, :cond_2

    .line 2934
    iget v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/MediaDataController;->pushRecentEmojiStatus(Lorg/telegram/tgnet/TLRPC$EmojiStatus;)V

    .line 2936
    :cond_2
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    if-nez v1, :cond_3

    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v1}, Lcom/iMe/fork/controller/ForkCommonController;->getInstance(I)Lcom/iMe/fork/controller/ForkCommonController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/ForkCommonController;->isShowPremiumStatusEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 2937
    :cond_4
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan;Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animateEmojiSelect(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 2941
    :cond_5
    iget-wide v3, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V

    goto :goto_1

    .line 2944
    :cond_6
    iget-wide v3, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V

    goto :goto_1

    .line 2926
    :cond_7
    :goto_0
    invoke-virtual {p0, p1, v0, v0, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V

    :goto_1
    return-void
.end method

.method protected onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method protected onInputFocus()V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 3465
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawBackground:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 p1, 0x144

    .line 3467
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    const v0, 0x3f733333    # 0.95f

    mul-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/16 p2, 0x14a

    .line 3468
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-int p2, p2

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 3466
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    .line 3471
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method protected onReactionClick(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 0

    return-void
.end method

.method protected onSettings()V
    .locals 0

    return-void
.end method

.method public onShow(Ljava/lang/Runnable;)V
    .locals 7

    .line 4152
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->listStateId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 4153
    sget-object v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->listStates:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 4159
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->dismiss:Ljava/lang/Runnable;

    .line 4160
    iget-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawBackground:Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 4161
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->checkScroll()V

    .line 4162
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-ge v1, p1, :cond_1

    .line 4163
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 4164
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 4165
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 4169
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 4170
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4171
    iput-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    .line 4173
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    .line 4174
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4175
    iput-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hideAnimator:Landroid/animation/ValueAnimator;

    .line 4178
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isAnimatedShow()Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x2

    new-array v0, p1, [F

    .line 4180
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    .line 4181
    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4185
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog$25;

    invoke-direct {v3, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$25;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4223
    sget-boolean v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isFirstOpen:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->type:I

    const/4 v4, 0x5

    if-eq v0, v4, :cond_5

    .line 4224
    sput-boolean v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isFirstOpen:Z

    .line 4225
    iget v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getDocumentFetcher(I)Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;

    move-result-object v0

    new-instance v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda16;

    invoke-direct {v4, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$EmojiDocumentFetcher;->setUiDbCallback(Ljava/lang/Runnable;)V

    .line 4229
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->prepare(Ljava/lang/Runnable;Z)V

    goto :goto_1

    .line 4231
    :cond_5
    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    .line 4235
    invoke-static {v0, v3}, Lorg/telegram/ui/Components/Reactions/HwEmojis;->prepare(Ljava/lang/Runnable;Z)V

    .line 4238
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    new-array v5, v3, [Ljava/lang/Object;

    const/16 v6, 0x200

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4239
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 4240
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->showAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x320

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4241
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0, p1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4242
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-virtual {v0, p1, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4243
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabsShadow:Landroid/view/View;

    invoke-virtual {v0, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4244
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundView:Landroid/view/View;

    invoke-virtual {v0, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4245
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble2View:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 4246
    invoke-virtual {v0, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4248
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bubble1View:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 4249
    invoke-virtual {v0, p1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4251
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/EmojiTabsStrip;->showRecentTabStub(Z)V

    const/4 p1, 0x0

    .line 4252
    invoke-direct {p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateShow(F)V

    goto :goto_2

    .line 4254
    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->checkScroll()V

    .line 4255
    invoke-direct {p0, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateShow(F)V

    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public preload(II)V
    .locals 3

    .line 2969
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2972
    :cond_0
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 2976
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/messenger/MediaDataController;->fetchEmojiStatuses(IZ)V

    .line 2977
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmojiDefaultStatuses;-><init>()V

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 2979
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->checkDefaultTopicIcons()V

    goto :goto_1

    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_5

    .line 2981
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v1, v1, v0, v1}, Lorg/telegram/messenger/MediaDataController;->loadRecents(IZZZ)V

    .line 2982
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MediaDataController;->checkStickers(I)V

    goto :goto_1

    .line 2974
    :cond_4
    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->checkReactions()V

    :cond_5
    :goto_1
    return-void
.end method

.method public prevWindowKeyboardVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resetBackgroundBitmaps()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 4757
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4758
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    move v3, v0

    .line 4759
    :goto_1
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 4760
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-boolean v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    if-eqz v4, :cond_0

    .line 4761
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iput-boolean v0, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 4762
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->invalidate()V

    .line 4763
    invoke-virtual {v2}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4767
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    move v1, v0

    .line 4768
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 4769
    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;

    move v3, v0

    .line 4770
    :goto_3
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 4771
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iget-boolean v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    if-eqz v4, :cond_3

    .line 4772
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    iput-boolean v0, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->notDraw:Z

    .line 4773
    iget-object v4, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    invoke-virtual {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->invalidate()V

    .line 4774
    invoke-virtual {v2}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset()V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4778
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1582
    invoke-virtual {p0, p1, v0, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->search(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public search(Ljava/lang/String;ZZ)V
    .locals 5

    .line 1586
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->clearSearchRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1587
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1588
    iput-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->clearSearchRunnable:Ljava/lang/Runnable;

    .line 1590
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1591
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1592
    iput-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRunnable:Ljava/lang/Runnable;

    .line 1594
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 1595
    iput-boolean v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searching:Z

    .line 1596
    iput-boolean v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searched:Z

    .line 1597
    invoke-virtual {p0, v3, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->switchGrids(ZZ)V

    .line 1598
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    if-eqz p1, :cond_2

    .line 1599
    invoke-virtual {p1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->showProgress(Z)V

    .line 1600
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-static {p1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->access$4000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Z)V

    .line 1602
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchAdapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->updateRows(Z)V

    .line 1603
    iput-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastQuery:Ljava/lang/String;

    goto :goto_2

    .line 1605
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searching:Z

    xor-int/2addr v0, v2

    .line 1606
    iput-boolean v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searching:Z

    .line 1607
    iput-boolean v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searched:Z

    .line 1609
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    if-eqz v1, :cond_4

    .line 1610
    invoke-virtual {v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->showProgress(Z)V

    :cond_4
    if-eqz v0, :cond_6

    .line 1613
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchResult:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 1614
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1616
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchAdapter:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchAdapter;->updateRows(Z)V

    goto :goto_0

    .line 1617
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastQuery:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1618
    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    iput-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->clearSearchRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x78

    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1625
    :cond_7
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastQuery:Ljava/lang/String;

    .line 1626
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getCurrentKeyboardLanguage()[Ljava/lang/String;

    move-result-object v1

    .line 1627
    sget-object v3, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1628
    iget v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/MediaDataController;->fetchNewEmojiKeywords([Ljava/lang/String;)V

    .line 1630
    :cond_8
    sput-object v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->lastSearchKeyboardLanguage:[Ljava/lang/String;

    .line 1631
    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/lang/String;ZZ)V

    iput-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchRunnable:Ljava/lang/Runnable;

    if-eqz p3, :cond_9

    const-wide/16 v3, 0x1a9

    goto :goto_1

    :cond_9
    const-wide/16 v3, 0x0

    :goto_1
    invoke-static {v1, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1819
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    if-eqz p1, :cond_a

    .line 1820
    invoke-virtual {p1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->showProgress(Z)V

    .line 1821
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchBox:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;

    invoke-static {p1, p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;->access$4000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SearchBox;Z)V

    .line 1824
    :cond_a
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateSearchBox()V

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0

    .line 5433
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->animationsEnabled:Z

    return-void
.end method

.method public setBackgroundDelegate(Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;)V
    .locals 0

    .line 5455
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundDelegate:Lorg/telegram/ui/SelectAnimatedEmojiDialog$BackgroundDelegate;

    return-void
.end method

.method public setDrawBackground(Z)V
    .locals 2

    .line 4740
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->drawBackground:Z

    .line 4741
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 4742
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    :cond_0
    if-nez p1, :cond_1

    .line 4745
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4747
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->backgroundView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setEnterAnimationInProgress(Z)V
    .locals 2

    .line 5437
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->enterAnimationInProgress:Z

    if-eq v0, p1, :cond_1

    .line 5438
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->enterAnimationInProgress:Z

    if-nez p1, :cond_1

    .line 5440
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    sget-object v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda11;->INSTANCE:Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda11;

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    const/4 p1, 0x0

    .line 5444
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 5445
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 5446
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 5447
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 5449
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public setExpireDateHint(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1088
    iput-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->includeHint:Z

    .line 1089
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->hintExpireDate:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 1090
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZ)V

    return-void
.end method

.method public setForUser(Z)V
    .locals 0

    .line 202
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->forUser:Z

    const/4 p1, 0x0

    .line 203
    invoke-direct {p0, p1, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZ)V

    return-void
.end method

.method public setForumIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 5421
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->forumIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 5422
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->forumIconImage:Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v0, :cond_0

    .line 5423
    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setOnLongPressedListener(Lorg/telegram/ui/SelectAnimatedEmojiDialog$onLongPressedListener;)V
    .locals 0

    .line 4860
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->bigReactionListener:Lorg/telegram/ui/SelectAnimatedEmojiDialog$onLongPressedListener;

    return-void
.end method

.method public setOnRecentClearedListener(Lorg/telegram/ui/SelectAnimatedEmojiDialog$onRecentClearedListener;)V
    .locals 0

    .line 4864
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onRecentClearedListener:Lorg/telegram/ui/SelectAnimatedEmojiDialog$onRecentClearedListener;

    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    return-void
.end method

.method public setRecentReactions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;)V"
        }
    .end annotation

    .line 4752
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->recentReactionsToSet:Ljava/util/List;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 4753
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZ)V

    return-void
.end method

.method public setSaveState(I)V
    .locals 0

    .line 4852
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->listStateId:Ljava/lang/Integer;

    return-void
.end method

.method public setScrimDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 4800
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getColor()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->getColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimColor:I

    .line 4801
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    .line 4802
    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->scrimDrawableParent:Landroid/view/View;

    .line 4803
    iget-boolean p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->isAttached:Z

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 4804
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->setSecondParent(Landroid/view/View;)V

    .line 4806
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setSelected(Ljava/lang/Long;)V
    .locals 6

    .line 4782
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 4783
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4784
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 4785
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 4786
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    if-eqz v0, :cond_1

    .line 4787
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    .line 4788
    iget-object v1, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 4789
    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    goto :goto_1

    .line 4791
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->setViewSelected(ZZ)V

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4795
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;->invalidate()V

    :cond_3
    return-void
.end method

.method public setSelectedReactions(Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;)V"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedReactions:Ljava/util/HashSet;

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    .line 194
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 195
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v1, v1, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->selectedDocumentIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public switchGrids(ZZ)V
    .locals 3

    .line 1409
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSearch:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1412
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSearch:Z

    .line 1413
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1414
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1415
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSwitchAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1416
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1418
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 1419
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 1420
    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    :cond_2
    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1422
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSwitchAnimator:Landroid/animation/ValueAnimator;

    .line 1423
    new-instance v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1434
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSwitchAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$22;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$22;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1446
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSwitchAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x140

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1447
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSwitchAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1448
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSwitchAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 1449
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1450
    iget-boolean v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSearch:Z

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    const/16 v1, 0x24

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    .line 1451
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 1452
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0xa0

    .line 1453
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1454
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1455
    iget-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->gridSearch:Z

    const/16 v1, 0x36

    const/4 v2, 0x5

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1456
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_1

    .line 1458
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v2, 0x26

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1460
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->checkScroll()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public switchSearchEmptyView(Z)V
    .locals 3

    .line 1545
    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1549
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewVisible:Z

    .line 1550
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1551
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1553
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    .line 1554
    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1561
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$23;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$23;-><init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1568
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1569
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1570
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->searchEmptyViewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    if-eqz p1, :cond_2

    .line 1573
    iget p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->currentAccount:I

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiSearchEmptyViewImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static {p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateSearchEmptyViewImage(ILorg/telegram/ui/Components/BackupImageView;)V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
