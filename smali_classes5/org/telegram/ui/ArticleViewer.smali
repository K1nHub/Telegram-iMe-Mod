.class public Lorg/telegram/ui/ArticleViewer;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;,
        Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;,
        Lorg/telegram/ui/ArticleViewer$ReportCell;,
        Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;,
        Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;,
        Lorg/telegram/ui/ArticleViewer$BlockFooterCell;,
        Lorg/telegram/ui/ArticleViewer$BlockKickerCell;,
        Lorg/telegram/ui/ArticleViewer$BlockTitleCell;,
        Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;,
        Lorg/telegram/ui/ArticleViewer$BlockChannelCell;,
        Lorg/telegram/ui/ArticleViewer$BlockMapCell;,
        Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;,
        Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;,
        Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;,
        Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;,
        Lorg/telegram/ui/ArticleViewer$BlockDividerCell;,
        Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;,
        Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;,
        Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;,
        Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesShadowCell;,
        Lorg/telegram/ui/ArticleViewer$BlockDetailsBottomCell;,
        Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;,
        Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;,
        Lorg/telegram/ui/ArticleViewer$BlockListItemCell;,
        Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;,
        Lorg/telegram/ui/ArticleViewer$BlockCollageCell;,
        Lorg/telegram/ui/ArticleViewer$BlockTableCell;,
        Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;,
        Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;,
        Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;,
        Lorg/telegram/ui/ArticleViewer$BlockAudioCell;,
        Lorg/telegram/ui/ArticleViewer$BlockVideoCell;,
        Lorg/telegram/ui/ArticleViewer$WebpageAdapter;,
        Lorg/telegram/ui/ArticleViewer$WebPageUtils;,
        Lorg/telegram/ui/ArticleViewer$SearchResult;,
        Lorg/telegram/ui/ArticleViewer$CheckForLongPress;,
        Lorg/telegram/ui/ArticleViewer$WindowView;,
        Lorg/telegram/ui/ArticleViewer$CheckForTap;,
        Lorg/telegram/ui/ArticleViewer$FontCell;,
        Lorg/telegram/ui/ArticleViewer$TextSizeCell;,
        Lorg/telegram/ui/ArticleViewer$DrawingText;,
        Lorg/telegram/ui/ArticleViewer$TL_pageBlockEmbedPostCaption;,
        Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;,
        Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;,
        Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;,
        Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;,
        Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;,
        Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;,
        Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;
    }
.end annotation


# static fields
.field public static final ARTICLE_VIEWER_INNER_TRANSLATION_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lorg/telegram/ui/ArticleViewer$WindowView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile Instance:Lorg/telegram/ui/ArticleViewer;

.field private static audioTimePaint:Landroid/text/TextPaint;

.field private static authorTextPaints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static channelNamePaint:Landroid/text/TextPaint;

.field private static channelNamePhotoPaint:Landroid/text/TextPaint;

.field private static detailsTextPaints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static dividerPaint:Landroid/graphics/Paint;

.field private static dotsPaint:Landroid/graphics/Paint;

.field private static embedPostAuthorPaint:Landroid/text/TextPaint;

.field private static embedPostCaptionTextPaints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static embedPostDatePaint:Landroid/text/TextPaint;

.field private static embedPostTextPaints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static errorTextPaint:Landroid/text/TextPaint;

.field private static footerTextPaints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static headerTextPaints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static kickerTextPaints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static listTextNumPaint:Landroid/text/TextPaint;

.field private static listTextPaints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static listTextPointerPaint:Landroid/text/TextPaint;

.field private static mediaCaptionTextPaints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static mediaCreditTextPaints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static paragraphTextPaints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static photoBackgroundPaint:Landroid/graphics/Paint;

.field private static photoCaptionTextPaints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static photoCreditTextPaints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static preformattedBackgroundPaint:Landroid/graphics/Paint;

.field private static preformattedTextPaints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static quoteLinePaint:Landroid/graphics/Paint;

.field private static quoteTextPaints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static relatedArticleHeaderPaint:Landroid/text/TextPaint;

.field private static relatedArticleTextPaint:Landroid/text/TextPaint;

.field private static relatedArticleTextPaints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static subheaderTextPaints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static subtitleTextPaints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static tableHalfLinePaint:Landroid/graphics/Paint;

.field private static tableHeaderPaint:Landroid/graphics/Paint;

.field private static tableLinePaint:Landroid/graphics/Paint;

.field private static tableStripPaint:Landroid/graphics/Paint;

.field private static tableTextPaints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static titleTextPaints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static urlPaint:Landroid/graphics/Paint;

.field private static webpageMarkPaint:Landroid/graphics/Paint;

.field private static webpageSearchPaint:Landroid/graphics/Paint;

.field private static webpageUrlPaint:Landroid/graphics/Paint;


# instance fields
.field private adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private anchorsOffsetMeasuredWidth:I

.field private animateClear:Z

.field private animationEndRunnable:Ljava/lang/Runnable;

.field private animationInProgress:I

.field private attachedToWindow:Z

.field private backButton:Landroid/widget/ImageView;

.field private backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private chat_redLocationIcon:Landroid/graphics/drawable/Drawable;

.field private checkingForLongPress:Z

.field private clearButton:Landroid/widget/ImageView;

.field private closeAnimationInProgress:Z

.field private collapsed:Z

.field private containerView:Landroid/widget/FrameLayout;

.field private createdWebViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;",
            ">;"
        }
    .end annotation
.end field

.field private currentAccount:I

.field private currentHeaderHeight:I

.field currentPlayer:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

.field private currentPlayingVideo:Lorg/telegram/ui/Components/WebPlayerView;

.field private currentSearchIndex:I

.field private customView:Landroid/view/View;

.field private customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private deleteView:Landroid/widget/TextView;

.field private drawBlockSelection:Z

.field private fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

.field private fullscreenAspectRatioView:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private fullscreenTextureView:Landroid/view/TextureView;

.field private fullscreenVideoContainer:Landroid/widget/FrameLayout;

.field private fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

.field private hasCutout:Z

.field private headerPaint:Landroid/graphics/Paint;

.field private headerProgressPaint:Landroid/graphics/Paint;

.field private headerView:Landroid/widget/FrameLayout;

.field private ignoreOnTextChange:Z

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private isVisible:Z

.field private keyboardVisible:Z

.field private lastBlockNum:I

.field private lastInsets:Ljava/lang/Object;

.field private lastReqId:I

.field private lastSearchIndex:I

.field private layerShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private layoutManager:[Landroidx/recyclerview/widget/LinearLayoutManager;

.field private lineProgressTickRunnable:Ljava/lang/Runnable;

.field private lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

.field private linkSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

.field private links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

.field private listView:[Lorg/telegram/ui/Components/RecyclerListView;

.field private loadedChannel:Lorg/telegram/tgnet/TLRPC$Chat;

.field private loadingChannel:Z

.field private menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private menuContainer:Landroid/widget/FrameLayout;

.field private navigationBarPaint:Landroid/graphics/Paint;

.field private final notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private openUrlReqId:I

.field private pageSwitchAnimation:Landroid/animation/AnimatorSet;

.field private pagesStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            ">;"
        }
    .end annotation
.end field

.field private parentActivity:Landroid/app/Activity;

.field private parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

.field private pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

.field pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

.field private popupDivider:Landroid/view/View;

.field private popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field private popupRect:Landroid/graphics/Rect;

.field private popupTranslateButton:Landroid/widget/TextView;

.field private popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private pressCount:I

.field private pressedLayoutY:I

.field private pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/ui/Components/LinkSpanDrawable<",
            "Lorg/telegram/ui/Components/TextPaintUrlSpan;",
            ">;"
        }
    .end annotation
.end field

.field private pressedLinkOwnerLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private pressedLinkOwnerView:Landroid/view/View;

.field private previewsReqId:I

.field private progressView:Lorg/telegram/ui/Components/ContextProgressView;

.field private progressViewAnimation:Landroid/animation/AnimatorSet;

.field private runAfterKeyboardClose:Landroid/animation/AnimatorSet;

.field private scrimPaint:Landroid/graphics/Paint;

.field private searchContainer:Landroid/widget/FrameLayout;

.field private searchCountText:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private searchDownButton:Landroid/widget/ImageView;

.field private searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private searchPanel:Landroid/widget/FrameLayout;

.field private searchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ArticleViewer$SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private searchRunnable:Ljava/lang/Runnable;

.field private searchShadow:Landroid/view/View;

.field private searchText:Ljava/lang/String;

.field private searchUpButton:Landroid/widget/ImageView;

.field private selectedFont:I

.field private slideDotBigDrawable:Landroid/graphics/drawable/Drawable;

.field private slideDotDrawable:Landroid/graphics/drawable/Drawable;

.field private statusBarPaint:Landroid/graphics/Paint;

.field textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

.field textSelectionHelperBottomSheet:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

.field private titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private transitionAnimationStartTime:J

.field private translatePageItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

.field private visibleDialog:Landroid/app/Dialog;

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowView:Lorg/telegram/ui/ArticleViewer$WindowView;


# direct methods
.method public static synthetic $r8$lambda$0XdEr8jSXdQYPGaS1LsLGPOo-Ao(Lorg/telegram/ui/ArticleViewer;[F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$27([F)V

    return-void
.end method

.method public static synthetic $r8$lambda$2CKxrNiRwLb0gvVoeRkiGsXqEAk(Lorg/telegram/ui/ArticleViewer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$checkScrollAnimated$32(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6CDya5Qr1FMxR0N2up7TaWnHJMY(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->lambda$showSearch$28()V

    return-void
.end method

.method public static synthetic $r8$lambda$7lLLIxCPjoGa5H6X2I-JFES3aro(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$17(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8-9uxQ4e2o-FP615yAB1wYgjP7A(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->lambda$showPopup$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$8oZS0gB08M6kNqRM1YQDPcIPSH4(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->lambda$showCopyPopup$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$98KM9MTIaBSB3S968mGg7yn27aQ(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$19(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AHniShGNA4T43S0cUC7VCOtJDxM(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ArticleViewer;->lambda$joinChannel$43(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BKFRVJueN5St8wtJBXgotc6bKy8(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$25(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D1mC2moM5_2wn2yBeYDUV74915g(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$18(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DHqNQkEZowSMkeDOuRXqo9NrlcY(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;ILorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ArticleViewer;->lambda$joinChannel$46(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;ILorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DuRwlaKptBuMdAVRi9t6MuOIQxY(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->lambda$open$35()V

    return-void
.end method

.method public static synthetic $r8$lambda$E9Gy6vMsyGpu1sk55z152OKB_xk(Lorg/telegram/ui/ArticleViewer;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ArticleViewer;->lambda$processSearch$30(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ExcUHLFKpd1TucIAg28dBEDUZTs(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/View;IFF)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$13(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$EziscVnZ19G58cnLjOe-tPOJdEA(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->lambda$joinChannel$44(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GG6U_aEDmXzeebsYJgTh-4psWNE(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$23(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Gs7vF4JaNqnjbrcl5KKP17Fzy10(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;ILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ArticleViewer;->lambda$open$34(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;ILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GyZKY2Pvn9ZpTqDueBqU0Zzk3s8(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ArticleViewer$BlockChannelCell;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ArticleViewer;->lambda$loadChannel$41(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ArticleViewer$BlockChannelCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HGnXTaQYNnA9b5viS0A8CfnzL3k(ILorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$joinChannel$45(ILorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IRIz4BElyREkwOkc_A_sOlP7IOc(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->lambda$showPopup$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ISBkLPwKDsI18s6XBXi-FLmNETU(Lorg/telegram/ui/ArticleViewer;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$showDialog$47(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JUczicAVEvlxvIhaChax1IZOMGc(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$showPopup$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KDb1YOBhfsoS2R5MRNd1oAKNAkw(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$21(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KkyYAgJZQLEyKaAXs3TlWuoZ2Yw(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$26(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LYPvll_q6Z4e-emYJoBfLPJrZCU(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->lambda$close$39()V

    return-void
.end method

.method public static synthetic $r8$lambda$PVB9M24_p8apLwjyJM2qVmlLzhU(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->lambda$processSearch$31(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PZBxK5iqPUiHG3SaYblzXtyW0f4(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;ILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ArticleViewer;->lambda$open$33(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RQnucBu3C4uIVvD37f3OYPQio1Q(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$10(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$T3rKcN7jg8hmc8FQPAgcr0Jun7Q(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$20(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V2mpTFO_sUGmBxK0SpfQj61Ap3Q(Lorg/telegram/ui/ArticleViewer;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$16(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VHcaWuBN3HHYh0TiR4tTGGQPGOU(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->lambda$onClosed$40()V

    return-void
.end method

.method public static synthetic $r8$lambda$Wga8q03Wesop2fShVemqsO7tppM(Lorg/telegram/ui/ArticleViewer;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$showPopup$3(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X4X9PJ-GL8S0jrArPruNLcSkWkI(Lorg/telegram/ui/ArticleViewer;ILorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ArticleViewer;->lambda$openWebpageUrl$7(ILorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xc8xpybWLmzUEI9zDTCdY7CBR-U(Lorg/telegram/ui/ArticleViewer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$22(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$a1mdh1PGiW3FjVeCNb7OL_EWHHw(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$auPtrPmynovTP22QYFcHl-4iNyI(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$open$36(Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ee1b7jGW7Rp-dWgDw2OyviByIvY(Lorg/telegram/ui/ArticleViewer;IJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$12(IJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fmhkALkwpiwTrexWXs47ec_6Pao(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gk0IzOGQG4II-qkT8JSnHsMKkEA(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$showPopup$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n0NxTQPQFZobeml456R-nutZ2BA(Lorg/telegram/ui/ArticleViewer;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$showCopyPopup$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pZNHvLOF8ZMQy-bLYxdWYXTZoTM(Lorg/telegram/ui/ArticleViewer;ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ArticleViewer;->lambda$openWebpageUrl$8(ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rY1ehPaWnsVeN85SVpsTpXN5gJg(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLObject;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$11(Lorg/telegram/tgnet/TLObject;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$w0xuIPkyvbsQOUThnhMl3ZfiYJQ(Lorg/telegram/ui/ArticleViewer;ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->lambda$processSearch$29(ILjava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wQkjK8GYtWf0IX_A1ev1TU8T1gU(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$24(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xVh65iGxU6ZGJQyknIyFRbCSM9c(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;ILorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ArticleViewer;->lambda$loadChannel$42(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;ILorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yUinSQd0mUEP2AZVKb94-lbbYoQ(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ArticleViewer;->lambda$setParentActivity$9(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 707
    new-instance v0, Lorg/telegram/ui/ArticleViewer$1;

    const-string v1, "innerTranslationX"

    invoke-direct {v0, v1}, Lorg/telegram/ui/ArticleViewer$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->ARTICLE_VIEWER_INNER_TRANSLATION_X:Landroid/util/Property;

    .line 1954
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->audioTimePaint:Landroid/text/TextPaint;

    .line 1956
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    .line 1957
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->photoCreditTextPaints:Landroid/util/SparseArray;

    .line 1958
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->titleTextPaints:Landroid/util/SparseArray;

    .line 1959
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->kickerTextPaints:Landroid/util/SparseArray;

    .line 1960
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->headerTextPaints:Landroid/util/SparseArray;

    .line 1961
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->subtitleTextPaints:Landroid/util/SparseArray;

    .line 1962
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->subheaderTextPaints:Landroid/util/SparseArray;

    .line 1963
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->authorTextPaints:Landroid/util/SparseArray;

    .line 1964
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->footerTextPaints:Landroid/util/SparseArray;

    .line 1965
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->paragraphTextPaints:Landroid/util/SparseArray;

    .line 1966
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->listTextPaints:Landroid/util/SparseArray;

    .line 1967
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->preformattedTextPaints:Landroid/util/SparseArray;

    .line 1968
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->quoteTextPaints:Landroid/util/SparseArray;

    .line 1969
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostTextPaints:Landroid/util/SparseArray;

    .line 1970
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostCaptionTextPaints:Landroid/util/SparseArray;

    .line 1971
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->mediaCaptionTextPaints:Landroid/util/SparseArray;

    .line 1972
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->mediaCreditTextPaints:Landroid/util/SparseArray;

    .line 1973
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->relatedArticleTextPaints:Landroid/util/SparseArray;

    .line 1974
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->detailsTextPaints:Landroid/util/SparseArray;

    .line 1975
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->tableTextPaints:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 257
    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->lastBlockNum:I

    .line 262
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 264
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    .line 290
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->animateClear:Z

    .line 305
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->headerPaint:Landroid/graphics/Paint;

    .line 306
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->statusBarPaint:Landroid/graphics/Paint;

    .line 307
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->navigationBarPaint:Landroid/graphics/Paint;

    .line 308
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->headerProgressPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 327
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    const/4 v2, 0x0

    .line 328
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    .line 329
    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->pressCount:I

    .line 330
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    .line 333
    new-instance v2, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {v2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    .line 339
    new-instance v2, Lorg/telegram/ui/Components/LinkPath;

    invoke-direct {v2}, Lorg/telegram/ui/Components/LinkPath;-><init>()V

    .line 353
    new-instance v2, Lorg/telegram/messenger/AnimationNotificationsLocker;

    const/4 v3, 0x2

    new-array v4, v3, [I

    sget v5, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    aput v5, v4, v1

    sget v5, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    aput v5, v4, v0

    invoke-direct {v2, v4}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>([I)V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 381
    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    new-array v0, v3, [Lorg/telegram/ui/ArticleViewer$FontCell;

    .line 382
    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    .line 4074
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchResults:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 4077
    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->lastSearchIndex:I

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->searchResults:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    return-object p0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->translatePageItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$10100(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->checkScrollAnimated()V

    return-void
.end method

.method static synthetic access$10200(Lorg/telegram/ui/ArticleViewer;Z)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->showSearch(Z)V

    return-void
.end method

.method static synthetic access$10400(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->searchContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$10500(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->updateWindowLayoutParamsForSearch()V

    return-void
.end method

.method static synthetic access$10600(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$10700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/BackDrawable;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    return-object p0
.end method

.method static synthetic access$10800(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/AnimationNotificationsLocker;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    return-object p0
.end method

.method static synthetic access$10900(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$10902(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$DrawingText;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    return-object p0
.end method

.method static synthetic access$11000(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$11002(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1102(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$DrawingText;)Lorg/telegram/ui/ArticleViewer$DrawingText;
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    return-object p1
.end method

.method static synthetic access$11100(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/ContextProgressView;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    return-object p0
.end method

.method static synthetic access$11400(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastNonListPageBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$11500(Lorg/telegram/ui/ArticleViewer;)I
    .locals 0

    .line 200
    iget p0, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/LinkSpanDrawable;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/LinkSpanDrawable;)Lorg/telegram/ui/Components/LinkSpanDrawable;
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    return-object p1
.end method

.method static synthetic access$12200(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 0

    .line 200
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->wrapInTableBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$12800(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 0

    .line 200
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->fixListBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 0

    .line 200
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer;->drawBlockSelection:Z

    return p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0

    .line 200
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->drawBlockSelection:Z

    return p1
.end method

.method static synthetic access$13500(Lorg/telegram/ui/ArticleViewer;)I
    .locals 0

    .line 200
    iget p0, p0, Lorg/telegram/ui/ArticleViewer;->lastBlockNum:I

    return p0
.end method

.method static synthetic access$13508(Lorg/telegram/ui/ArticleViewer;)I
    .locals 2

    .line 200
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->lastBlockNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->lastBlockNum:I

    return v0
.end method

.method static synthetic access$13700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method static synthetic access$13800(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;
    .locals 0

    .line 200
    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$13900(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;
    .locals 0

    .line 200
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400()Landroid/graphics/Paint;
    .locals 1

    .line 200
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$14000()Landroid/graphics/Paint;
    .locals 1

    .line 200
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$14100(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V
    .locals 0

    .line 200
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->drawTextSelection(Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    return-void
.end method

.method static synthetic access$14200()Landroid/graphics/Paint;
    .locals 1

    .line 200
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$14500()Landroid/text/TextPaint;
    .locals 1

    .line 200
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->audioTimePaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$14600(Lorg/telegram/ui/ArticleViewer;)I
    .locals 0

    .line 200
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p0

    return p0
.end method

.method static synthetic access$14900(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;
    .locals 0

    .line 200
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$15000(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->drawTextSelection(Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V

    return-void
.end method

.method static synthetic access$15600(Lorg/telegram/ui/ArticleViewer;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object p0
.end method

.method static synthetic access$15700(Lorg/telegram/ui/ArticleViewer;)Landroid/view/TextureView;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$15802(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView;
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

    return-object p1
.end method

.method static synthetic access$15900(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/WebPlayerView;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayingVideo:Lorg/telegram/ui/Components/WebPlayerView;

    return-object p0
.end method

.method static synthetic access$15902(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView;
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayingVideo:Lorg/telegram/ui/Components/WebPlayerView;

    return-object p1
.end method

.method static synthetic access$16000(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$16200(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$16202(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$16300(Lorg/telegram/ui/ArticleViewer;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p0
.end method

.method static synthetic access$16302(Lorg/telegram/ui/ArticleViewer;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$16600(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->removePressedLink()V

    return-void
.end method

.method static synthetic access$16700()Landroid/graphics/Paint;
    .locals 1

    .line 200
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->tableLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$16800()Landroid/graphics/Paint;
    .locals 1

    .line 200
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->tableHalfLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$16900()Landroid/graphics/Paint;
    .locals 1

    .line 200
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->tableHeaderPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    return-object p0
.end method

.method static synthetic access$17000()Landroid/graphics/Paint;
    .locals 1

    .line 200
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->tableStripPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$17900()Landroid/graphics/Paint;
    .locals 1

    .line 200
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->dotsPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$17902(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    .line 200
    sput-object p0, Lorg/telegram/ui/ArticleViewer;->dotsPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$18900(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->slideDotBigDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->updatePaintSize()V

    return-void
.end method

.method static synthetic access$19000(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->slideDotDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$19500()Landroid/text/TextPaint;
    .locals 1

    .line 200
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->listTextNumPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$19600(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;)Z
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->isListItemBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ArticleViewer;)I
    .locals 0

    .line 200
    iget p0, p0, Lorg/telegram/ui/ArticleViewer;->currentSearchIndex:I

    return p0
.end method

.method static synthetic access$20300()I
    .locals 1

    .line 200
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$20400(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->chat_redLocationIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$20402(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->chat_redLocationIcon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$20500(Lorg/telegram/ui/ArticleViewer;)I
    .locals 0

    .line 200
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getLinkTextColor()I

    move-result p0

    return p0
.end method

.method static synthetic access$20600(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->loadChannel(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method static synthetic access$20700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->loadedChannel:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static synthetic access$20702(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->loadedChannel:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p1
.end method

.method static synthetic access$20800(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->joinChannel(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLRPC$Chat;)V

    return-void
.end method

.method static synthetic access$20900(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;
    .locals 0

    .line 200
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$CheckForLongPress;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    return-object p0
.end method

.method static synthetic access$2102(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$CheckForLongPress;)Lorg/telegram/ui/ArticleViewer$CheckForLongPress;
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$21400()Landroid/graphics/Paint;
    .locals 1

    .line 200
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->preformattedBackgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$21700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->openWebpageUrl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$21800(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 0

    .line 200
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->getBlockCaption(Lorg/telegram/tgnet/TLRPC$PageBlock;I)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$21900(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;
    .locals 0

    .line 200
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2204(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1

    .line 200
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->pressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->pressCount:I

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 0

    .line 200
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer;->hasCutout:Z

    return p0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0

    .line 200
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->hasCutout:Z

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ArticleViewer;)I
    .locals 0

    .line 200
    iget p0, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0

    .line 200
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->keyboardVisible:Z

    return p1
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ArticleViewer;)I
    .locals 0

    .line 200
    iget p0, p0, Lorg/telegram/ui/ArticleViewer;->anchorsOffsetMeasuredWidth:I

    return p0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/ArticleViewer;I)I
    .locals 0

    .line 200
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->anchorsOffsetMeasuredWidth:I

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->runAfterKeyboardClose:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->runAfterKeyboardClose:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$3602(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0

    .line 200
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->attachedToWindow:Z

    return p1
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 0

    .line 200
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer;->collapsed:Z

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 0

    .line 200
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->scrimPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;ZI)V
    .locals 0

    .line 200
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->updateInterfaceForCurrentPage(Lorg/telegram/tgnet/TLRPC$WebPage;ZI)V

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->pageSwitchAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$4402(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pageSwitchAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$4500(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 0

    .line 200
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer;->closeAnimationInProgress:Z

    return p0
.end method

.method static synthetic access$4502(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0

    .line 200
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->closeAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$4600(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4602(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 200
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/ArticleViewer;)[Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:[Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/SimpleTextView;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->saveCurrentPagePosition()V

    return-void
.end method

.method static synthetic access$5200(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->onClosed()V

    return-void
.end method

.method static synthetic access$5400(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->statusBarPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->navigationBarPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 0

    .line 200
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    return p0
.end method

.method static synthetic access$5702(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0

    .line 200
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    return p1
.end method

.method static synthetic access$5800(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->showCopyPopup(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Lorg/telegram/ui/ArticleViewer;)I
    .locals 0

    .line 200
    iget p0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLayoutY:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/String;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->searchText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;III)V
    .locals 0

    .line 200
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ArticleViewer;->showPopup(Landroid/view/View;III)V

    return-void
.end method

.method static synthetic access$700()Landroid/graphics/Paint;
    .locals 1

    .line 200
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->webpageSearchPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->linkSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    return-object p0
.end method

.method static synthetic access$800()Landroid/graphics/Paint;
    .locals 1

    .line 200
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->webpageUrlPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$8000()Landroid/graphics/Paint;
    .locals 1

    .line 200
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->dividerPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z
    .locals 0

    .line 200
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ArticleViewer;->checkLayoutForLinks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900()Landroid/graphics/Paint;
    .locals 1

    .line 200
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->webpageMarkPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$9100(Lorg/telegram/ui/ArticleViewer;I)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->setCurrentHeaderHeight(I)V

    return-void
.end method

.method static synthetic access$9200(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->checkVideoPlayer()V

    return-void
.end method

.method static synthetic access$9300(Lorg/telegram/ui/ArticleViewer;I)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->checkScroll(I)V

    return-void
.end method

.method static synthetic access$9400(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->headerPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->headerProgressPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 0

    .line 200
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer;->ignoreOnTextChange:Z

    return p0
.end method

.method static synthetic access$9602(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0

    .line 200
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->ignoreOnTextChange:Z

    return p1
.end method

.method static synthetic access$9700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->processSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/ImageView;
    .locals 0

    .line 200
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer;->clearButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 0

    .line 200
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer;->animateClear:Z

    return p0
.end method

.method static synthetic access$9902(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0

    .line 200
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->animateClear:Z

    return p1
.end method

.method private addPageToStack(Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;I)Z
    .locals 1

    .line 1756
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->saveCurrentPagePosition()V

    .line 1757
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 1758
    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->showSearch(Z)V

    .line 1759
    invoke-direct {p0, p1, v0, p3}, Lorg/telegram/ui/ArticleViewer;->updateInterfaceForCurrentPage(Lorg/telegram/tgnet/TLRPC$WebPage;ZI)V

    .line 1760
    invoke-direct {p0, p2}, Lorg/telegram/ui/ArticleViewer;->scrollToAnchor(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private checkAnimation()Z
    .locals 6

    .line 4950
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4951
    iget-wide v2, p0, Lorg/telegram/ui/ArticleViewer;->transitionAnimationStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 4952
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4953
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 4954
    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    .line 4956
    :cond_0
    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    .line 4959
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private checkLayoutForLinks(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v0, p4

    move/from16 v3, p5

    move/from16 v4, p6

    .line 2712
    iget-object v5, v1, Lorg/telegram/ui/ArticleViewer;->pageSwitchAnimation:Landroid/animation/AnimatorSet;

    const/4 v6, 0x0

    if-nez v5, :cond_1c

    if-eqz v2, :cond_1c

    iget-object v5, v1, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->isSelectable(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_10

    .line 2715
    :cond_0
    iput-object v2, v1, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 2717
    iget-object v7, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    .line 2718
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    .line 2719
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    .line 2721
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_a

    const/high16 v10, 0x4f000000

    .line 2724
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v12

    const/4 v13, 0x0

    move v14, v6

    move v15, v13

    :goto_0
    if-ge v14, v12, :cond_1

    .line 2725
    invoke-virtual {v7, v14}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v5

    invoke-static {v5, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 2726
    invoke-virtual {v7, v14}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v5

    invoke-static {v5, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    int-to-float v5, v8

    int-to-float v12, v3

    add-float/2addr v12, v10

    cmpl-float v10, v5, v12

    if-ltz v10, :cond_11

    add-float/2addr v12, v15

    cmpg-float v10, v5, v12

    if-gtz v10, :cond_11

    if-lt v9, v4, :cond_11

    .line 2728
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v10

    add-int/2addr v10, v4

    if-gt v9, v10, :cond_11

    .line 2729
    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    .line 2730
    iput v4, v1, Lorg/telegram/ui/ArticleViewer;->pressedLayoutY:I

    .line 2731
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2732
    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_11

    sub-int/2addr v8, v3

    sub-int v0, v9, v4

    .line 2736
    :try_start_0
    invoke-virtual {v7, v0}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v0

    int-to-float v3, v8

    .line 2737
    invoke-virtual {v7, v0, v3}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 2738
    invoke-virtual {v7, v0}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v8

    cmpg-float v10, v8, v3

    if-gtz v10, :cond_11

    .line 2739
    invoke-virtual {v7, v0}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    add-float/2addr v8, v0

    cmpl-float v0, v8, v3

    if-ltz v0, :cond_11

    .line 2740
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 2741
    const-class v3, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    invoke-interface {v0, v4, v4, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/telegram/ui/Components/TextPaintUrlSpan;

    if-eqz v3, :cond_11

    .line 2742
    array-length v4, v3

    if-lez v4, :cond_11

    .line 2743
    aget-object v4, v3, v6

    .line 2744
    invoke-interface {v0, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 2745
    invoke-interface {v0, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    const/4 v12, 0x1

    .line 2746
    :goto_1
    array-length v14, v3

    if-ge v12, v14, :cond_4

    .line 2747
    aget-object v14, v3, v12

    .line 2748
    invoke-interface {v0, v14}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 2749
    invoke-interface {v0, v14}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-gt v8, v15, :cond_2

    if-le v6, v10, :cond_3

    :cond_2
    move v10, v6

    move-object v4, v14

    move v8, v15

    :cond_3
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x0

    goto :goto_1

    .line 2756
    :cond_4
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    if-eq v0, v4, :cond_11

    .line 2757
    :cond_5
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v0, :cond_6

    .line 2758
    iget-object v3, v1, Lorg/telegram/ui/ArticleViewer;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->removeLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 2760
    :cond_6
    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable;

    int-to-float v3, v9

    invoke-direct {v0, v4, v11, v5, v3}, Lorg/telegram/ui/Components/LinkSpanDrawable;-><init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FF)V

    iput-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 2761
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkSelection:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const v5, 0x33ffffff

    and-int/2addr v3, v5

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/LinkSpanDrawable;->setColor(I)V

    .line 2762
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    iget-object v3, v1, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    iget-object v5, v1, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, v3, v5}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLink(Lorg/telegram/ui/Components/LinkSpanDrawable;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2764
    :try_start_1
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->obtainNewPath()Lorg/telegram/ui/Components/LinkPath;

    move-result-object v0

    .line 2765
    invoke-virtual {v0, v7, v8, v13}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 2766
    invoke-virtual {v4}, Lorg/telegram/ui/Components/TextPaintUrlSpan;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 2767
    iget v3, v3, Landroid/text/TextPaint;->baselineShift:I

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_9

    if-lez v3, :cond_8

    const/4 v4, 0x5

    goto :goto_3

    :cond_8
    const/4 v4, -0x2

    .line 2768
    :goto_3
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/LinkPath;->setBaselineShift(I)V

    .line 2769
    invoke-virtual {v7, v8, v10, v0}, Landroid/text/StaticLayout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 2770
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->invalidate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    .line 2772
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_9

    :catch_1
    move-exception v0

    .line 2778
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 2782
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_12

    .line 2783
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v0, :cond_11

    .line 2785
    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TextPaintUrlSpan;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 2787
    iget-object v3, v1, Lorg/telegram/ui/ArticleViewer;->linkSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v3, :cond_b

    .line 2788
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 2789
    iput-object v11, v1, Lorg/telegram/ui/ArticleViewer;->linkSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    :cond_b
    const/16 v3, 0x23

    .line 2794
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_e

    .line 2796
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Page;->url:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 2797
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Page;->url:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 2799
    :cond_c
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    :goto_5
    move-object v5, v4

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 2802
    :try_start_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "UTF-8"

    invoke-static {v3, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    const-string v3, ""

    :goto_6
    move-object v11, v3

    .line 2806
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2807
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2808
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer;->layoutManager:[Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2809
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->checkScrollAnimated()V

    goto :goto_7

    .line 2811
    :cond_d
    invoke-direct {v1, v11}, Lorg/telegram/ui/ArticleViewer;->scrollToAnchor(Ljava/lang/String;)Z

    :goto_7
    move v3, v4

    goto :goto_8

    :cond_e
    const/4 v4, 0x1

    :cond_f
    const/4 v3, 0x0

    :goto_8
    if-nez v3, :cond_13

    .line 2819
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TextPaintUrlSpan;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v11}, Lorg/telegram/ui/ArticleViewer;->openWebpageUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_10
    const/4 v4, 0x1

    goto :goto_a

    :cond_11
    :goto_9
    const/4 v4, 0x1

    goto :goto_b

    :cond_12
    move v4, v3

    .line 2823
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_14

    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    :goto_a
    move v3, v4

    goto :goto_c

    :cond_14
    :goto_b
    const/4 v3, 0x0

    :goto_c
    if-eqz v3, :cond_16

    .line 2827
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->removePressedLink()V

    goto :goto_d

    :cond_15
    const/4 v4, 0x1

    .line 2830
    :cond_16
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_17

    .line 2831
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v0, v3, v2}, Lorg/telegram/ui/ArticleViewer;->startCheckLongPress(FFLandroid/view/View;)V

    .line 2833
    :cond_17
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_18

    .line 2834
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->cancelCheckLongPress()V

    .line 2836
    :cond_18
    instance-of v0, v2, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;

    if-eqz v0, :cond_1a

    .line 2837
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v0, :cond_19

    move v6, v4

    goto :goto_e

    :cond_19
    const/4 v6, 0x0

    :goto_e
    return v6

    .line 2839
    :cond_1a
    iget-object v0, v1, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1b

    move v6, v4

    goto :goto_f

    :cond_1b
    const/4 v6, 0x0

    :goto_f
    return v6

    :cond_1c
    :goto_10
    move v2, v6

    return v2
.end method

.method private checkScroll(I)V
    .locals 1

    .line 4275
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setCurrentHeaderHeight(I)V

    return-void
.end method

.method private checkScrollAnimated()V
    .locals 5

    const/16 v0, 0x38

    .line 4224
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 4225
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    if-ne v2, v1, :cond_0

    return-void

    .line 4228
    :cond_0
    new-instance v1, Landroid/animation/IntEvaluator;

    invoke-direct {v1}, Landroid/animation/IntEvaluator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 4229
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4230
    new-instance v1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4231
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private checkVideoPlayer()V
    .locals 11

    .line 3909
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 3910
    iget-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->attachedToWindow:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 3915
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    const/4 v5, 0x0

    move-object v6, v5

    .line 3916
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 3917
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3918
    instance-of v8, v7, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    if-eqz v8, :cond_2

    .line 3919
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v4

    add-float/2addr v8, v9

    if-eqz v6, :cond_1

    sub-float v9, v3, v8

    .line 3920
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v10, v3, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    .line 3921
    :cond_1
    move-object v6, v7

    check-cast v6, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    move v2, v8

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3926
    :cond_3
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->isVisibleOrAnimating()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 3927
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayer:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    if-eqz v1, :cond_6

    if-eq v1, v6, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    if-eqz v1, :cond_6

    .line 3928
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    if-eqz v1, :cond_5

    .line 3929
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayer:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    invoke-virtual {v1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->getCurrentPosition()J

    move-result-wide v3

    iput-wide v3, v2, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->playFrom:J

    .line 3930
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->release(Ljava/lang/Runnable;)Z

    .line 3932
    :cond_5
    iput-object v5, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    .line 3933
    iput-object v5, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayer:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    :cond_6
    if-eqz v0, :cond_7

    if-eqz v6, :cond_7

    .line 3936
    invoke-static {v6}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$10300(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)V

    .line 3937
    iput-object v6, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayer:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    :cond_7
    return-void
.end method

.method private createLayoutForText(Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p6

    const/4 v11, 0x0

    if-nez v8, :cond_1

    if-eqz v9, :cond_0

    .line 2522
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-eqz v0, :cond_1

    :cond_0
    return-object v11

    :cond_1
    const/16 v12, 0xa

    if-gez p4, :cond_2

    .line 2526
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    move/from16 v21, v0

    goto :goto_0

    :cond_2
    move/from16 v21, p4

    :goto_0
    if-eqz v8, :cond_3

    move-object v0, v8

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    move/from16 v6, v21

    .line 2533
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2535
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v11

    .line 2539
    :cond_4
    sget v1, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    const/16 v2, 0x10

    sub-int/2addr v1, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 2542
    instance-of v3, v10, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    const/16 v4, 0xe

    const/16 v5, 0xf

    const/4 v6, 0x1

    if-eqz v3, :cond_8

    if-nez v9, :cond_8

    .line 2543
    move-object v2, v10

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    .line 2544
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->author:Ljava/lang/String;

    if-ne v2, v8, :cond_6

    .line 2545
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    if-nez v2, :cond_5

    .line 2546
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v6}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v2, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    .line 2547
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 2549
    :cond_5
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2550
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    goto/16 :goto_2

    .line 2552
    :cond_6
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    if-nez v2, :cond_7

    .line 2553
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v6}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v2, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    .line 2554
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 2556
    :cond_7
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2557
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    goto/16 :goto_2

    .line 2559
    :cond_8
    instance-of v3, v10, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    const-string v13, "fonts/rmedium.ttf"

    if-eqz v3, :cond_b

    .line 2560
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->channelNamePaint:Landroid/text/TextPaint;

    if-nez v1, :cond_9

    .line 2561
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v6}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/ArticleViewer;->channelNamePaint:Landroid/text/TextPaint;

    .line 2562
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2564
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v6}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v1, Lorg/telegram/ui/ArticleViewer;->channelNamePhotoPaint:Landroid/text/TextPaint;

    .line 2565
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2567
    :cond_9
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->channelNamePaint:Landroid/text/TextPaint;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 2568
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->channelNamePaint:Landroid/text/TextPaint;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2570
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->channelNamePhotoPaint:Landroid/text/TextPaint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 2571
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->channelNamePhotoPaint:Landroid/text/TextPaint;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2573
    invoke-static/range {p9 .. p9}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7300(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    move-result-object v1

    if-eqz v1, :cond_a

    sget-object v1, Lorg/telegram/ui/ArticleViewer;->channelNamePhotoPaint:Landroid/text/TextPaint;

    goto/16 :goto_2

    :cond_a
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->channelNamePaint:Landroid/text/TextPaint;

    goto/16 :goto_2

    .line 2574
    :cond_b
    instance-of v3, v10, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    if-eqz v3, :cond_f

    .line 2575
    move-object v2, v10

    check-cast v2, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    .line 2576
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->access$8600(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;->articles:Ljava/util/ArrayList;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->access$8500(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->title:Ljava/lang/String;

    if-ne v8, v2, :cond_d

    .line 2577
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->relatedArticleHeaderPaint:Landroid/text/TextPaint;

    if-nez v2, :cond_c

    .line 2578
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v6}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v2, Lorg/telegram/ui/ArticleViewer;->relatedArticleHeaderPaint:Landroid/text/TextPaint;

    .line 2579
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2581
    :cond_c
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->relatedArticleHeaderPaint:Landroid/text/TextPaint;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 2582
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->relatedArticleHeaderPaint:Landroid/text/TextPaint;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2583
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->relatedArticleHeaderPaint:Landroid/text/TextPaint;

    goto/16 :goto_2

    .line 2585
    :cond_d
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->relatedArticleTextPaint:Landroid/text/TextPaint;

    if-nez v2, :cond_e

    .line 2586
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v6}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v2, Lorg/telegram/ui/ArticleViewer;->relatedArticleTextPaint:Landroid/text/TextPaint;

    .line 2588
    :cond_e
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->relatedArticleTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 2589
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->relatedArticleTextPaint:Landroid/text/TextPaint;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2590
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->relatedArticleTextPaint:Landroid/text/TextPaint;

    goto :goto_2

    .line 2592
    :cond_f
    invoke-direct {v7, v10}, Lorg/telegram/ui/ArticleViewer;->isListItemBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v3

    if-eqz v3, :cond_13

    if-eqz v8, :cond_13

    .line 2593
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->listTextPointerPaint:Landroid/text/TextPaint;

    if-nez v3, :cond_10

    .line 2594
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v6}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v3, Lorg/telegram/ui/ArticleViewer;->listTextPointerPaint:Landroid/text/TextPaint;

    .line 2595
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 2597
    :cond_10
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->listTextNumPaint:Landroid/text/TextPaint;

    if-nez v3, :cond_11

    .line 2598
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v6}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v3, Lorg/telegram/ui/ArticleViewer;->listTextNumPaint:Landroid/text/TextPaint;

    .line 2599
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 2601
    :cond_11
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->listTextPointerPaint:Landroid/text/TextPaint;

    const/16 v4, 0x13

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2602
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->listTextNumPaint:Landroid/text/TextPaint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v1, v2

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2603
    instance-of v1, v10, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    if-eqz v1, :cond_12

    move-object v1, v10

    check-cast v1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->access$6800(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->access$8700(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->ordered:Z

    if-nez v1, :cond_12

    .line 2604
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->listTextPointerPaint:Landroid/text/TextPaint;

    goto :goto_2

    .line 2606
    :cond_12
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->listTextNumPaint:Landroid/text/TextPaint;

    goto :goto_2

    .line 2609
    :cond_13
    invoke-direct {v7, v9, v9, v10}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v1

    :goto_2
    move-object v15, v1

    .line 2611
    invoke-virtual {v15}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v11, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z[II)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz p8, :cond_15

    .line 2614
    instance-of v3, v10, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-eqz v3, :cond_14

    .line 2615
    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget-object v20, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object v13, v0

    move-object v14, v15

    move/from16 v15, v21

    move/from16 v22, p8

    invoke-static/range {v13 .. v22}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v1

    goto :goto_3

    :cond_14
    const/high16 v17, 0x3f800000    # 1.0f

    .line 2617
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v19, 0x0

    sget-object v20, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object v13, v0

    move-object v14, v15

    move/from16 v15, v21

    move-object/from16 v16, p7

    move/from16 v18, v1

    move/from16 v22, p8

    invoke-static/range {v13 .. v22}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;II)Landroid/text/StaticLayout;

    move-result-object v1

    goto :goto_3

    .line 2620
    :cond_15
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v12, :cond_16

    .line 2621
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-interface {v0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2623
    :cond_16
    instance-of v3, v10, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-eqz v3, :cond_17

    .line 2624
    new-instance v1, Landroid/text/StaticLayout;

    sget-object v17, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v1

    move-object v14, v0

    move/from16 v16, v21

    invoke-direct/range {v13 .. v20}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto :goto_3

    .line 2626
    :cond_17
    new-instance v3, Landroid/text/StaticLayout;

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v20, 0x0

    move-object v13, v3

    move-object v14, v0

    move/from16 v16, v21

    move-object/from16 v17, p7

    move/from16 v19, v1

    invoke-direct/range {v13 .. v20}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v1, v3

    :goto_3
    if-nez v1, :cond_18

    return-object v11

    .line 2632
    :cond_18
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-ltz p5, :cond_1b

    .line 2636
    iget-object v4, v7, Lorg/telegram/ui/ArticleViewer;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b

    iget-object v4, v7, Lorg/telegram/ui/ArticleViewer;->searchText:Ljava/lang/String;

    if-eqz v4, :cond_1b

    .line 2637
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move v4, v2

    .line 2640
    :goto_4
    iget-object v5, v7, Lorg/telegram/ui/ArticleViewer;->searchText:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_1b

    .line 2641
    iget-object v5, v7, Lorg/telegram/ui/ArticleViewer;->searchText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    if-eqz v4, :cond_19

    add-int/lit8 v8, v4, -0x1

    .line 2642
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->isPunctuationCharacter(C)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 2643
    :cond_19
    iget-object v8, v7, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v8, v8, v2

    invoke-static {v8}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$1800(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v7, Lorg/telegram/ui/ArticleViewer;->searchText:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v4}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v4

    add-int v4, p5, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    move v4, v5

    goto :goto_4

    .line 2648
    :cond_1b
    instance-of v0, v3, Landroid/text/Spanned;

    if-eqz v0, :cond_28

    .line 2649
    check-cast v3, Landroid/text/Spanned;

    .line 2651
    :try_start_0
    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v4, Lorg/telegram/ui/Components/AnchorSpan;

    invoke-interface {v3, v2, v0, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/AnchorSpan;

    .line 2652
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    if-eqz v0, :cond_1d

    .line 2653
    array-length v5, v0

    if-lez v5, :cond_1d

    move v5, v2

    .line 2654
    :goto_5
    array-length v8, v0

    if-ge v5, v8, :cond_1d

    if-gt v4, v6, :cond_1c

    .line 2656
    invoke-static/range {p9 .. p9}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$3400(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object v8

    aget-object v12, v0, v5

    invoke-virtual {v12}, Lorg/telegram/ui/Components/AnchorSpan;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 2658
    :cond_1c
    invoke-static/range {p9 .. p9}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$3400(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object v8

    aget-object v12, v0, v5

    invoke-virtual {v12}, Lorg/telegram/ui/Components/AnchorSpan;->getName()Ljava/lang/String;

    move-result-object v12

    aget-object v13, v0, v5

    invoke-interface {v3, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v13

    invoke-virtual {v1, v13}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v13

    add-int v13, p5, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :catch_0
    :cond_1d
    const/4 v4, -0x2

    const/4 v5, 0x0

    .line 2666
    :try_start_1
    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v8

    const-class v12, Lorg/telegram/ui/Components/TextPaintWebpageUrlSpan;

    invoke-interface {v3, v2, v8, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/telegram/ui/Components/TextPaintWebpageUrlSpan;

    if-eqz v8, :cond_22

    .line 2667
    array-length v12, v8

    if-lez v12, :cond_22

    .line 2668
    new-instance v12, Lorg/telegram/ui/Components/LinkPath;

    invoke-direct {v12, v6}, Lorg/telegram/ui/Components/LinkPath;-><init>(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2669
    :try_start_2
    invoke-virtual {v12, v2}, Lorg/telegram/ui/Components/LinkPath;->setAllowReset(Z)V

    move v13, v2

    .line 2670
    :goto_7
    array-length v14, v8

    if-ge v13, v14, :cond_21

    .line 2671
    aget-object v14, v8, v13

    invoke-interface {v3, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    .line 2672
    aget-object v15, v8, v13

    invoke-interface {v3, v15}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    .line 2673
    invoke-virtual {v12, v1, v14, v5}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 2674
    aget-object v16, v8, v13

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Components/TextPaintUrlSpan;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v16

    if-eqz v16, :cond_1e

    aget-object v16, v8, v13

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Components/TextPaintUrlSpan;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    goto :goto_8

    :cond_1e
    move v0, v2

    :goto_8
    if-eqz v0, :cond_20

    if-lez v0, :cond_1f

    const/16 v16, 0x5

    goto :goto_9

    :cond_1f
    move/from16 v16, v4

    .line 2675
    :goto_9
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    add-int v0, v0, v16

    goto :goto_a

    :cond_20
    move v0, v2

    :goto_a
    invoke-virtual {v12, v0}, Lorg/telegram/ui/Components/LinkPath;->setBaselineShift(I)V

    .line 2676
    invoke-virtual {v1, v14, v15, v12}, Landroid/text/StaticLayout;->getSelectionPath(IILandroid/graphics/Path;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 2678
    :cond_21
    invoke-virtual {v12, v6}, Lorg/telegram/ui/Components/LinkPath;->setAllowReset(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_b

    :catch_1
    :cond_22
    move-object v12, v11

    .line 2684
    :catch_2
    :goto_b
    :try_start_3
    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v8, Lorg/telegram/ui/Components/TextPaintMarkSpan;

    invoke-interface {v3, v2, v0, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/Components/TextPaintMarkSpan;

    if-eqz v0, :cond_27

    .line 2685
    array-length v8, v0

    if-lez v8, :cond_27

    .line 2686
    new-instance v8, Lorg/telegram/ui/Components/LinkPath;

    invoke-direct {v8, v6}, Lorg/telegram/ui/Components/LinkPath;-><init>(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 2687
    :try_start_4
    invoke-virtual {v8, v2}, Lorg/telegram/ui/Components/LinkPath;->setAllowReset(Z)V

    move v11, v2

    .line 2688
    :goto_c
    array-length v13, v0

    if-ge v11, v13, :cond_26

    .line 2689
    aget-object v13, v0, v11

    invoke-interface {v3, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 2690
    aget-object v14, v0, v11

    invoke-interface {v3, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    .line 2691
    invoke-virtual {v8, v1, v13, v5}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 2692
    aget-object v15, v0, v11

    invoke-virtual {v15}, Lorg/telegram/ui/Components/TextPaintMarkSpan;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v15

    if-eqz v15, :cond_23

    aget-object v15, v0, v11

    invoke-virtual {v15}, Lorg/telegram/ui/Components/TextPaintMarkSpan;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v15

    iget v15, v15, Landroid/text/TextPaint;->baselineShift:I

    goto :goto_d

    :cond_23
    move v15, v2

    :goto_d
    if-eqz v15, :cond_25

    if-lez v15, :cond_24

    const/16 v16, 0x5

    goto :goto_e

    :cond_24
    move/from16 v16, v4

    .line 2693
    :goto_e
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v16

    add-int v15, v15, v16

    goto :goto_f

    :cond_25
    move v15, v2

    :goto_f
    invoke-virtual {v8, v15}, Lorg/telegram/ui/Components/LinkPath;->setBaselineShift(I)V

    .line 2694
    invoke-virtual {v1, v13, v14, v8}, Landroid/text/StaticLayout;->getSelectionPath(IILandroid/graphics/Path;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    .line 2696
    :cond_26
    invoke-virtual {v8, v6}, Lorg/telegram/ui/Components/LinkPath;->setAllowReset(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-object v11, v8

    :catch_4
    :cond_27
    move-object v0, v11

    move-object v11, v12

    goto :goto_10

    :cond_28
    move-object v0, v11

    .line 2702
    :goto_10
    new-instance v2, Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-direct {v2, v7}, Lorg/telegram/ui/ArticleViewer$DrawingText;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    .line 2703
    iput-object v1, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->textLayout:Landroid/text/StaticLayout;

    .line 2704
    iput-object v11, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->textPath:Lorg/telegram/ui/Components/LinkPath;

    .line 2705
    iput-object v0, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->markPath:Lorg/telegram/ui/Components/LinkPath;

    .line 2706
    iput-object v10, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 2707
    iput-object v9, v2, Lorg/telegram/ui/ArticleViewer$DrawingText;->parentText:Ljava/lang/Object;

    return-object v2
.end method

.method private createLayoutForText(Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;
    .locals 10

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    .line 2514
    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    return-object v0
.end method

.method private createLayoutForText(Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;
    .locals 10

    .line 2518
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;ILorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    return-object v0
.end method

.method private createPaint(Z)V
    .locals 6

    .line 1216
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 1217
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;

    .line 1219
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->preformattedBackgroundPaint:Landroid/graphics/Paint;

    .line 1221
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->tableLinePaint:Landroid/graphics/Paint;

    .line 1222
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1223
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->tableLinePaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1225
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->tableHalfLinePaint:Landroid/graphics/Paint;

    .line 1226
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1227
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->tableHalfLinePaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1229
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->tableHeaderPaint:Landroid/graphics/Paint;

    .line 1230
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->tableStripPaint:Landroid/graphics/Paint;

    .line 1232
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    .line 1233
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->webpageUrlPaint:Landroid/graphics/Paint;

    .line 1234
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->webpageSearchPaint:Landroid/graphics/Paint;

    .line 1235
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->photoBackgroundPaint:Landroid/graphics/Paint;

    .line 1236
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->dividerPaint:Landroid/graphics/Paint;

    .line 1237
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->webpageMarkPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 1242
    :cond_1
    :goto_0
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    const v0, 0x3e59b3d0    # 0.2126f

    .line 1243
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const v0, 0x3f371759    # 0.7152f

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    const v0, 0x3d93dd98    # 0.0722f

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    add-float/2addr v1, p1

    const/high16 p1, 0x437f0000    # 255.0f

    div-float/2addr v1, p1

    .line 1244
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->webpageSearchPaint:Landroid/graphics/Paint;

    const v0, 0x3f347ae1    # 0.705f

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_2

    const v0, -0x2e67d2

    goto :goto_1

    :cond_2
    const/16 v0, -0x1997

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1245
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->webpageUrlPaint:Landroid/graphics/Paint;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkSelection:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const v2, 0x33ffffff

    and-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1246
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->webpageUrlPaint:Landroid/graphics/Paint;

    invoke-static {}, Lorg/telegram/ui/Components/LinkPath;->getRoundedEffect()Landroid/graphics/CornerPathEffect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1247
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    and-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1248
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    invoke-static {}, Lorg/telegram/ui/Components/LinkPath;->getRoundedEffect()Landroid/graphics/CornerPathEffect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1249
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->tableHalfLinePaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputField:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1250
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->tableLinePaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1252
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoBackgroundPaint:Landroid/graphics/Paint;

    const/high16 v1, 0xf000000

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1253
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->dividerPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1254
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->webpageMarkPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    and-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1255
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->webpageMarkPaint:Landroid/graphics/Paint;

    invoke-static {}, Lorg/telegram/ui/Components/LinkPath;->getRoundedEffect()Landroid/graphics/CornerPathEffect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1257
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrack:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    .line 1258
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 1259
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 1260
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 1261
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->tableStripPaint:Landroid/graphics/Paint;

    const/16 v4, 0x14

    invoke-static {v4, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1262
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->tableHeaderPaint:Landroid/graphics/Paint;

    const/16 v5, 0x22

    invoke-static {v5, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1264
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    .line 1265
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 1266
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 1267
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 1268
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->preformattedBackgroundPaint:Landroid/graphics/Paint;

    invoke-static {v4, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1270
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private drawTextSelection(Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;)V
    .locals 1

    const/4 v0, 0x0

    .line 11501
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/ArticleViewer;->drawTextSelection(Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    return-void
.end method

.method private drawTextSelection(Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V
    .locals 2

    .line 11505
    move-object v0, p2

    check-cast v0, Landroid/view/View;

    .line 11506
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "bottomSheet"

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelperBottomSheet:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    if-eqz v0, :cond_0

    .line 11507
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->draw(Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    goto :goto_0

    .line 11509
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->draw(Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    :goto_0
    return-void
.end method

.method private fixListBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 1

    .line 1603
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    if-eqz v0, :cond_0

    .line 1604
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    .line 1605
    invoke-static {v0, p2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->access$6302(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    return-object p1

    .line 1607
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    if-eqz v0, :cond_1

    .line 1608
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    .line 1609
    invoke-static {v0, p2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6402(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    return-object p1

    :cond_1
    return-object p2
.end method

.method private getBlockCaption(Lorg/telegram/tgnet/TLRPC$PageBlock;I)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_5

    const/4 p2, 0x0

    .line 1445
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->getBlockCaption(Lorg/telegram/tgnet/TLRPC$PageBlock;I)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p2

    .line 1446
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-eqz v2, :cond_0

    move-object p2, v0

    .line 1449
    :cond_0
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/ArticleViewer;->getBlockCaption(Lorg/telegram/tgnet/TLRPC$PageBlock;I)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    .line 1450
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-eqz v1, :cond_1

    move-object p1, v0

    :cond_1
    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    return-object p2

    :cond_2
    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 1458
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_textPlain;-><init>()V

    const-string v1, " "

    .line 1459
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    .line 1461
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_textConcat;-><init>()V

    .line 1462
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1463
    iget-object p2, v1, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1464
    iget-object p2, v1, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_4
    return-object v0

    .line 1470
    :cond_5
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-eqz v2, :cond_7

    .line 1471
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-nez p2, :cond_6

    .line 1473
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    :cond_6
    if-ne p2, v1, :cond_18

    .line 1475
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    .line 1477
    :cond_7
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-eqz v2, :cond_9

    .line 1478
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-nez p2, :cond_8

    .line 1480
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    :cond_8
    if-ne p2, v1, :cond_18

    .line 1482
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    .line 1484
    :cond_9
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-eqz v2, :cond_b

    .line 1485
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-nez p2, :cond_a

    .line 1487
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    :cond_a
    if-ne p2, v1, :cond_18

    .line 1489
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    .line 1491
    :cond_b
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-eqz v2, :cond_d

    .line 1492
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-nez p2, :cond_c

    .line 1494
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    :cond_c
    if-ne p2, v1, :cond_18

    .line 1496
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    .line 1498
    :cond_d
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    if-eqz v2, :cond_f

    .line 1499
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    if-nez p2, :cond_e

    .line 1501
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    :cond_e
    if-ne p2, v1, :cond_18

    .line 1503
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    .line 1505
    :cond_f
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    if-eqz v2, :cond_10

    .line 1506
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    .line 1507
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    .line 1508
    :cond_10
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v2, :cond_12

    .line 1509
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-nez p2, :cond_11

    .line 1511
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    :cond_11
    if-ne p2, v1, :cond_18

    .line 1513
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    .line 1515
    :cond_12
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-eqz v2, :cond_13

    .line 1516
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    .line 1517
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    .line 1518
    :cond_13
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    if-eqz v2, :cond_15

    .line 1519
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    if-nez p2, :cond_14

    .line 1521
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    :cond_14
    if-ne p2, v1, :cond_18

    .line 1523
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    .line 1525
    :cond_15
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v2, :cond_16

    .line 1526
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    .line 1527
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->getBlockCaption(Lorg/telegram/tgnet/TLRPC$PageBlock;I)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    return-object p1

    .line 1528
    :cond_16
    instance-of v2, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    if-eqz v2, :cond_18

    .line 1529
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    if-nez p2, :cond_17

    .line 1531
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    :cond_17
    if-ne p2, v1, :cond_18

    .line 1533
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    return-object p1

    :cond_18
    return-object v0
.end method

.method private static getGrayTextColor()I
    .locals 1

    .line 2277
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lorg/telegram/ui/ArticleViewer;
    .locals 2

    .line 365
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    if-nez v0, :cond_1

    .line 367
    const-class v1, Lorg/telegram/ui/ArticleViewer;

    monitor-enter v1

    .line 368
    :try_start_0
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Lorg/telegram/ui/ArticleViewer;

    invoke-direct {v0}, Lorg/telegram/ui/ArticleViewer;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    .line 372
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getLastNonListCell(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1540
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;

    if-eqz v0, :cond_0

    .line 1541
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;

    .line 1542
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->access$6100(Lorg/telegram/ui/ArticleViewer$BlockListItemCell;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1543
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->access$6100(Lorg/telegram/ui/ArticleViewer$BlockListItemCell;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastNonListCell(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 1545
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;

    if-eqz v0, :cond_1

    .line 1546
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;

    .line 1547
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->access$6200(Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1548
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->access$6200(Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastNonListCell(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private getLastNonListPageBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 1

    .line 1559
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    if-eqz v0, :cond_1

    .line 1560
    check-cast p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    .line 1561
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->access$6300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1562
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->access$6300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastNonListPageBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    return-object p1

    .line 1564
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->access$6300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    return-object p1

    .line 1566
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    if-eqz v0, :cond_3

    .line 1567
    check-cast p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    .line 1568
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1569
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastNonListPageBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    return-object p1

    .line 1571
    :cond_2
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2038
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz v0, :cond_1

    .line 2039
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    return-object p1

    .line 2040
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz v0, :cond_2

    .line 2041
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    return-object p1

    .line 2042
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz v0, :cond_3

    .line 2043
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textBold;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    return-object p1

    .line 2044
    :cond_3
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz v0, :cond_4

    .line 2045
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    return-object p1

    .line 2046
    :cond_4
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz v0, :cond_5

    .line 2047
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    return-object p1

    .line 2048
    :cond_5
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    if-eqz v0, :cond_6

    .line 2049
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    return-object p1

    .line 2050
    :cond_6
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v0, :cond_7

    .line 2051
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textUrl;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    return-object p1

    .line 2052
    :cond_7
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;

    if-eqz v0, :cond_8

    .line 2053
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    goto :goto_0

    .line 2054
    :cond_8
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;

    if-eqz v0, :cond_9

    .line 2055
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    return-object p1

    .line 2056
    :cond_9
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;

    if-eqz v0, :cond_a

    .line 2057
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    return-object p1

    .line 2058
    :cond_a
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textMarked;

    if-eqz v0, :cond_b

    .line 2059
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textMarked;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textMarked;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    return-object p1

    .line 2060
    :cond_b
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    if-eqz v0, :cond_c

    .line 2061
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textPhone;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    :try_start_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_c
    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    throw p1
.end method

.method private getLinkTextColor()I
    .locals 1

    .line 2273
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;
    .locals 4

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 2206
    :cond_0
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz v1, :cond_1

    .line 2207
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_textFixed;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2208
    :cond_1
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz v1, :cond_2

    .line 2209
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_textItalic;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2210
    :cond_2
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz v1, :cond_3

    .line 2211
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_textBold;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2212
    :cond_3
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz v1, :cond_4

    .line 2213
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2214
    :cond_4
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz v1, :cond_5

    .line 2215
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_textStrike;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2216
    :cond_5
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    if-eqz v1, :cond_6

    .line 2217
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_textEmail;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2218
    :cond_6
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v1, :cond_7

    .line 2219
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2220
    :cond_7
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    if-eqz v1, :cond_8

    .line 2221
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    return-object p0

    .line 2222
    :cond_8
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;

    if-eqz v1, :cond_9

    .line 2223
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2224
    :cond_9
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-eqz v1, :cond_a

    return-object v0

    .line 2226
    :cond_a
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    if-eqz v1, :cond_c

    .line 2227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2228
    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_b

    .line 2230
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_b
    return-object v0

    .line 2233
    :cond_c
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;

    if-eqz v1, :cond_d

    .line 2234
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2235
    :cond_d
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;

    if-eqz v1, :cond_e

    .line 2236
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2237
    :cond_e
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textMarked;

    if-eqz v1, :cond_f

    .line 2238
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textMarked;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_textMarked;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 2239
    :cond_f
    instance-of v1, p0, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    if-eqz v1, :cond_10

    .line 2240
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_textPhone;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    :try_start_0
    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 2241
    :cond_10
    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_textImage;

    return-object v0

    :catchall_0
    move-exception p0

    .line 2240
    throw p0
.end method

.method private getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;
    .locals 26

    move-object/from16 v8, p0

    move-object/from16 v0, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    const/4 v11, 0x0

    if-nez v9, :cond_0

    return-object v11

    .line 2074
    :cond_0
    instance-of v1, v9, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz v1, :cond_1

    .line 2075
    move-object v1, v9

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2076
    :cond_1
    instance-of v1, v9, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz v1, :cond_2

    .line 2077
    move-object v1, v9

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2078
    :cond_2
    instance-of v1, v9, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz v1, :cond_3

    .line 2079
    move-object v1, v9

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_textBold;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2080
    :cond_3
    instance-of v1, v9, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz v1, :cond_4

    .line 2081
    move-object v1, v9

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2082
    :cond_4
    instance-of v1, v9, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz v1, :cond_5

    .line 2083
    move-object v1, v9

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2084
    :cond_5
    instance-of v1, v9, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    const/16 v12, 0x21

    const/4 v13, 0x0

    if-eqz v1, :cond_9

    .line 2085
    new-instance v14, Landroid/text/SpannableStringBuilder;

    move-object v1, v9

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v14, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2086
    invoke-virtual {v14}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Landroid/text/style/MetricAffectingSpan;

    invoke-virtual {v14, v13, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/MetricAffectingSpan;

    .line 2087
    invoke-virtual {v14}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_8

    .line 2088
    new-instance v2, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    if-eqz v1, :cond_6

    array-length v1, v1

    if-nez v1, :cond_7

    :cond_6
    invoke-direct {v8, v0, v9, v10}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v11

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v11, v0}, Lorg/telegram/ui/Components/TextPaintUrlSpan;-><init>(Landroid/text/TextPaint;Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v14, v2, v13, v0, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    return-object v14

    .line 2091
    :cond_9
    instance-of v1, v9, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    const-wide/16 v14, 0x0

    if-eqz v1, :cond_e

    .line 2092
    move-object v7, v9

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    .line 2093
    new-instance v6, Landroid/text/SpannableStringBuilder;

    iget-object v5, v7, Lorg/telegram/tgnet/TLRPC$TL_textUrl;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v11, v6

    move-object/from16 v6, p5

    move-object v12, v7

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v11, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2094
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Landroid/text/style/MetricAffectingSpan;

    invoke-virtual {v11, v13, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/MetricAffectingSpan;

    if-eqz v1, :cond_b

    .line 2095
    array-length v1, v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    goto :goto_1

    :cond_b
    :goto_0
    invoke-direct {v8, v0, v9, v10}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v0

    .line 2097
    :goto_1
    iget-wide v1, v12, Lorg/telegram/tgnet/TLRPC$RichText;->webpage_id:J

    cmp-long v1, v1, v14

    if-eqz v1, :cond_c

    .line 2098
    new-instance v1, Lorg/telegram/ui/Components/TextPaintWebpageUrlSpan;

    invoke-static/range {p4 .. p4}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/TextPaintWebpageUrlSpan;-><init>(Landroid/text/TextPaint;Ljava/lang/String;)V

    goto :goto_2

    .line 2100
    :cond_c
    new-instance v1, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    invoke-static/range {p4 .. p4}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/TextPaintUrlSpan;-><init>(Landroid/text/TextPaint;Ljava/lang/String;)V

    .line 2102
    :goto_2
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_d

    .line 2103
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v2, 0x21

    invoke-virtual {v11, v1, v13, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_d
    return-object v11

    .line 2106
    :cond_e
    instance-of v1, v9, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    if-eqz v1, :cond_f

    .line 2107
    move-object v0, v9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    return-object v0

    .line 2108
    :cond_f
    instance-of v1, v9, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;

    if-eqz v1, :cond_10

    .line 2109
    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;

    .line 2110
    new-instance v11, Landroid/text/SpannableStringBuilder;

    iget-object v5, v9, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2111
    new-instance v0, Lorg/telegram/ui/Components/AnchorSpan;

    iget-object v1, v9, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/AnchorSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v2, 0x11

    invoke-virtual {v11, v0, v13, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v11

    .line 2113
    :cond_10
    instance-of v1, v9, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    const-string v2, ""

    if-eqz v1, :cond_11

    return-object v2

    .line 2115
    :cond_11
    instance-of v1, v9, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    const/4 v11, 0x1

    if-eqz v1, :cond_1b

    .line 2116
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2117
    iget-object v1, v9, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v13

    :goto_3
    if-ge v6, v7, :cond_1a

    .line 2119
    iget-object v1, v9, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$RichText;

    .line 2120
    invoke-direct {v8, v5}, Lorg/telegram/ui/ArticleViewer;->getLastRichText(Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v4

    if-ltz p6, :cond_12

    .line 2121
    instance-of v1, v5, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v1, :cond_12

    move-object v1, v5

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$RichText;->webpage_id:J

    cmp-long v1, v1, v14

    if-eqz v1, :cond_12

    move/from16 v16, v11

    goto :goto_4

    :cond_12
    move/from16 v16, v13

    :goto_4
    const-string v3, " "

    if-eqz v16, :cond_13

    .line 2122
    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v11

    invoke-virtual {v12, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_13

    .line 2123
    invoke-virtual {v12, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2124
    new-instance v1, Lorg/telegram/ui/Cells/TextSelectionHelper$IgnoreCopySpannable;

    invoke-direct {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$IgnoreCopySpannable;-><init>()V

    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    const/16 v15, 0x21

    invoke-virtual {v12, v1, v2, v14, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_13
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v14, v3

    move-object/from16 v3, p2

    move-object v15, v4

    move-object/from16 v4, p3

    move-object/from16 v17, v5

    move v13, v6

    move-object/from16 v6, p5

    move/from16 v18, v7

    move/from16 v7, p6

    .line 2127
    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2128
    invoke-direct {v8, v15}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v2

    .line 2129
    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 2130
    invoke-virtual {v12, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_18

    .line 2131
    instance-of v1, v1, Landroid/text/SpannableStringBuilder;

    if-nez v1, :cond_18

    and-int/lit8 v1, v2, 0x8

    if-nez v1, :cond_15

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_14

    goto :goto_5

    .line 2147
    :cond_14
    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-eq v3, v1, :cond_18

    .line 2148
    new-instance v1, Lorg/telegram/ui/Components/TextPaintSpan;

    invoke-direct {v8, v0, v15, v10}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/TextPaintSpan;-><init>(Landroid/text/TextPaint;)V

    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v4, 0x21

    invoke-virtual {v12, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_7

    .line 2133
    :cond_15
    :goto_5
    invoke-static/range {v17 .. v17}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    .line 2135
    invoke-static/range {p3 .. p3}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v1

    :cond_16
    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_17

    .line 2139
    new-instance v2, Lorg/telegram/ui/Components/TextPaintWebpageUrlSpan;

    invoke-direct {v8, v0, v15, v10}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lorg/telegram/ui/Components/TextPaintWebpageUrlSpan;-><init>(Landroid/text/TextPaint;Ljava/lang/String;)V

    goto :goto_6

    .line 2141
    :cond_17
    new-instance v2, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    invoke-direct {v8, v0, v15, v10}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Lorg/telegram/ui/Components/TextPaintUrlSpan;-><init>(Landroid/text/TextPaint;Ljava/lang/String;)V

    .line 2143
    :goto_6
    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-eq v3, v1, :cond_18

    .line 2144
    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v4, 0x21

    invoke-virtual {v12, v2, v3, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_18
    :goto_7
    if-eqz v16, :cond_19

    add-int/lit8 v7, v18, -0x1

    if-eq v13, v7, :cond_19

    .line 2153
    invoke-virtual {v12, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2154
    new-instance v1, Lorg/telegram/ui/Cells/TextSelectionHelper$IgnoreCopySpannable;

    invoke-direct {v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$IgnoreCopySpannable;-><init>()V

    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v11

    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v12, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_19
    add-int/lit8 v6, v13, 0x1

    move/from16 v7, v18

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    goto/16 :goto_3

    :cond_1a
    return-object v12

    .line 2158
    :cond_1b
    instance-of v1, v9, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;

    if-eqz v1, :cond_1c

    .line 2159
    move-object v1, v9

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2160
    :cond_1c
    instance-of v1, v9, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;

    if-eqz v1, :cond_1d

    .line 2161
    move-object v1, v9

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2162
    :cond_1d
    instance-of v1, v9, Lorg/telegram/tgnet/TLRPC$TL_textMarked;

    if-eqz v1, :cond_21

    .line 2163
    new-instance v11, Landroid/text/SpannableStringBuilder;

    move-object v1, v9

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_textMarked;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_textMarked;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v11, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2164
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Landroid/text/style/MetricAffectingSpan;

    const/4 v3, 0x0

    invoke-virtual {v11, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/MetricAffectingSpan;

    .line 2165
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_20

    .line 2166
    new-instance v2, Lorg/telegram/ui/Components/TextPaintMarkSpan;

    if-eqz v1, :cond_1f

    array-length v1, v1

    if-nez v1, :cond_1e

    goto :goto_8

    :cond_1e
    const/4 v0, 0x0

    goto :goto_9

    :cond_1f
    :goto_8
    invoke-direct {v8, v0, v9, v10}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v0

    :goto_9
    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/TextPaintMarkSpan;-><init>(Landroid/text/TextPaint;)V

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v1, 0x21

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_20
    return-object v11

    .line 2169
    :cond_21
    instance-of v1, v9, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    if-eqz v1, :cond_25

    .line 2170
    new-instance v11, Landroid/text/SpannableStringBuilder;

    move-object v1, v9

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_textPhone;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    :try_start_0
    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {v11, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2171
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Landroid/text/style/MetricAffectingSpan;

    const/4 v3, 0x0

    invoke-virtual {v11, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/MetricAffectingSpan;

    .line 2172
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_24

    .line 2173
    new-instance v2, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    if-eqz v1, :cond_23

    array-length v1, v1

    if-nez v1, :cond_22

    goto :goto_a

    :cond_22
    const/4 v0, 0x0

    goto :goto_b

    :cond_23
    :goto_a
    invoke-direct {v8, v0, v9, v10}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v0

    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p4}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/TextPaintUrlSpan;-><init>(Landroid/text/TextPaint;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v1, 0x21

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_24
    return-object v11

    .line 2176
    :cond_25
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_textImage;

    if-eqz v0, :cond_29

    .line 2177
    move-object v0, v9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textImage;

    .line 2178
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->document_id:J

    move-object/from16 v1, p1

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/ArticleViewer$WebPageUtils;->getDocumentWithId(Lorg/telegram/tgnet/TLRPC$WebPage;J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v20

    if-eqz v20, :cond_28

    .line 2180
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v3, "*"

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2181
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->w:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 2182
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textImage;->h:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 2183
    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v3, v4, :cond_26

    int-to-float v5, v4

    int-to-float v3, v3

    div-float/2addr v5, v3

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v22, v4

    goto :goto_c

    :cond_26
    move/from16 v23, v0

    move/from16 v22, v3

    :goto_c
    if-eqz p2, :cond_28

    .line 2190
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const v3, 0x3e59b3d0    # 0.2126f

    .line 2191
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    const v3, 0x3f371759    # 0.7152f

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    const v3, 0x3d93dd98    # 0.0722f

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v4, v0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr v4, v0

    .line 2192
    new-instance v0, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;

    const/16 v24, 0x0

    const v3, 0x3f347ae1    # 0.705f

    cmpg-float v3, v4, v3

    if-gtz v3, :cond_27

    move/from16 v25, v11

    goto :goto_d

    :cond_27
    const/16 v25, 0x0

    :goto_d
    move-object/from16 v18, v0

    move-object/from16 v19, p2

    move-object/from16 v21, p1

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/Components/TextPaintImageReceiverSpan;-><init>(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;IIZZ)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_28
    return-object v2

    .line 2199
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not supported "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 2170
    throw v1
.end method

.method private getText(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;
    .locals 7

    .line 2067
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private getTextColor()I
    .locals 1

    .line 2269
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    return v0
.end method

.method private getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I
    .locals 4

    .line 2001
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz v0, :cond_0

    .line 2002
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit8 p1, p1, 0x4

    return p1

    .line 2003
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz v0, :cond_1

    .line 2004
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit8 p1, p1, 0x2

    return p1

    .line 2005
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz v0, :cond_2

    .line 2006
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit8 p1, p1, 0x1

    return p1

    .line 2007
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz v0, :cond_3

    .line 2008
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit8 p1, p1, 0x10

    return p1

    .line 2009
    :cond_3
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz v0, :cond_4

    .line 2010
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit8 p1, p1, 0x20

    return p1

    .line 2011
    :cond_4
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    if-eqz v0, :cond_5

    .line 2012
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit8 p1, p1, 0x8

    return p1

    .line 2013
    :cond_5
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    if-eqz v0, :cond_6

    .line 2014
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit8 p1, p1, 0x8

    return p1

    .line 2015
    :cond_6
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v0, :cond_8

    .line 2016
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    .line 2017
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$RichText;->webpage_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 2018
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit16 p1, p1, 0x200

    return p1

    .line 2020
    :cond_7
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit8 p1, p1, 0x8

    return p1

    .line 2022
    :cond_8
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;

    if-eqz v0, :cond_9

    .line 2023
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit16 p1, p1, 0x80

    return p1

    .line 2024
    :cond_9
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;

    if-eqz v0, :cond_a

    .line 2025
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit16 p1, p1, 0x100

    return p1

    .line 2026
    :cond_a
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textMarked;

    if-eqz v0, :cond_b

    .line 2027
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1

    or-int/lit8 p1, p1, 0x40

    return p1

    :cond_b
    if-eqz p1, :cond_c

    .line 2029
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    :try_start_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    throw p1
.end method

.method private getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;
    .locals 10

    .line 2281
    invoke-direct {p0, p2}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    const/16 v1, 0xe

    .line 2283
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 2286
    sget v3, Lorg/telegram/messenger/SharedConfig;->ivFontSize:I

    const/16 v4, 0x10

    sub-int/2addr v3, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 2288
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    const/high16 v6, -0x10000

    const/16 v7, 0xc

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    .line 2289
    move-object v2, p3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    .line 2290
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eq v2, p2, :cond_1

    if-ne v2, p1, :cond_0

    goto :goto_0

    .line 2294
    :cond_0
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCreditTextPaints:Landroid/util/SparseArray;

    .line 2295
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    goto :goto_1

    .line 2291
    :cond_1
    :goto_0
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    .line 2292
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    :goto_1
    move-object v8, p1

    move v2, p2

    .line 2297
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p1

    goto/16 :goto_c

    .line 2298
    :cond_2
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    if-eqz v5, :cond_5

    .line 2299
    move-object v2, p3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    .line 2300
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eq v2, p2, :cond_4

    if-ne v2, p1, :cond_3

    goto :goto_2

    .line 2304
    :cond_3
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCreditTextPaints:Landroid/util/SparseArray;

    .line 2305
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    goto :goto_3

    .line 2301
    :cond_4
    :goto_2
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    .line 2302
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    :goto_3
    move-object v8, p1

    move v2, p2

    .line 2307
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p1

    goto/16 :goto_c

    .line 2308
    :cond_5
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-eqz v5, :cond_6

    .line 2309
    sget-object v8, Lorg/telegram/ui/ArticleViewer;->titleTextPaints:Landroid/util/SparseArray;

    const/16 p1, 0x17

    .line 2310
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 2311
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p1

    goto/16 :goto_c

    .line 2312
    :cond_6
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;

    if-eqz v5, :cond_7

    .line 2313
    sget-object v8, Lorg/telegram/ui/ArticleViewer;->kickerTextPaints:Landroid/util/SparseArray;

    .line 2314
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 2315
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p1

    goto/16 :goto_c

    .line 2316
    :cond_7
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    if-eqz v5, :cond_8

    .line 2317
    sget-object v8, Lorg/telegram/ui/ArticleViewer;->authorTextPaints:Landroid/util/SparseArray;

    .line 2318
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 2319
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p1

    goto/16 :goto_c

    .line 2320
    :cond_8
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    if-eqz v5, :cond_9

    .line 2321
    sget-object v8, Lorg/telegram/ui/ArticleViewer;->footerTextPaints:Landroid/util/SparseArray;

    .line 2322
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 2323
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p1

    goto/16 :goto_c

    .line 2324
    :cond_9
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    const/16 v9, 0x14

    if-eqz v5, :cond_a

    .line 2325
    sget-object v8, Lorg/telegram/ui/ArticleViewer;->subtitleTextPaints:Landroid/util/SparseArray;

    .line 2326
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 2327
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p1

    goto/16 :goto_c

    .line 2328
    :cond_a
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-eqz v5, :cond_b

    .line 2329
    sget-object v8, Lorg/telegram/ui/ArticleViewer;->headerTextPaints:Landroid/util/SparseArray;

    .line 2330
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 2331
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p1

    goto/16 :goto_c

    .line 2332
    :cond_b
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    if-eqz v5, :cond_c

    .line 2333
    sget-object v8, Lorg/telegram/ui/ArticleViewer;->subheaderTextPaints:Landroid/util/SparseArray;

    const/16 p1, 0x11

    .line 2334
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 2335
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p1

    goto/16 :goto_c

    .line 2336
    :cond_c
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    const/16 v9, 0xf

    if-eqz v5, :cond_e

    .line 2337
    move-object p2, p3

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    .line 2338
    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne v5, p1, :cond_d

    .line 2339
    sget-object v8, Lorg/telegram/ui/ArticleViewer;->quoteTextPaints:Landroid/util/SparseArray;

    .line 2340
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 2341
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p1

    goto/16 :goto_c

    .line 2342
    :cond_d
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne p2, p1, :cond_26

    .line 2343
    sget-object v8, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    .line 2344
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 2345
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p1

    goto/16 :goto_c

    .line 2347
    :cond_e
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-eqz v5, :cond_10

    .line 2348
    move-object p2, p3

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    .line 2349
    iget-object v5, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne v5, p1, :cond_f

    .line 2350
    sget-object v8, Lorg/telegram/ui/ArticleViewer;->quoteTextPaints:Landroid/util/SparseArray;

    .line 2351
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 2352
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p1

    goto/16 :goto_c

    .line 2353
    :cond_f
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne p2, p1, :cond_26

    .line 2354
    sget-object v8, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    .line 2355
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 2356
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p1

    goto/16 :goto_c

    .line 2358
    :cond_10
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    if-eqz v5, :cond_11

    .line 2359
    sget-object v8, Lorg/telegram/ui/ArticleViewer;->preformattedTextPaints:Landroid/util/SparseArray;

    .line 2360
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 2361
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p1

    goto/16 :goto_c

    .line 2362
    :cond_11
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    if-eqz v5, :cond_12

    .line 2363
    sget-object v8, Lorg/telegram/ui/ArticleViewer;->paragraphTextPaints:Landroid/util/SparseArray;

    .line 2364
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 2365
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p1

    goto/16 :goto_c

    .line 2366
    :cond_12
    invoke-direct {p0, p3}, Lorg/telegram/ui/ArticleViewer;->isListItemBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2367
    sget-object v8, Lorg/telegram/ui/ArticleViewer;->listTextPaints:Landroid/util/SparseArray;

    .line 2368
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 2369
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p1

    goto/16 :goto_c

    .line 2370
    :cond_13
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    if-eqz v5, :cond_16

    .line 2371
    move-object v2, p3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    .line 2372
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eq v2, p2, :cond_15

    if-ne v2, p1, :cond_14

    goto :goto_4

    .line 2376
    :cond_14
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCreditTextPaints:Landroid/util/SparseArray;

    .line 2377
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    goto :goto_5

    .line 2373
    :cond_15
    :goto_4
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    .line 2374
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    :goto_5
    move-object v8, p1

    move v2, p2

    .line 2379
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p1

    goto/16 :goto_c

    .line 2380
    :cond_16
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-eqz v5, :cond_19

    .line 2381
    move-object v2, p3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    .line 2382
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eq v2, p2, :cond_18

    if-ne v2, p1, :cond_17

    goto :goto_6

    .line 2386
    :cond_17
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCreditTextPaints:Landroid/util/SparseArray;

    .line 2387
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    goto :goto_7

    .line 2383
    :cond_18
    :goto_6
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    .line 2384
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    :goto_7
    move-object v8, p1

    move v2, p2

    .line 2389
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p1

    goto/16 :goto_c

    .line 2390
    :cond_19
    instance-of v5, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-eqz v5, :cond_1c

    .line 2391
    move-object v2, p3

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    .line 2392
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-eq v2, p2, :cond_1b

    if-ne v2, p1, :cond_1a

    goto :goto_8

    .line 2396
    :cond_1a
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCreditTextPaints:Landroid/util/SparseArray;

    .line 2397
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    goto :goto_9

    .line 2393
    :cond_1b
    :goto_8
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    .line 2394
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    :goto_9
    move-object v8, p1

    move v2, p2

    .line 2399
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p1

    goto/16 :goto_c

    .line 2400
    :cond_1c
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-eqz p1, :cond_1f

    .line 2401
    move-object p1, p3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    .line 2402
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne p2, v5, :cond_1d

    .line 2403
    sget-object v8, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    .line 2404
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 2405
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p1

    goto/16 :goto_c

    .line 2406
    :cond_1d
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne p2, p1, :cond_1e

    .line 2407
    sget-object v8, Lorg/telegram/ui/ArticleViewer;->photoCreditTextPaints:Landroid/util/SparseArray;

    .line 2408
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 2409
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p1

    goto/16 :goto_c

    :cond_1e
    if-eqz p2, :cond_26

    .line 2411
    sget-object v8, Lorg/telegram/ui/ArticleViewer;->embedPostTextPaints:Landroid/util/SparseArray;

    .line 2412
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 2413
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p1

    goto/16 :goto_c

    .line 2415
    :cond_1f
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz p1, :cond_21

    .line 2416
    move-object p1, p3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    .line 2417
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne p2, p1, :cond_20

    .line 2418
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->mediaCaptionTextPaints:Landroid/util/SparseArray;

    .line 2419
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    goto :goto_a

    .line 2421
    :cond_20
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->mediaCreditTextPaints:Landroid/util/SparseArray;

    .line 2422
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    :goto_a
    move-object v8, p1

    move v2, p2

    .line 2424
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p1

    goto :goto_c

    .line 2425
    :cond_21
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    if-eqz p1, :cond_23

    .line 2426
    move-object p1, p3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    .line 2427
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne p2, p1, :cond_22

    .line 2428
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->mediaCaptionTextPaints:Landroid/util/SparseArray;

    .line 2429
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    goto :goto_b

    .line 2431
    :cond_22
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->mediaCreditTextPaints:Landroid/util/SparseArray;

    .line 2432
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    :goto_b
    move-object v8, p1

    move v2, p2

    .line 2434
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p1

    goto :goto_c

    .line 2435
    :cond_23
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    if-eqz p1, :cond_24

    .line 2436
    sget-object v8, Lorg/telegram/ui/ArticleViewer;->relatedArticleTextPaints:Landroid/util/SparseArray;

    .line 2437
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 2438
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result p1

    goto :goto_c

    .line 2439
    :cond_24
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    if-eqz p1, :cond_25

    .line 2440
    sget-object v8, Lorg/telegram/ui/ArticleViewer;->detailsTextPaints:Landroid/util/SparseArray;

    .line 2441
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 2442
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p1

    goto :goto_c

    .line 2443
    :cond_25
    instance-of p1, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    if-eqz p1, :cond_26

    .line 2444
    sget-object v8, Lorg/telegram/ui/ArticleViewer;->tableTextPaints:Landroid/util/SparseArray;

    .line 2445
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 2446
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result p1

    goto :goto_c

    :cond_26
    move p1, v6

    :goto_c
    and-int/lit16 p2, v0, 0x100

    if-nez p2, :cond_27

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_28

    :cond_27
    const/4 v5, 0x4

    .line 2449
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v2, v5

    :cond_28
    const/4 v5, 0x1

    if-nez v8, :cond_2a

    .line 2452
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->errorTextPaint:Landroid/text/TextPaint;

    if-nez p1, :cond_29

    .line 2453
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v5}, Landroid/text/TextPaint;-><init>(I)V

    sput-object p1, Lorg/telegram/ui/ArticleViewer;->errorTextPaint:Landroid/text/TextPaint;

    .line 2454
    invoke-virtual {p1, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 2456
    :cond_29
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->errorTextPaint:Landroid/text/TextPaint;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2457
    sget-object p1, Lorg/telegram/ui/ArticleViewer;->errorTextPaint:Landroid/text/TextPaint;

    return-object p1

    .line 2459
    :cond_2a
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextPaint;

    if-nez v1, :cond_3d

    .line 2461
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, v5}, Landroid/text/TextPaint;-><init>(I)V

    and-int/lit8 v6, v0, 0x4

    if-eqz v6, :cond_2b

    const-string p3, "fonts/rmono.ttf"

    .line 2463
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_f

    .line 2465
    :cond_2b
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    const-string v7, "fonts/rmedium.ttf"

    if-eqz v6, :cond_2c

    .line 2466
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_f

    .line 2467
    :cond_2c
    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    if-eq v6, v5, :cond_30

    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-nez v6, :cond_30

    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;

    if-nez v6, :cond_30

    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-nez v6, :cond_30

    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    if-nez v6, :cond_30

    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    if-eqz v6, :cond_2d

    goto :goto_d

    :cond_2d
    and-int/lit8 p3, v0, 0x1

    if-eqz p3, :cond_2e

    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_2e

    const-string p3, "fonts/rmediumitalic.ttf"

    .line 2483
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_f

    :cond_2e
    if-eqz p3, :cond_2f

    .line 2485
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_f

    :cond_2f
    and-int/lit8 p3, v0, 0x2

    if-eqz p3, :cond_36

    const-string p3, "fonts/ritalic.ttf"

    .line 2487
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_f

    .line 2468
    :cond_30
    :goto_d
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-nez v6, :cond_35

    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-nez v6, :cond_35

    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    if-nez v6, :cond_35

    instance-of p3, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    if-eqz p3, :cond_31

    goto :goto_e

    :cond_31
    and-int/lit8 p3, v0, 0x1

    const-string v6, "serif"

    if-eqz p3, :cond_32

    and-int/lit8 v7, v0, 0x2

    if-eqz v7, :cond_32

    const/4 p3, 0x3

    .line 2472
    invoke-static {v6, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_f

    :cond_32
    if-eqz p3, :cond_33

    .line 2474
    invoke-static {v6, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_f

    :cond_33
    and-int/lit8 p3, v0, 0x2

    if-eqz p3, :cond_34

    const/4 p3, 0x2

    .line 2476
    invoke-static {v6, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_f

    :cond_34
    const/4 p3, 0x0

    .line 2478
    invoke-static {v6, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_f

    :cond_35
    :goto_e
    const-string p3, "fonts/mw_bold.ttf"

    .line 2469
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_36
    :goto_f
    and-int/lit8 p3, v0, 0x20

    if-eqz p3, :cond_37

    .line 2492
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result p3

    or-int/2addr p3, v4

    invoke-virtual {v1, p3}, Landroid/text/TextPaint;->setFlags(I)V

    :cond_37
    and-int/lit8 p3, v0, 0x10

    if-eqz p3, :cond_38

    .line 2495
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result p3

    or-int/lit8 p3, p3, 0x8

    invoke-virtual {v1, p3}, Landroid/text/TextPaint;->setFlags(I)V

    :cond_38
    and-int/lit8 p3, v0, 0x8

    if-nez p3, :cond_39

    and-int/lit16 p3, v0, 0x200

    if-eqz p3, :cond_3a

    .line 2498
    :cond_39
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 2499
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getLinkTextColor()I

    move-result p1

    :cond_3a
    if-eqz p2, :cond_3b

    .line 2502
    iget p2, v1, Landroid/text/TextPaint;->baselineShift:I

    const/high16 p3, 0x40c00000    # 6.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, v1, Landroid/text/TextPaint;->baselineShift:I

    goto :goto_10

    :cond_3b
    and-int/lit16 p2, v0, 0x80

    if-eqz p2, :cond_3c

    .line 2504
    iget p2, v1, Landroid/text/TextPaint;->baselineShift:I

    const/high16 p3, 0x40000000    # 2.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr p2, p3

    iput p2, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 2506
    :cond_3c
    :goto_10
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2507
    invoke-virtual {v8, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3d
    add-int/2addr v2, v3

    int-to-float p1, v2

    .line 2509
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-object v1
.end method

.method public static getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;
    .locals 1

    .line 2248
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz v0, :cond_0

    .line 2249
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_textFixed;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2250
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz v0, :cond_1

    .line 2251
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_textItalic;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2252
    :cond_1
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz v0, :cond_2

    .line 2253
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_textBold;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2254
    :cond_2
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz v0, :cond_3

    .line 2255
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2256
    :cond_3
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz v0, :cond_4

    .line 2257
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_textStrike;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    :try_start_0
    invoke-static {p0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 2258
    :cond_4
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    if-eqz v0, :cond_5

    .line 2259
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->email:Ljava/lang/String;

    return-object p0

    .line 2260
    :cond_5
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v0, :cond_6

    .line 2261
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$RichText;->url:Ljava/lang/String;

    return-object p0

    .line 2262
    :cond_6
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    if-eqz v0, :cond_7

    .line 2263
    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_textPhone;->phone:Ljava/lang/String;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    .line 2257
    throw p0
.end method

.method public static hasInstance()Z
    .locals 1

    .line 378
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isListItemBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z
    .locals 1

    .line 1555
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    if-nez v0, :cond_1

    instance-of p1, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

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

.method private joinChannel(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 9

    .line 4917
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;-><init>()V

    .line 4918
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 4919
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 4920
    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda38;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;ILorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v7, v6, v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$checkScrollAnimated$32(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 4230
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->setCurrentHeaderHeight(I)V

    return-void
.end method

.method private synthetic lambda$close$39()V
    .locals 4

    .line 4828
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 4831
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    .line 4832
    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4834
    :cond_1
    iput v3, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    .line 4835
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->onClosed()V

    return-void
.end method

.method private synthetic lambda$joinChannel$43(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;)V
    .locals 3

    const/4 v0, 0x0

    .line 4923
    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    .line 4924
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v0

    invoke-static {p2, p3, p1, p4, v1}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method private static synthetic lambda$joinChannel$44(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 4943
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    return-void
.end method

.method private static synthetic lambda$joinChannel$45(ILorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 3

    .line 4944
    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    return-void
.end method

.method private synthetic lambda$joinChannel$46(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;ILorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    if-eqz p6, :cond_0

    .line 4922
    new-instance p4, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda33;

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p6

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$BlockChannelCell;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_channels_joinChannel;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 4929
    :cond_0
    check-cast p5, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 p3, 0x0

    move p6, p3

    .line 4930
    :goto_0
    iget-object v0, p5, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p6, v0, :cond_2

    .line 4931
    iget-object v0, p5, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Update;

    .line 4932
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    if-eqz v2, :cond_1

    .line 4933
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    if-eqz v0, :cond_1

    move p6, v1

    goto :goto_1

    :cond_1
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_2
    move p6, p3

    .line 4939
    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p5, p3}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    if-nez p6, :cond_3

    .line 4941
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide p5, p4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p3, p5, p6, v1}, Lorg/telegram/messenger/MessagesController;->generateJoinMessage(JZ)V

    .line 4943
    :cond_3
    new-instance p3, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda20;

    invoke-direct {p3, p1}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4944
    new-instance p1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda19;

    invoke-direct {p1, p2, p4}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda19;-><init>(ILorg/telegram/tgnet/TLRPC$Chat;)V

    const-wide/16 p5, 0x3e8

    invoke-static {p1, p5, p6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 4945
    invoke-static {p2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-wide v3, p4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v1, v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/MessagesStorage;->updateDialogsWithDeletedMessages(JJLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private synthetic lambda$loadChannel$41(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ArticleViewer$BlockChannelCell;)V
    .locals 3

    const/4 v0, 0x0

    .line 4891
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->loadingChannel:Z

    .line 4892
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_4

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$8100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    if-nez p2, :cond_3

    .line 4896
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 4897
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 4898
    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {p2, v1, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 4899
    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v1, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 4900
    invoke-static {p4}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {p2, p4, v1, v0, v2}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 4901
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer;->loadedChannel:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 4902
    iget-boolean p3, p2, Lorg/telegram/tgnet/TLRPC$Chat;->left:Z

    if-eqz p3, :cond_1

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->kicked:Z

    if-nez p2, :cond_1

    .line 4903
    invoke-virtual {p5, v0, v0}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    goto :goto_0

    .line 4905
    :cond_1
    invoke-virtual {p5, p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    goto :goto_0

    .line 4908
    :cond_2
    invoke-virtual {p5, p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    goto :goto_0

    .line 4911
    :cond_3
    invoke-virtual {p5, p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setState(IZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic lambda$loadChannel$42(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;ILorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 4890
    new-instance v7, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda34;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p4

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;ILorg/telegram/ui/ArticleViewer$BlockChannelCell;)V

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onClosed$40()V
    .locals 2

    .line 4871
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4872
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 4873
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4876
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$open$33(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;ILjava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    .line 4366
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    .line 4367
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    .line 4368
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-nez v5, :cond_0

    return-void

    .line 4372
    :cond_0
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_2

    if-eqz v3, :cond_1

    .line 4374
    iget-object v2, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 4375
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V

    .line 4376
    iget-object v2, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4377
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    const/4 v12, -0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-boolean v15, v3, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    const/16 v16, 0x0

    invoke-virtual/range {v8 .. v16}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZZI)V

    .line 4379
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v7, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4380
    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 4381
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "articles"

    invoke-virtual {v2, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "article"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4382
    invoke-direct {v0, v1, v7, v7}, Lorg/telegram/ui/ArticleViewer;->updateInterfaceForCurrentPage(Lorg/telegram/tgnet/TLRPC$WebPage;ZI)V

    if-eqz v4, :cond_2

    .line 4384
    invoke-direct {v0, v4}, Lorg/telegram/ui/ArticleViewer;->scrollToAnchor(Ljava/lang/String;)Z

    .line 4389
    :cond_2
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2, v6}, Landroidx/collection/LongSparseArray;-><init>(I)V

    .line 4390
    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-virtual {v2, v3, v4, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 4391
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->putWebPages(Landroidx/collection/LongSparseArray;)V

    goto :goto_1

    .line 4392
    :cond_3
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_webPageNotModified;

    if-eqz v4, :cond_6

    .line 4393
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_webPageNotModified;

    if-eqz v2, :cond_6

    .line 4394
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v4, :cond_6

    .line 4395
    iget v5, v4, Lorg/telegram/tgnet/TLRPC$Page;->views:I

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_webPageNotModified;->cached_page_views:I

    if-eq v5, v1, :cond_6

    .line 4396
    iput v1, v4, Lorg/telegram/tgnet/TLRPC$Page;->views:I

    .line 4397
    iget v1, v4, Lorg/telegram/tgnet/TLRPC$Page;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$Page;->flags:I

    .line 4398
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    array-length v4, v1

    if-ge v7, v4, :cond_5

    .line 4399
    aget-object v1, v1, v7

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v1

    if-ne v1, v2, :cond_4

    .line 4400
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v6

    .line 4401
    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v4, v4, v7

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4403
    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v4, v4, v7

    invoke-virtual {v4, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 4408
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;-><init>()V

    .line 4409
    iget-object v1, v9, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    iget-object v2, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4410
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    const/4 v12, -0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-boolean v15, v3, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    const/16 v16, 0x0

    invoke-virtual/range {v8 .. v16}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Lorg/telegram/tgnet/TLRPC$messages_Messages;JIIZZI)V

    :cond_6
    :goto_1
    return-void
.end method

.method private synthetic lambda$open$34(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;ILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 4365
    new-instance p6, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda32;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;ILjava/lang/String;)V

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$open$35()V
    .locals 4

    .line 4463
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4466
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    .line 4467
    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4469
    :cond_1
    iput v3, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    .line 4470
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$open$36(Landroid/animation/AnimatorSet;)V
    .locals 1

    .line 4489
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 4490
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private synthetic lambda$openWebpageUrl$7(ILorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;)V
    .locals 1

    .line 2868
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->lastReqId:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2871
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    const/4 v0, 0x1

    .line 2872
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer;->showProgressView(ZZ)V

    .line 2873
    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    if-eqz p1, :cond_2

    .line 2874
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    if-eqz p1, :cond_1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_webPage;

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_page;

    if-eqz p1, :cond_1

    .line 2875
    invoke-direct {p0, p2, p3, v0}, Lorg/telegram/ui/ArticleViewer;->addPageToStack(Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;I)Z

    goto :goto_0

    .line 2877
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    iget-object p2, p4, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->url:Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$openWebpageUrl$8(ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 2867
    new-instance p5, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda27;

    move-object v0, p5

    move-object v1, p0

    move v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/ArticleViewer;ILorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processSearch$29(ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 1

    .line 4136
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->lastSearchIndex:I

    if-ne p1, v0, :cond_0

    .line 4137
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4138
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4139
    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer;->searchResults:Ljava/util/ArrayList;

    .line 4140
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer;->searchText:Ljava/lang/String;

    .line 4141
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$1800(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 4142
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 4143
    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->scrollToSearchIndex(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$processSearch$30(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;I)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    .line 4106
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 4107
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-ge v12, v10, :cond_5

    move-object/from16 v13, p1

    .line 4108
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v15, p2

    .line 4109
    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 4111
    instance-of v0, v14, Lorg/telegram/tgnet/TLRPC$RichText;

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 4112
    move-object v4, v14

    check-cast v4, Lorg/telegram/tgnet/TLRPC$RichText;

    .line 4113
    iget-object v0, v7, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v1, v0, v11

    const/4 v2, 0x0

    const/16 v16, 0x3e8

    move-object/from16 v0, p0

    move-object v3, v4

    move-object v11, v5

    move-object v5, v6

    move-object/from16 v17, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4115
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_0
    move-object v11, v5

    move-object/from16 v17, v6

    .line 4117
    instance-of v0, v14, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4118
    move-object v0, v14

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v11

    :goto_1
    if-eqz v5, :cond_4

    const/4 v0, 0x0

    .line 4123
    :goto_2
    invoke-virtual {v5, v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_4

    .line 4124
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    if-eqz v0, :cond_3

    add-int/lit8 v2, v0, -0x1

    .line 4125
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->isPunctuationCharacter(C)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    move-object/from16 v0, v17

    goto :goto_4

    .line 4126
    :cond_3
    :goto_3
    new-instance v2, Lorg/telegram/ui/ArticleViewer$SearchResult;

    invoke-direct {v2, v11}, Lorg/telegram/ui/ArticleViewer$SearchResult;-><init>(Lorg/telegram/ui/ArticleViewer$1;)V

    .line 4127
    invoke-static {v2, v0}, Lorg/telegram/ui/ArticleViewer$SearchResult;->access$502(Lorg/telegram/ui/ArticleViewer$SearchResult;I)I

    move-object/from16 v0, v17

    .line 4128
    invoke-static {v2, v0}, Lorg/telegram/ui/ArticleViewer$SearchResult;->access$302(Lorg/telegram/ui/ArticleViewer$SearchResult;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 4129
    invoke-static {v2, v14}, Lorg/telegram/ui/ArticleViewer$SearchResult;->access$402(Lorg/telegram/ui/ArticleViewer$SearchResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4130
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    move-object/from16 v17, v0

    move v0, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x0

    goto/16 :goto_0

    .line 4135
    :cond_5
    new-instance v0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda26;

    move/from16 v1, p4

    invoke-direct {v0, v7, v1, v9, v8}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/ArticleViewer;ILjava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processSearch$31(Ljava/lang/String;I)V
    .locals 8

    .line 4102
    new-instance v3, Ljava/util/HashMap;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$22400(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 4103
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$22500(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    .line 4104
    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchRunnable:Ljava/lang/Runnable;

    .line 4105
    sget-object v6, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v7, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda30;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/ArticleViewer;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$setParentActivity$10(Landroid/view/View;I)Z
    .locals 0

    .line 3273
    instance-of p2, p1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;

    if-eqz p2, :cond_0

    .line 3274
    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;

    .line 3275
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->access$22900(Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->access$8600(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;->articles:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->access$22900(Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->access$8500(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->url:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->showCopyPopup(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$setParentActivity$11(Lorg/telegram/tgnet/TLObject;IJ)V
    .locals 4

    .line 3303
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3306
    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    const/4 v1, 0x1

    .line 3307
    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer;->showProgressView(ZZ)V

    if-eqz p1, :cond_1

    .line 3309
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 3310
    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 3311
    invoke-static {p2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v2, v3, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 3312
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 3313
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0, p1, p3, p4}, Lorg/telegram/ui/ArticleViewer;->openPreviewsChat(Lorg/telegram/tgnet/TLRPC$User;J)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$setParentActivity$12(IJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 3302
    new-instance p5, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda31;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLObject;IJ)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setParentActivity$13(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/View;IFF)V
    .locals 3

    .line 3281
    iget-object p5, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    if-eqz p5, :cond_1

    .line 3282
    invoke-virtual {p5}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 3283
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    return-void

    .line 3286
    :cond_0
    iget-object p5, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {p5}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    .line 3288
    :cond_1
    instance-of p5, p2, Lorg/telegram/ui/ArticleViewer$ReportCell;

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p5, :cond_5

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object p5

    if-eqz p5, :cond_5

    .line 3289
    move-object p3, p2

    check-cast p3, Lorg/telegram/ui/ArticleViewer$ReportCell;

    .line 3290
    iget p5, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    if-nez p5, :cond_4

    invoke-static {p3}, Lorg/telegram/ui/ArticleViewer$ReportCell;->access$22700(Lorg/telegram/ui/ArticleViewer$ReportCell;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    div-int/2addr p2, v0

    int-to-float p2, p2

    cmpg-float p2, p4, p2

    if-gez p2, :cond_2

    goto :goto_0

    .line 3293
    :cond_2
    iget p2, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const-string p3, "previews"

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object p2

    .line 3294
    instance-of p4, p2, Lorg/telegram/tgnet/TLRPC$TL_user;

    if-eqz p4, :cond_3

    .line 3295
    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object p1

    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/ArticleViewer;->openPreviewsChat(Lorg/telegram/tgnet/TLRPC$User;J)V

    goto/16 :goto_2

    .line 3297
    :cond_3
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 3298
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object p1

    iget-wide p4, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    .line 3299
    invoke-direct {p0, v1, v1}, Lorg/telegram/ui/ArticleViewer;->showProgressView(ZZ)V

    .line 3300
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 3301
    iput-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 3302
    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda35;

    invoke-direct {v0, p0, p2, p4, p5}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/ArticleViewer;IJ)V

    invoke-virtual {p3, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    goto/16 :goto_2

    :cond_4
    :goto_0
    return-void

    :cond_5
    if-ltz p3, :cond_d

    .line 3318
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$8300(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_d

    .line 3319
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$8300(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 3321
    invoke-direct {p0, p4}, Lorg/telegram/ui/ArticleViewer;->getLastNonListPageBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p5

    .line 3322
    instance-of v2, p5, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    if-eqz v2, :cond_6

    .line 3323
    check-cast p5, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 3324
    invoke-static {p5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6600(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p5

    .line 3326
    :cond_6
    instance-of v2, p5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    if-eqz v2, :cond_7

    .line 3327
    check-cast p5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    .line 3328
    iget p1, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    const/4 p1, 0x0

    .line 3329
    invoke-virtual {p0, p1, v1}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    goto/16 :goto_2

    .line 3330
    :cond_7
    instance-of v0, p5, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 3331
    check-cast p5, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    .line 3332
    invoke-static {p5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->access$8600(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;->articles:Ljava/util/ArrayList;

    invoke-static {p5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->access$8500(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageRelatedArticle;->url:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/ArticleViewer;->openWebpageUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3333
    :cond_8
    instance-of v0, p5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    if-eqz v0, :cond_d

    .line 3334
    invoke-direct {p0, p2}, Lorg/telegram/ui/ArticleViewer;->getLastNonListCell(Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    .line 3335
    instance-of v0, p2, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;

    if-nez v0, :cond_9

    return-void

    .line 3339
    :cond_9
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    .line 3340
    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    .line 3341
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$8100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p4

    if-gez p4, :cond_a

    return-void

    .line 3345
    :cond_a
    check-cast p5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    .line 3346
    iget-boolean p4, p5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->open:Z

    xor-int/2addr p4, v1

    iput-boolean p4, p5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->open:Z

    .line 3348
    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getItemCount()I

    move-result p4

    .line 3349
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$8200(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    .line 3350
    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, p4

    .line 3351
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p4

    .line 3353
    check-cast p2, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;

    .line 3354
    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->access$22800(Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;)Lorg/telegram/ui/Components/AnimatedArrowDrawable;

    move-result-object v0

    iget-boolean v2, p5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->open:Z

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    goto :goto_1

    :cond_b
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedArrowDrawable;->setAnimationProgressAnimated(F)V

    .line 3355
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    if-eqz p4, :cond_d

    .line 3357
    iget-boolean p2, p5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->open:Z

    if-eqz p2, :cond_c

    add-int/2addr p3, v1

    .line 3358
    invoke-virtual {p1, p3, p4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyItemRangeInserted(II)V

    goto :goto_2

    :cond_c
    add-int/2addr p3, v1

    .line 3360
    invoke-virtual {p1, p3, p4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyItemRangeRemoved(II)V

    :cond_d
    :goto_2
    return-void
.end method

.method private synthetic lambda$setParentActivity$14(Landroid/view/View;)V
    .locals 1

    .line 3432
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method private synthetic lambda$setParentActivity$15()V
    .locals 3

    .line 3451
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LineProgressView;->getCurrentProgress()F

    move-result v0

    const v1, 0x3f333333    # 0.7f

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3e800000    # 0.25f

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    const v0, 0x3c23d70a    # 0.01f

    goto :goto_0

    :cond_0
    const v0, 0x3ca3d70a    # 0.02f

    .line 3459
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/LineProgressView;->getCurrentProgress()F

    move-result v2

    add-float/2addr v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 3460
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->lineProgressTickRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$setParentActivity$16(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-eqz p3, :cond_2

    .line 3524
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x54

    if-eq p1, p2, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_2

    .line 3525
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$setParentActivity$17(Landroid/view/View;)V
    .locals 1

    .line 3617
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 3618
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3620
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3621
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$setParentActivity$18(Landroid/view/View;)V
    .locals 0

    .line 3642
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3643
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->showSearch(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 3645
    invoke-virtual {p0, p1, p1}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setParentActivity$19(Landroid/view/View;)V
    .locals 0

    .line 3656
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->openTranslatePage()V

    return-void
.end method

.method private synthetic lambda$setParentActivity$20(Landroid/view/View;)V
    .locals 0

    .line 3722
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$setParentActivity$21(Landroid/view/View;)V
    .locals 5

    .line 3771
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3772
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 3774
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    if-ne v1, p1, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/ArticleViewer$FontCell;->select(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3776
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->updatePaintFonts()V

    .line 3777
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    array-length p1, p1

    if-ge v0, p1, :cond_2

    .line 3778
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private synthetic lambda$setParentActivity$22(I)V
    .locals 13

    .line 3724
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 3728
    invoke-direct {p0, v2}, Lorg/telegram/ui/ArticleViewer;->showSearch(Z)V

    goto/16 :goto_4

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 3730
    new-instance p1, Lorg/telegram/ui/Components/ShareAlert;

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer;->showDialog(Landroid/app/Dialog;)V

    goto/16 :goto_4

    :cond_2
    const/4 v4, 0x3

    if-ne p1, v4, :cond_4

    .line 3733
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Page;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 3734
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Page;->url:Ljava/lang/String;

    goto :goto_0

    .line 3736
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    .line 3738
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v0, p1, v2, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;ZZ)V

    goto/16 :goto_4

    :cond_4
    const/4 v4, 0x4

    if-ne p1, v4, :cond_9

    .line 3740
    new-instance p1, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 3741
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 3743
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3744
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v1, v1, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 3745
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3747
    new-instance v4, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 3748
    sget v5, Lorg/telegram/messenger/R$string;->FontSize:I

    const-string v6, "FontSize"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x33

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x0

    .line 3749
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3751
    new-instance v4, Lorg/telegram/ui/ArticleViewer$TextSizeCell;

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v4, p0, v5}, Lorg/telegram/ui/ArticleViewer$TextSizeCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    const/4 v6, -0x1

    const/4 v10, 0x0

    .line 3752
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3754
    new-instance v4, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 3755
    sget v5, Lorg/telegram/messenger/R$string;->FontType:I

    const-string v6, "FontType"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, -0x2

    const/4 v10, 0x4

    const/4 v12, 0x2

    .line 3756
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_8

    .line 3759
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    new-instance v6, Lorg/telegram/ui/ArticleViewer$FontCell;

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Lorg/telegram/ui/ArticleViewer$FontCell;-><init>(Landroid/content/Context;)V

    aput-object v6, v5, v4

    if-eqz v4, :cond_6

    if-eq v4, v2, :cond_5

    goto :goto_2

    .line 3765
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    aget-object v5, v5, v4

    sget-object v6, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const-string v7, "Serif"

    invoke-virtual {v5, v7, v6}, Lorg/telegram/ui/ArticleViewer$FontCell;->setTextAndTypeface(Ljava/lang/String;Landroid/graphics/Typeface;)V

    goto :goto_2

    .line 3762
    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    aget-object v5, v5, v4

    sget v6, Lorg/telegram/messenger/R$string;->Default:I

    const-string v7, "Default"

    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6, v7}, Lorg/telegram/ui/ArticleViewer$FontCell;->setTextAndTypeface(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 3768
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    aget-object v5, v5, v4

    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    if-ne v4, v6, :cond_7

    move v6, v2

    goto :goto_3

    :cond_7
    move v6, v1

    :goto_3
    invoke-virtual {v5, v6, v1}, Lorg/telegram/ui/ArticleViewer$FontCell;->select(ZZ)V

    .line 3769
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    aget-object v5, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 3770
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    aget-object v5, v5, v4

    new-instance v6, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda10;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3781
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->fontCells:[Lorg/telegram/ui/ArticleViewer$FontCell;

    aget-object v5, v5, v4

    const/4 v6, -0x1

    const/16 v7, 0x32

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3784
    :cond_8
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 3785
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->linkSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer;->showDialog(Landroid/app/Dialog;)V

    :cond_9
    :goto_4
    return-void
.end method

.method private static synthetic lambda$setParentActivity$23(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$setParentActivity$24(Landroid/view/View;)V
    .locals 0

    .line 3813
    iget p1, p0, Lorg/telegram/ui/ArticleViewer;->currentSearchIndex:I

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->scrollToSearchIndex(I)V

    return-void
.end method

.method private synthetic lambda$setParentActivity$25(Landroid/view/View;)V
    .locals 0

    .line 3822
    iget p1, p0, Lorg/telegram/ui/ArticleViewer;->currentSearchIndex:I

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->scrollToSearchIndex(I)V

    return-void
.end method

.method private synthetic lambda$setParentActivity$26(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 3866
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->showTranslateDialog(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setParentActivity$27([F)V
    .locals 2

    .line 3891
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    int-to-float v0, v0

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 3892
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aput v0, p1, v1

    return-void
.end method

.method private static synthetic lambda$setParentActivity$9(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 3180
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p0, v0, :cond_0

    .line 3181
    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0

    .line 3183
    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$showCopyPopup$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1292
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    if-nez p3, :cond_4

    const/16 p3, 0x23

    .line 1297
    invoke-virtual {p1, p3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_3

    .line 1299
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Page;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1300
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Page;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1302
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    add-int/2addr p3, p2

    .line 1306
    :try_start_0
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "UTF-8"

    invoke-static {p2, p3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p2, ""

    .line 1310
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1311
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1312
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:[Landroidx/recyclerview/widget/LinearLayoutManager;

    aget-object p1, p1, v1

    invoke-virtual {p1, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1313
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->checkScrollAnimated()V

    goto :goto_2

    .line 1315
    :cond_2
    invoke-direct {p0, p2}, Lorg/telegram/ui/ArticleViewer;->scrollToAnchor(Ljava/lang/String;)Z

    :goto_2
    return-void

    .line 1320
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {p2, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    if-ne p3, p2, :cond_7

    const-string p2, "mailto:"

    .line 1323
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x7

    .line 1324
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    const-string p2, "tel:"

    .line 1325
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x4

    .line 1326
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1328
    :cond_6
    :goto_3
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    :cond_7
    :goto_4
    return-void
.end method

.method private synthetic lambda$showCopyPopup$1(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1331
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    return-void
.end method

.method private synthetic lambda$showDialog$47(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 5009
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$showPopup$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1349
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 1350
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1352
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->popupRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1353
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$showPopup$3(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1360
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1361
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showPopup$4(Landroid/view/View;)V
    .locals 2

    .line 1375
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz p1, :cond_0

    .line 1376
    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 1377
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowClipboardToast()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1378
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    sget v0, Lorg/telegram/messenger/R$string;->TextCopied:I

    const-string v1, "TextCopied"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1381
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1382
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$showPopup$5(Landroid/view/View;)V
    .locals 1

    .line 1398
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz p1, :cond_0

    .line 1399
    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->showTranslateDialog(Ljava/lang/String;)V

    .line 1401
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1402
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$showPopup$6()V
    .locals 2

    .line 1418
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1419
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    .line 1420
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1421
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private synthetic lambda$showSearch$28()V
    .locals 1

    .line 4015
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->runAfterKeyboardClose:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 4016
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const/4 v0, 0x0

    .line 4017
    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->runAfterKeyboardClose:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method private loadChannel(Lorg/telegram/ui/ArticleViewer$BlockChannelCell;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 3

    .line 4883
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->loadingChannel:Z

    if-nez v0, :cond_1

    invoke-static {p3}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4886
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->loadingChannel:Z

    .line 4887
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 4888
    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    iput-object p3, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 4889
    sget p3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 4890
    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda39;

    invoke-direct {v2, p0, p2, p3, p1}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;ILorg/telegram/ui/ArticleViewer$BlockChannelCell;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private onClosed()V
    .locals 3

    const/4 v0, 0x0

    .line 4856
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    move v1, v0

    .line 4857
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 4858
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7200(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4861
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 4863
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    move v1, v0

    .line 4865
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4866
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    .line 4867
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->destroyWebView(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4869
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 4879
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->articleClosed:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private open(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;Z)Z
    .locals 11

    .line 4298
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->collapsed:Z

    if-eqz v0, :cond_11

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    goto/16 :goto_9

    :cond_1
    const/4 v0, -0x1

    const/16 v2, 0x23

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_6

    .line 4304
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move p3, v1

    .line 4306
    :goto_0
    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p3, v5, :cond_5

    .line 4307
    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 4308
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    if-eqz v6, :cond_4

    .line 4310
    :try_start_0
    iget-object v6, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iget v7, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v5, v7

    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 4312
    iget-object v6, p2, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Page;->url:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 4313
    iget-object v6, p2, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Page;->url:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 4315
    :cond_2
    iget-object v6, p2, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 4317
    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4318
    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-eq v6, v0, :cond_5

    add-int/lit8 v6, v6, 0x1

    .line 4319
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 4324
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_5
    move-object p3, v3

    goto :goto_2

    :cond_6
    if-eqz p3, :cond_7

    .line 4330
    invoke-virtual {p3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-eq v2, v0, :cond_7

    add-int/2addr v2, v4

    .line 4331
    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    :goto_2
    move-object v7, p2

    goto :goto_3

    :cond_7
    move-object v7, p2

    move-object p3, v3

    .line 4335
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 4336
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer;->collapsed:Z

    .line 4337
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 4338
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4339
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object p2, p2, v1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 4340
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object p2, p2, v1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 4341
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object p2, p2, v4

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 4342
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object p2, p2, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 4343
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ArticleViewer$WindowView;->setInnerTranslationX(F)V

    .line 4345
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:[Landroidx/recyclerview/widget/LinearLayoutManager;

    aget-object p2, p2, v1

    invoke-virtual {p2, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const/16 p2, 0x38

    if-eqz p4, :cond_8

    .line 4347
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/ArticleViewer;->setCurrentHeaderHeight(I)V

    goto :goto_4

    .line 4349
    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->checkScrollAnimated()V

    .line 4352
    :goto_4
    invoke-direct {p0, v7, p3, v1}, Lorg/telegram/ui/ArticleViewer;->addPageToStack(Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;I)Z

    move-result v2

    if-eqz p4, :cond_c

    if-nez v2, :cond_9

    if-eqz p3, :cond_9

    move-object v10, p3

    goto :goto_5

    :cond_9
    move-object v10, v3

    .line 4356
    :goto_5
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;-><init>()V

    .line 4357
    iget-object p4, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iput-object p4, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->url:Ljava/lang/String;

    .line 4358
    iget-object p4, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    instance-of v2, p4, Lorg/telegram/tgnet/TLRPC$TL_pagePart_layer82;

    if-nez v2, :cond_b

    iget-boolean p4, p4, Lorg/telegram/tgnet/TLRPC$Page;->part:Z

    if-eqz p4, :cond_a

    goto :goto_6

    .line 4361
    :cond_a
    iget p4, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->hash:I

    iput p4, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->hash:I

    goto :goto_7

    .line 4359
    :cond_b
    :goto_6
    iput v1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->hash:I

    .line 4364
    :goto_7
    sget v9, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 4365
    invoke-static {v9}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v2, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda37;

    move-object v5, v2

    move-object v6, p0

    move-object v8, p1

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;ILjava/lang/String;)V

    invoke-virtual {p4, p3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 4418
    :cond_c
    iput-object v3, p0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    .line 4419
    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    const-string p3, "window"

    if-nez p1, :cond_f

    .line 4420
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 4421
    iget-boolean p3, p0, Lorg/telegram/ui/ArticleViewer;->attachedToWindow:Z

    if-eqz p3, :cond_d

    .line 4423
    :try_start_1
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-interface {p1, p3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4429
    :catch_1
    :cond_d
    :try_start_2
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x15

    if-lt p3, p4, :cond_e

    .line 4430
    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v2, -0x77ff0000

    iput v2, p4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x1c

    if-lt p3, v2, :cond_e

    .line 4434
    iput v4, p4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 4438
    :cond_e
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 4439
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {p3, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 4440
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p3, p4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception p1

    .line 4442
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return v1

    .line 4446
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget p4, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p4, p4, -0x11

    iput p4, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4447
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p1, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 4448
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p3, p4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4450
    :goto_8
    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    .line 4451
    iput v4, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    .line 4452
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$WindowView;->setAlpha(F)V

    .line 4453
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4455
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p3, 0x3

    new-array p3, p3, [Landroid/animation/Animator;

    .line 4456
    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    .line 4457
    invoke-static {p4, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    aput-object p4, p3, v1

    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    fill-array-data v6, :array_1

    .line 4458
    invoke-static {p4, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    aput-object p4, p3, v4

    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v6, v5, [F

    .line 4459
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    aput p2, v6, v1

    aput v0, v6, v4

    invoke-static {p4, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, p3, v5

    .line 4456
    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4462
    new-instance p2, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda22;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x96

    .line 4473
    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4474
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4475
    new-instance p2, Lorg/telegram/ui/ArticleViewer$22;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ArticleViewer$22;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4487
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lorg/telegram/ui/ArticleViewer;->transitionAnimationStartTime:J

    .line 4488
    new-instance p2, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda28;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4492
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x12

    if-lt p1, p2, :cond_10

    .line 4493
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v5, v3}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_10
    return v4

    :cond_11
    :goto_9
    return v1

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

.method private openAllParentBlocks(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Z
    .locals 4

    .line 1578
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6500(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getLastNonListPageBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    .line 1579
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1580
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    .line 1581
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->open:Z

    if-nez v0, :cond_0

    .line 1582
    iput-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->open:Z

    return v2

    :cond_0
    return v1

    .line 1586
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    if-eqz v0, :cond_4

    .line 1587
    check-cast p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 1588
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6600(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getLastNonListPageBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    .line 1590
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    if-eqz v3, :cond_2

    .line 1591
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    .line 1592
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->open:Z

    if-nez v3, :cond_2

    .line 1593
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->open:Z

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1597
    :goto_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->openAllParentBlocks(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method private openPreviewsChat(Lorg/telegram/tgnet/TLRPC$User;J)V
    .locals 3

    if-eqz p1, :cond_1

    .line 4279
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4282
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4283
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string p1, "user_id"

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webpage"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "botUser"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4285
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    new-instance p2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    .line 4286
    invoke-virtual {p0, p3, v0}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private openTranslatePage()V
    .locals 4

    .line 222
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Page;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Page;->url:Ljava/lang/String;

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    .line 228
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/iMe/common/Constants;->generateGoogleTranslateUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v2, v0, v3, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private openWebpageUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 2858
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2859
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 2860
    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    .line 2862
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->lastReqId:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->lastReqId:I

    .line 2863
    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/ArticleViewer;->showProgressView(ZZ)V

    .line 2864
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;-><init>()V

    .line 2865
    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->url:Ljava/lang/String;

    .line 2866
    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->hash:I

    .line 2867
    iget p1, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda36;

    invoke-direct {v1, p0, v0, p2, v2}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/ArticleViewer;ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;)V

    invoke-virtual {p1, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    return-void
.end method

.method private processSearch(Ljava/lang/String;)V
    .locals 4

    .line 4086
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4087
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 4088
    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchRunnable:Ljava/lang/Runnable;

    .line 4090
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4091
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4092
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->searchText:Ljava/lang/String;

    .line 4093
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$1800(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 4094
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4095
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 4096
    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->scrollToSearchIndex(I)V

    const/4 p1, -0x1

    .line 4097
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->lastSearchIndex:I

    return-void

    .line 4100
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->lastSearchIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->lastSearchIndex:I

    .line 4101
    new-instance v1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private refreshThemeColors()V
    .locals 5

    .line 4717
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4718
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4720
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupTranslateButton:Landroid/widget/TextView;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 4721
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4722
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupTranslateButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4725
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 4726
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4727
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4729
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v0, :cond_3

    .line 4730
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 4732
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    .line 4733
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 4735
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_5

    .line 4736
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 4737
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 4738
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 4740
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchUpButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 4741
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4742
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchUpButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4744
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchDownButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 4745
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4746
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchDownButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4748
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/ActionBar/SimpleTextView;

    if-eqz v0, :cond_8

    .line 4749
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 4751
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v0, :cond_9

    .line 4752
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 4753
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 4754
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 4756
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->clearButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 4757
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4759
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz v0, :cond_b

    .line 4760
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    :cond_b
    return-void
.end method

.method private removeLastPageFromStack()Z
    .locals 4

    .line 1906
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 1909
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1910
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$WebPage;

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/ArticleViewer;->updateInterfaceForCurrentPage(Lorg/telegram/tgnet/TLRPC$WebPage;ZI)V

    return v3
.end method

.method private removePressedLink()V
    .locals 2

    .line 2844
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2847
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    .line 2848
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    const/4 v1, 0x0

    .line 2849
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 2850
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    .line 2851
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2853
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private saveCurrentPagePosition()V
    .locals 7

    .line 4697
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4700
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:[Landroidx/recyclerview/widget/LinearLayoutManager;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 4703
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:[Landroidx/recyclerview/widget/LinearLayoutManager;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4705
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    .line 4709
    :goto_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "articles"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 4710
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "article"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v5, v5, v1

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v5

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4711
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "o"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-le v4, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    return-void
.end method

.method private scrollToAnchor(Ljava/lang/String;)Z
    .locals 13

    .line 1764
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    .line 1896
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_0

    return v1

    .line 1767
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1768
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7500(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 1770
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7600(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eqz v3, :cond_3

    .line 1772
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;-><init>()V

    .line 1773
    iget-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iput-object p1, v10, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 1775
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object p1, p1, v1

    invoke-static {p1, v10}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7700(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result v8

    .line 1776
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object p1, p1, v1

    invoke-virtual {p1, v4, v8}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 1777
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v7, v0, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v9, p1

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7800(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/tgnet/TLRPC$PageBlock;II)V

    .line 1779
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 1780
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyTopPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 1781
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setApplyBottomPadding(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 1782
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1783
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1785
    new-instance v3, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-direct {v3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelperBottomSheet:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    .line 1786
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setParentView(Landroid/view/ViewGroup;)V

    .line 1787
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelperBottomSheet:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    new-instance v4, Lorg/telegram/ui/ArticleViewer$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ArticleViewer$3;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setCallback(Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;)V

    .line 1795
    new-instance v3, Lorg/telegram/ui/ArticleViewer$4;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v3, p0, v4}, Lorg/telegram/ui/ArticleViewer$4;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 1802
    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v4, "fonts/rmedium.ttf"

    .line 1803
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1804
    sget v4, Lorg/telegram/messenger/R$string;->InstantViewReference:I

    const-string v7, "InstantViewReference"

    invoke-static {v7, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1805
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v4, v4, v1

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x5

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    :goto_0
    or-int/lit8 v4, v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 1806
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x12

    .line 1807
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v3, v7, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1808
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x30

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v5

    invoke-direct {v1, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1810
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v3, "bottomSheet"

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1811
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v7, -0x1

    const/4 v8, -0x2

    const/4 v9, 0x0

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1813
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelperBottomSheet:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object p1

    .line 1814
    new-instance v1, Lorg/telegram/ui/ArticleViewer$5;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v3, v2}, Lorg/telegram/ui/ArticleViewer$5;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 1847
    new-instance v3, Lorg/telegram/ui/ArticleViewer$6;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ArticleViewer$6;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegate;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v3, -0x2

    .line 1858
    invoke-virtual {v1, v2, v6, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1859
    invoke-virtual {v1, p1, v6, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 1860
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 1861
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1862
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    .line 1864
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->linkSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer;->showDialog(Landroid/app/Dialog;)V

    goto/16 :goto_2

    .line 1866
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v7, v7, v1

    invoke-static {v7}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$8100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v3, v7, :cond_4

    goto/16 :goto_3

    .line 1869
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$8100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 1870
    invoke-direct {p0, v10}, Lorg/telegram/ui/ArticleViewer;->getLastNonListPageBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v3

    .line 1872
    instance-of v7, v3, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    if-eqz v7, :cond_5

    .line 1873
    check-cast v3, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    invoke-direct {p0, v3}, Lorg/telegram/ui/ArticleViewer;->openAllParentBlocks(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1874
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$8200(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    .line 1875
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    .line 1878
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$8300(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v6, :cond_6

    .line 1880
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1883
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$3400(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_9

    .line 1885
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v6, :cond_8

    .line 1886
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v3, v3, v1

    invoke-static {v3, v10}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7700(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result v8

    .line 1887
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v3, v3, v1

    invoke-virtual {v3, v4, v8}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 1888
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v7, v4, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v9, v3

    invoke-static/range {v7 .. v12}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7800(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/tgnet/TLRPC$PageBlock;II)V

    .line 1889
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v3, v4, v7}, Landroid/view/View;->measure(II)V

    .line 1890
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v3, v3, v1

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$3400(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1891
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v6, :cond_7

    goto :goto_1

    :cond_7
    move-object v2, p1

    goto :goto_1

    :cond_8
    move-object v2, v3

    .line 1898
    :cond_9
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:[Landroidx/recyclerview/widget/LinearLayoutManager;

    aget-object p1, p1, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    const/16 v3, 0x38

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_2
    return v5

    :cond_a
    :goto_3
    return v1
.end method

.method private scrollToSearchIndex(I)V
    .locals 11

    if-ltz p1, :cond_b

    .line 4151
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto/16 :goto_4

    .line 4155
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->currentSearchIndex:I

    .line 4156
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->updateSearchButtons()V

    .line 4157
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ArticleViewer$SearchResult;

    .line 4158
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->access$300(Lorg/telegram/ui/ArticleViewer$SearchResult;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getLastNonListPageBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    .line 4161
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$8100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 4162
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$8100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 4163
    instance-of v5, v4, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    if-eqz v5, :cond_2

    .line 4164
    check-cast v4, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 4165
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6600(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v5

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->access$300(Lorg/telegram/ui/ArticleViewer$SearchResult;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v6

    if-eq v5, v6, :cond_1

    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6600(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v5

    if-ne v5, v0, :cond_2

    .line 4166
    :cond_1
    invoke-direct {p0, v4}, Lorg/telegram/ui/ArticleViewer;->openAllParentBlocks(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4167
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v1, v1, v2

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$8200(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    .line 4168
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4174
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v1, v1, v2

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$8300(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_2
    const/4 v4, -0x1

    if-ge v3, v1, :cond_6

    .line 4175
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$8300(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 4176
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->access$300(Lorg/telegram/ui/ArticleViewer$SearchResult;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v6

    if-eq v5, v6, :cond_7

    if-ne v5, v0, :cond_4

    goto :goto_3

    .line 4179
    :cond_4
    instance-of v6, v5, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    if-eqz v6, :cond_5

    .line 4180
    check-cast v5, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 4181
    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6600(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v6

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->access$300(Lorg/telegram/ui/ArticleViewer$SearchResult;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v7

    if-eq v6, v7, :cond_7

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6600(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v5

    if-ne v5, v0, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    move v3, v4

    :cond_7
    :goto_3
    if-ne v3, v4, :cond_8

    return-void

    .line 4192
    :cond_8
    instance-of v1, v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    if-eqz v1, :cond_9

    .line 4193
    check-cast v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->openAllParentBlocks(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4194
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$8200(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    .line 4195
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    .line 4199
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->searchText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->access$300(Lorg/telegram/ui/ArticleViewer$SearchResult;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->access$400(Lorg/telegram/ui/ArticleViewer$SearchResult;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->access$500(Lorg/telegram/ui/ArticleViewer$SearchResult;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4200
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v1, v1, v2

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$1800(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_a

    .line 4202
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v1, v1, v2

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->access$300(Lorg/telegram/ui/ArticleViewer$SearchResult;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7700(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result v6

    .line 4203
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v1, v1, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 4204
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v5, v4, v2

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$SearchResult;->access$300(Lorg/telegram/ui/ArticleViewer$SearchResult;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, v1

    invoke-static/range {v5 .. v10}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7800(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/tgnet/TLRPC$PageBlock;II)V

    .line 4205
    iget-object p1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p1, v1, v4}, Landroid/view/View;->measure(II)V

    .line 4206
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object p1, p1, v2

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$1800(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_a

    .line 4208
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 4211
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:[Landroidx/recyclerview/widget/LinearLayoutManager;

    aget-object p1, p1, v2

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    const/16 v4, 0x38

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x64

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 4212
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    return-void

    .line 4152
    :cond_b
    :goto_4
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->updateSearchButtons()V

    return-void
.end method

.method private setCurrentHeaderHeight(I)V
    .locals 6

    .line 4235
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x38

    .line 4238
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v1, 0x18

    .line 4239
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    if-ge p1, v1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    :goto_0
    sub-int v2, v0, v1

    int-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    .line 4252
    :cond_3
    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    const v3, 0x3f4ccccd    # 0.8f

    sub-int v4, p1, v1

    int-to-float v4, v4

    div-float/2addr v4, v2

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    sub-int/2addr p1, v1

    int-to-float p1, p1

    div-float/2addr p1, v2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p1, v1

    add-float/2addr p1, v1

    .line 4255
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 4256
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 4257
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 4258
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->menuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 4259
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->menuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 4260
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 4261
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 4262
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleY(F)V

    .line 4263
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->menuContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4264
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 4265
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4266
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->searchShadow:Landroid/view/View;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 4267
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int/2addr v1, v0

    neg-int v0, v1

    div-int/lit8 v0, v0, 0x2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-ge v1, v2, :cond_4

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 4268
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setTopOffset(I)V

    .line 4269
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    array-length v0, p1

    if-ge v3, v0, :cond_5

    .line 4270
    aget-object p1, p1, v3

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private setMapColors(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/text/TextPaint;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3088
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3089
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 3090
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/TextPaint;

    and-int/lit8 v3, v1, 0x8

    if-nez v3, :cond_1

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3094
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_2

    .line 3092
    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getLinkTextColor()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setColor(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private showCopyPopup(Ljava/lang/String;)V
    .locals 6

    .line 1274
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 1277
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->linkSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v0, :cond_1

    .line 1278
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 v0, 0x0

    .line 1279
    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->linkSheet:Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 1282
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    :try_start_0
    const-string v1, "\\+"

    const-string v2, "%2b"

    .line 1285
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1287
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v1, p1

    .line 1289
    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v1, 0x1

    .line 1290
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitleMultipleLines(Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    .line 1291
    sget v4, Lorg/telegram/messenger/R$string;->Open:I

    const-string v5, "Open"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    sget v3, Lorg/telegram/messenger/R$string;->Copy:I

    const-string v4, "Copy"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    new-instance v1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 1331
    new-instance p1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setOnPreDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 1332
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    .line 1333
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method private showPopup(Landroid/view/View;III)V
    .locals 20

    move-object/from16 v0, p0

    .line 1337
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1338
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    return-void

    .line 1342
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 1343
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupRect:Landroid/graphics/Rect;

    .line 1344
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    .line 1345
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1346
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v4, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->menu_copy:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1347
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setAnimationEnabled(Z)V

    .line 1348
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v5, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda15;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1359
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    new-instance v5, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda41;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 1364
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setShownFromBottom(Z)V

    .line 1366
    new-instance v1, Landroid/widget/TextView;

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    .line 1367
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-static {v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1368
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    const/16 v5, 0x10

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1369
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    const/16 v6, 0x14

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v1, v7, v4, v8, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1370
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    const/high16 v7, 0x41700000    # 15.0f

    invoke-virtual {v1, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1371
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    const-string v8, "fonts/rmedium.ttf"

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1372
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    sget v9, Lorg/telegram/messenger/R$string;->Copy:I

    const-string v10, "Copy"

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1373
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1374
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    new-instance v9, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda13;

    invoke-direct {v9, v0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1387
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v9, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v1, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1388
    iget-object v9, v0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    const/4 v10, -0x2

    const/4 v11, -0x1

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v1, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1389
    new-instance v9, Landroid/view/View;

    iget-object v12, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v9, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/ArticleViewer;->popupDivider:Landroid/view/View;

    const/4 v13, 0x1

    const/4 v14, -0x1

    const/16 v15, 0x10

    const/16 v16, 0x0

    const/16 v17, 0x8

    const/16 v18, 0x0

    const/16 v19, 0x8

    .line 1390
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v1, v9, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1391
    new-instance v9, Landroid/widget/TextView;

    iget-object v12, v0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v9, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/ArticleViewer;->popupTranslateButton:Landroid/widget/TextView;

    .line 1392
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1393
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->popupTranslateButton:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-virtual {v5, v9, v4, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1394
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->popupTranslateButton:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1395
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->popupTranslateButton:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1396
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->popupTranslateButton:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->sending_settings_translation_enable_item_title:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1397
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->popupTranslateButton:Landroid/widget/TextView;

    new-instance v6, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda9;

    invoke-direct {v6, v0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1405
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->popupTranslateButton:Landroid/widget/TextView;

    invoke-static {v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1406
    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v6, 0x30

    invoke-static {v10, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1409
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v5, v0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-direct {v1, v5, v10, v10}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 1410
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setAnimationEnabled(Z)V

    .line 1411
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v5, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1412
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1413
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1414
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1415
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 1416
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1417
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    new-instance v4, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda17;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1427
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-static {v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1428
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupDivider:Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1429
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupTranslateButton:Landroid/widget/TextView;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-static {v4, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1430
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupTranslateButton:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1432
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->deleteView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1433
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    if-eqz v1, :cond_2

    .line 1434
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 1437
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupLayout:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/16 v2, 0x3e8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 1438
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 1439
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1440
    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->startAnimation()V

    return-void
.end method

.method private showProgressView(ZZ)V
    .locals 13

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 4500
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->lineProgressTickRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_0

    .line 4502
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 4503
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    const p2, 0x3e99999a    # 0.3f

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 4504
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->lineProgressTickRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_1

    .line 4506
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    goto/16 :goto_1

    .line 4509
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    .line 4510
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 4512
    :cond_2
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    const/4 p1, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x6

    const v8, 0x3dcccccd    # 0.1f

    if-eqz p2, :cond_3

    .line 4514
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v9, v3}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 4515
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->menuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 4516
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    new-array v7, v7, [Landroid/animation/Animator;

    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-object v11, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v12, v2, [F

    aput v8, v12, v3

    .line 4517
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v7, v3

    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-object v11, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v12, v2, [F

    aput v8, v12, v3

    .line 4518
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v2

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v2, [F

    aput v0, v11, v3

    .line 4519
    invoke-static {v8, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v7, v6

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v2, [F

    aput v1, v8, v3

    .line 4520
    invoke-static {v0, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v7, v5

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v2, [F

    aput v1, v6, v3

    .line 4521
    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v7, v4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    aput v1, v2, v3

    .line 4522
    invoke-static {v0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v7, p1

    .line 4516
    invoke-virtual {v9, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 4524
    :cond_3
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v9, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4525
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->menuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 4526
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    new-array v7, v7, [Landroid/animation/Animator;

    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v11, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v12, v2, [F

    aput v8, v12, v3

    .line 4527
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v7, v3

    iget-object v10, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v11, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v12, v2, [F

    aput v8, v12, v3

    .line 4528
    invoke-static {v10, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v7, v2

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v2, [F

    aput v0, v11, v3

    .line 4529
    invoke-static {v8, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v7, v6

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v2, [F

    aput v1, v8, v3

    .line 4530
    invoke-static {v0, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v7, v5

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v2, [F

    aput v1, v6, v3

    .line 4531
    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v7, v4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v2, [F

    aput v1, v2, v3

    .line 4532
    invoke-static {v0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v7, p1

    .line 4526
    invoke-virtual {v9, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4534
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/ArticleViewer$23;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/ArticleViewer$23;-><init>(Lorg/telegram/ui/ArticleViewer;Z)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4553
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4554
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :goto_1
    return-void
.end method

.method private showSearch(Z)V
    .locals 11

    .line 3943
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-ne v0, p1, :cond_1

    goto/16 :goto_d

    .line 3946
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 3947
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3948
    iput-object v3, p0, Lorg/telegram/ui/ArticleViewer;->searchText:Ljava/lang/String;

    .line 3949
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$1800(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3950
    iput v2, p0, Lorg/telegram/ui/ArticleViewer;->currentSearchIndex:I

    .line 3951
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->attachedToWindow:Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_c

    .line 3952
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v5, 0xfa

    .line 3953
    invoke-virtual {v0, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_3

    .line 3955
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3956
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v5, v4, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    goto :goto_2

    .line 3958
    :cond_3
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3959
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 3960
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 3961
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->updateWindowLayoutParamsForSearch()V

    .line 3963
    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3964
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v6, v7, :cond_7

    if-eqz p1, :cond_4

    .line 3966
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3968
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->menuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->menuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 3969
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->menuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getTop()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer;->menuContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    mul-int v8, v6, v6

    mul-int v9, v7, v7

    add-int/2addr v8, v9

    int-to-double v8, v8

    .line 3970
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    .line 3971
    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->searchContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_5

    move v10, v4

    goto :goto_3

    :cond_5
    move v10, v8

    :goto_3
    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v8, v4

    :goto_4
    invoke-static {v9, v6, v7, v10, v8}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v6

    .line 3972
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3973
    new-instance v7, Lorg/telegram/ui/ArticleViewer$20;

    invoke-direct {v7, p0, p1}, Lorg/telegram/ui/ArticleViewer$20;-><init>(Lorg/telegram/ui/ArticleViewer;Z)V

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_6

    .line 3982
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->searchContainer:Landroid/widget/FrameLayout;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v1, [F

    if-eqz p1, :cond_8

    move v9, v3

    goto :goto_5

    :cond_8
    move v9, v4

    :goto_5
    aput v9, v8, v2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    if-nez p1, :cond_9

    .line 3985
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v1, [F

    aput v4, v8, v2

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3987
    :cond_9
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->searchShadow:Landroid/view/View;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    if-eqz p1, :cond_a

    goto :goto_7

    :cond_a
    move v3, v4

    :goto_7
    aput v3, v1, v2

    invoke-static {v6, v7, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3988
    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 3989
    new-instance v1, Lorg/telegram/ui/ArticleViewer$21;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ArticleViewer$21;-><init>(Lorg/telegram/ui/ArticleViewer;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4011
    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-nez p1, :cond_b

    .line 4012
    sget-boolean p1, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->keyboardVisible:Z

    if-eqz p1, :cond_b

    .line 4013
    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->runAfterKeyboardClose:Landroid/animation/AnimatorSet;

    .line 4014
    new-instance p1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda21;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_d

    .line 4021
    :cond_b
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_d

    .line 4024
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_d

    move v1, v3

    goto :goto_8

    :cond_d
    move v1, v4

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4025
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x4

    if-eqz p1, :cond_e

    move v5, v1

    goto :goto_9

    :cond_e
    move v5, v2

    :goto_9
    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4026
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    if-eqz p1, :cond_f

    move v5, v4

    goto :goto_a

    :cond_f
    move v5, v3

    :goto_a
    invoke-virtual {v0, v5, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 4027
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchShadow:Landroid/view/View;

    if-eqz p1, :cond_10

    goto :goto_b

    :cond_10
    move v3, v4

    :goto_b
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_11

    .line 4029
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_c

    .line 4031
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4032
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4033
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4035
    :goto_c
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->updateWindowLayoutParamsForSearch()V

    :cond_12
    :goto_d
    return-void
.end method

.method private showTranslateDialog(Ljava/lang/String;)V
    .locals 4

    .line 212
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lcom/iMe/model/translation/TranslationArgs;

    sget-object v2, Lcom/iMe/fork/enums/TranslationDialogType;->INCOMING:Lcom/iMe/fork/enums/TranslationDialogType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/iMe/model/translation/TranslationArgs;-><init>(Lcom/iMe/fork/enums/TranslationDialogType;Ljava/lang/String;Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;)V

    const/4 p1, 0x0

    invoke-static {v0, v1, v3, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->createInstanceForForkTranslation(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/translation/TranslationArgs;Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;Z)Lcom/iMe/fork/ui/dialog/TranslateAlert;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer;->showDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method private updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 3019
    invoke-virtual {p2, p4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 3021
    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    and-int/lit8 p4, p1, 0x2

    if-eqz p4, :cond_2

    .line 3023
    invoke-virtual {p2, p6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    :cond_2
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    goto :goto_0

    .line 3027
    :cond_3
    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_0
    return-void
.end method

.method private updateInterfaceForCurrentPage(Lorg/telegram/tgnet/TLRPC$WebPage;ZI)V
    .locals 12

    if-eqz p1, :cond_16

    .line 1635
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-nez v0, :cond_0

    goto/16 :goto_c

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_7

    if-eqz p3, :cond_7

    .line 1639
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v5, v4, v2

    .line 1640
    aget-object v6, v4, v3

    aput-object v6, v4, v2

    .line 1641
    aput-object v5, v4, v3

    .line 1643
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v5, v4, v2

    .line 1644
    aget-object v6, v4, v3

    aput-object v6, v4, v2

    .line 1645
    aput-object v5, v4, v3

    .line 1647
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:[Landroidx/recyclerview/widget/LinearLayoutManager;

    aget-object v6, v5, v2

    .line 1648
    aget-object v7, v5, v3

    aput-object v7, v5, v2

    .line 1649
    aput-object v6, v5, v3

    .line 1651
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    aget-object v4, v4, v3

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 1652
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    if-ne p3, v2, :cond_1

    if-ge v4, v5, :cond_2

    .line 1655
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v6, v6, v3

    invoke-virtual {v4, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1656
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v6, v6, v3

    invoke-virtual {v4, v6, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    if-ge v5, v4, :cond_2

    .line 1660
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1661
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 1665
    :cond_2
    :goto_0
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/ArticleViewer;->pageSwitchAnimation:Landroid/animation/AnimatorSet;

    .line 1666
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    if-ne p3, v2, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v2

    .line 1668
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v5, v5, v4

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1669
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_4

    .line 1670
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v5, v5, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_4
    const/16 v5, 0x38

    const/4 v6, 0x0

    if-ne p3, v2, :cond_5

    .line 1673
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->pageSwitchAnimation:Landroid/animation/AnimatorSet;

    new-array v8, v1, [Landroid/animation/Animator;

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v9, v9, v3

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v11, v1, [F

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v11, v3

    aput v6, v11, v2

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v8, v3

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v5, v5, v3

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v1, [F

    fill-array-data v9, :array_0

    .line 1674
    invoke-static {v5, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v8, v2

    .line 1673
    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_5
    if-ne p3, v0, :cond_6

    .line 1676
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v7, v7, v3

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1677
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v7, v7, v3

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 1678
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->pageSwitchAnimation:Landroid/animation/AnimatorSet;

    new-array v8, v1, [Landroid/animation/Animator;

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v9, v9, v2

    sget-object v10, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v11, v1, [F

    aput v6, v11, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v11, v2

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v8, v3

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v5, v5, v2

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v1, [F

    fill-array-data v9, :array_1

    .line 1679
    invoke-static {v5, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v8, v2

    .line 1678
    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1681
    :cond_6
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->pageSwitchAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1682
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->pageSwitchAnimation:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1683
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->pageSwitchAnimation:Landroid/animation/AnimatorSet;

    new-instance v6, Lorg/telegram/ui/ArticleViewer$2;

    invoke-direct {v6, p0, v4}, Lorg/telegram/ui/ArticleViewer$2;-><init>(Lorg/telegram/ui/ArticleViewer;I)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1696
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->pageSwitchAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    :cond_7
    if-nez p2, :cond_9

    .line 1699
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->site_name:Ljava/lang/String;

    if-nez v5, :cond_8

    const-string v5, ""

    :cond_8
    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 1700
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->clear(Z)V

    .line 1701
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_9
    if-eqz p2, :cond_a

    .line 1704
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$WebPage;

    goto :goto_3

    :cond_a
    move-object v1, p1

    .line 1705
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v4, v4, p2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Page;->rtl:Z

    invoke-static {v4, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7102(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Z)Z

    .line 1706
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object p1, p1, p2

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7200(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    .line 1707
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object p1, p1, p2

    invoke-static {p1, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$002(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$WebPage;)Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 1710
    iget-object p1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v4, v3

    :goto_4
    if-ge v4, p1, :cond_10

    .line 1712
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-nez v4, :cond_d

    .line 1714
    iput-boolean v2, v8, Lorg/telegram/tgnet/TLRPC$PageBlock;->first:Z

    .line 1715
    instance-of v5, v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v5, :cond_e

    .line 1716
    move-object v5, v8

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    .line 1717
    invoke-direct {p0, v5, v3}, Lorg/telegram/ui/ArticleViewer;->getBlockCaption(Lorg/telegram/tgnet/TLRPC$PageBlock;I)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v6

    .line 1718
    invoke-direct {p0, v5, v2}, Lorg/telegram/ui/ArticleViewer;->getBlockCaption(Lorg/telegram/tgnet/TLRPC$PageBlock;I)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v5

    if-eqz v6, :cond_b

    .line 1719
    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-eqz v6, :cond_c

    :cond_b
    if-eqz v5, :cond_e

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-nez v5, :cond_e

    :cond_c
    if-le p1, v2, :cond_e

    .line 1720
    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 1721
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    if-eqz v6, :cond_e

    .line 1722
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v6, v6, p2

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    invoke-static {v6, v5}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7302(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    goto :goto_5

    :cond_d
    if-ne v4, v2, :cond_e

    .line 1726
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v5, v5, p2

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7300(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    move-result-object v5

    if-eqz v5, :cond_e

    goto :goto_7

    .line 1729
    :cond_e
    :goto_5
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v6, v5, p2

    aget-object v7, v5, p2

    const/4 v9, 0x0

    const/4 v10, 0x0

    add-int/lit8 v5, p1, -0x1

    if-ne v4, v5, :cond_f

    move v11, v4

    goto :goto_6

    :cond_f
    move v11, v3

    :goto_6
    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7400(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1732
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    .line 1734
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq p1, v2, :cond_12

    if-ne p3, v0, :cond_11

    goto :goto_8

    .line 1748
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:[Landroidx/recyclerview/widget/LinearLayoutManager;

    aget-object p1, p1, p2

    invoke-virtual {p1, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_b

    .line 1735
    :cond_12
    :goto_8
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p3, "articles"

    invoke-virtual {p1, p3, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1736
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "article"

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1737
    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1739
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "r"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-le v6, v5, :cond_13

    goto :goto_9

    :cond_13
    move v2, v3

    :goto_9
    if-ne v4, v2, :cond_14

    .line 1740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "o"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object p3, p3, p2

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_a

    :cond_14
    const/16 p1, 0xa

    .line 1742
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    :goto_a
    if-eq v1, v0, :cond_15

    .line 1745
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:[Landroidx/recyclerview/widget/LinearLayoutManager;

    aget-object p3, p3, p2

    invoke-virtual {p3, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_15
    :goto_b
    if-nez p2, :cond_16

    .line 1751
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->checkScrollAnimated()V

    :cond_16
    :goto_c
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updatePaintColors()V
    .locals 3

    .line 3032
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    .line 3033
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3034
    aget-object v1, v1, v0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3037
    :cond_0
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->listTextPointerPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_1

    .line 3038
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3040
    :cond_1
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->listTextNumPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_2

    .line 3041
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3043
    :cond_2
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_3

    .line 3044
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3046
    :cond_3
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->channelNamePaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_4

    .line 3047
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3049
    :cond_4
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->channelNamePhotoPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_5

    const/4 v1, -0x1

    .line 3050
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3052
    :cond_5
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->relatedArticleHeaderPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_6

    .line 3053
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3055
    :cond_6
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->relatedArticleTextPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_7

    .line 3056
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 3059
    :cond_7
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_8

    .line 3060
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getGrayTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    :cond_8
    const/4 v0, 0x1

    .line 3063
    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->createPaint(Z)V

    .line 3065
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->titleTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3066
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->kickerTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3067
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->subtitleTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3068
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->headerTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3069
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->subheaderTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3070
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->quoteTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3071
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->preformattedTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3072
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->paragraphTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3073
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->listTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3074
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3075
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->mediaCaptionTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3076
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->mediaCreditTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3077
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3078
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->photoCreditTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3079
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->authorTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3080
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->footerTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3081
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostCaptionTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3082
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->relatedArticleTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3083
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->detailsTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    .line 3084
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->tableTextPaints:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->setMapColors(Landroid/util/SparseArray;)V

    return-void
.end method

.method private updatePaintFonts()V
    .locals 13

    .line 2964
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "articles"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    const-string v3, "font_type"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2965
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    if-nez v0, :cond_0

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    :goto_0
    const-string v3, "serif"

    if-nez v0, :cond_1

    const-string v0, "fonts/ritalic.ttf"

    .line 2966
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 2967
    :goto_1
    iget v4, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    if-nez v4, :cond_2

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    :goto_2
    move-object v10, v4

    .line 2968
    iget v4, p0, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    if-nez v4, :cond_3

    const-string v3, "fonts/rmediumitalic.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_3

    :cond_3
    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    :goto_3
    move-object v11, v3

    move v12, v2

    .line 2970
    :goto_4
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->quoteTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v12, v3, :cond_4

    .line 2971
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->quoteTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    sget-object v3, Lorg/telegram/ui/ArticleViewer;->quoteTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    move-object v6, v1

    move-object v7, v11

    move-object v8, v10

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_4
    move v12, v2

    .line 2973
    :goto_5
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->preformattedTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v12, v3, :cond_5

    .line 2974
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->preformattedTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    sget-object v3, Lorg/telegram/ui/ArticleViewer;->preformattedTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    move-object v6, v1

    move-object v7, v11

    move-object v8, v10

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_5
    move v12, v2

    .line 2976
    :goto_6
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->paragraphTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v12, v3, :cond_6

    .line 2977
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->paragraphTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    sget-object v3, Lorg/telegram/ui/ArticleViewer;->paragraphTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    move-object v6, v1

    move-object v7, v11

    move-object v8, v10

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_6
    move v12, v2

    .line 2979
    :goto_7
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->listTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v12, v3, :cond_7

    .line 2980
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->listTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    sget-object v3, Lorg/telegram/ui/ArticleViewer;->listTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    move-object v6, v1

    move-object v7, v11

    move-object v8, v10

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_7
    move v12, v2

    .line 2982
    :goto_8
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->embedPostTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v12, v3, :cond_8

    .line 2983
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->embedPostTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    sget-object v3, Lorg/telegram/ui/ArticleViewer;->embedPostTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    move-object v6, v1

    move-object v7, v11

    move-object v8, v10

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_8
    move v12, v2

    .line 2985
    :goto_9
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->mediaCaptionTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v12, v3, :cond_9

    .line 2986
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->mediaCaptionTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    sget-object v3, Lorg/telegram/ui/ArticleViewer;->mediaCaptionTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    move-object v6, v1

    move-object v7, v11

    move-object v8, v10

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_9
    move v12, v2

    .line 2988
    :goto_a
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->mediaCreditTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v12, v3, :cond_a

    .line 2989
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->mediaCreditTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    sget-object v3, Lorg/telegram/ui/ArticleViewer;->mediaCreditTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    move-object v6, v1

    move-object v7, v11

    move-object v8, v10

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_a
    move v12, v2

    .line 2991
    :goto_b
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v12, v3, :cond_b

    .line 2992
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    sget-object v3, Lorg/telegram/ui/ArticleViewer;->photoCaptionTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    move-object v6, v1

    move-object v7, v11

    move-object v8, v10

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_b
    move v12, v2

    .line 2994
    :goto_c
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->photoCreditTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v12, v3, :cond_c

    .line 2995
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->photoCreditTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    sget-object v3, Lorg/telegram/ui/ArticleViewer;->photoCreditTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    move-object v6, v1

    move-object v7, v11

    move-object v8, v10

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_c
    move v12, v2

    .line 2997
    :goto_d
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->authorTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v12, v3, :cond_d

    .line 2998
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->authorTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    sget-object v3, Lorg/telegram/ui/ArticleViewer;->authorTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    move-object v6, v1

    move-object v7, v11

    move-object v8, v10

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    :cond_d
    move v12, v2

    .line 3000
    :goto_e
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->footerTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v12, v3, :cond_e

    .line 3001
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->footerTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    sget-object v3, Lorg/telegram/ui/ArticleViewer;->footerTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    move-object v6, v1

    move-object v7, v11

    move-object v8, v10

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_e
    move v12, v2

    .line 3003
    :goto_f
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->embedPostCaptionTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v12, v3, :cond_f

    .line 3004
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->embedPostCaptionTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    sget-object v3, Lorg/telegram/ui/ArticleViewer;->embedPostCaptionTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    move-object v6, v1

    move-object v7, v11

    move-object v8, v10

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    :cond_f
    move v12, v2

    .line 3006
    :goto_10
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->relatedArticleTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v12, v3, :cond_10

    .line 3007
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->relatedArticleTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    sget-object v3, Lorg/telegram/ui/ArticleViewer;->relatedArticleTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    move-object v6, v1

    move-object v7, v11

    move-object v8, v10

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    :cond_10
    move v12, v2

    .line 3009
    :goto_11
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->detailsTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v12, v3, :cond_11

    .line 3010
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->detailsTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    sget-object v3, Lorg/telegram/ui/ArticleViewer;->detailsTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    move-object v6, v1

    move-object v7, v11

    move-object v8, v10

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 3012
    :cond_11
    :goto_12
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->tableTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_12

    .line 3013
    sget-object v3, Lorg/telegram/ui/ArticleViewer;->tableTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    sget-object v3, Lorg/telegram/ui/ArticleViewer;->tableTextPaints:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/text/TextPaint;

    move-object v3, p0

    move-object v6, v1

    move-object v7, v11

    move-object v8, v10

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lorg/telegram/ui/ArticleViewer;->updateFontEntry(ILandroid/text/TextPaint;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_12
    return-void
.end method

.method private updatePaintSize()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 2959
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateSearchButtons()V
    .locals 7

    .line 4054
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchResults:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 4057
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->searchUpButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentSearchIndex:I

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4058
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchDownButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentSearchIndex:I

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-eq v1, v4, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 4059
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchUpButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    move v1, v5

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 4060
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchDownButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v4, v5

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 4061
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gez v0, :cond_5

    .line 4063
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_4

    :cond_5
    if-nez v0, :cond_6

    .line 4065
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/messenger/R$string;->NoResult:I

    const-string v2, "NoResult"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_4

    :cond_6
    if-ne v0, v3, :cond_7

    .line 4067
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v1, Lorg/telegram/messenger/R$string;->OneResult:I

    const-string v2, "OneResult"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    goto :goto_4

    .line 4069
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v4, "CountOfResults"

    invoke-static {v4, v0}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->currentSearchIndex:I

    add-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    :goto_4
    return-void
.end method

.method private updateWindowLayoutParamsForSearch()V
    .locals 0

    return-void
.end method

.method private wrapInTableBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 2

    .line 1616
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1617
    check-cast p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    .line 1619
    new-instance v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$1;)V

    .line 1620
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->access$6800(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->access$6802(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    .line 1621
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->access$6300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->wrapInTableBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->access$6302(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    return-object v0

    .line 1623
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    if-eqz v0, :cond_1

    .line 1624
    check-cast p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    .line 1626
    new-instance v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$1;)V

    .line 1627
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$7000(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$7002(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    .line 1628
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->wrapInTableBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6402(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    return-object v0

    :cond_1
    return-object p2
.end method


# virtual methods
.method protected cancelCheckLongPress()V
    .locals 3

    const/4 v0, 0x0

    .line 1931
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    .line 1932
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1933
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1934
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    .line 1936
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    if-eqz v0, :cond_1

    .line 1937
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1938
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    :cond_1
    return-void
.end method

.method public close(ZZ)V
    .locals 8

    .line 4765
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->closeAnimationInProgress:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->checkAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 4768
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 4769
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4770
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4771
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 4772
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 4773
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    goto :goto_0

    .line 4774
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

    if-eqz v0, :cond_2

    .line 4775
    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->exitFullscreen()V

    :cond_2
    :goto_0
    if-nez p2, :cond_3

    return-void

    .line 4781
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4782
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    return-void

    .line 4785
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 4786
    invoke-direct {p0, v2}, Lorg/telegram/ui/ArticleViewer;->showSearch(Z)V

    return-void

    .line 4789
    :cond_5
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 4790
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    invoke-virtual {v0, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 4791
    iput v2, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    .line 4792
    invoke-direct {p0, v3, v2}, Lorg/telegram/ui/ArticleViewer;->showProgressView(ZZ)V

    .line 4794
    :cond_6
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    if-eqz v0, :cond_7

    .line 4795
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    invoke-virtual {v0, v4, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 4796
    iput v2, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    .line 4797
    invoke-direct {p0, v3, v2}, Lorg/telegram/ui/ArticleViewer;->showProgressView(ZZ)V

    .line 4799
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->saveCurrentPagePosition()V

    if-eqz p1, :cond_8

    if-nez p2, :cond_8

    .line 4801
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->removeLastPageFromStack()Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    .line 4806
    :cond_8
    iget p1, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4807
    iget p1, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4808
    iget p1, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4809
    iget p1, p0, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4810
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 4812
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_9

    .line 4813
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4814
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4817
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4820
    :cond_9
    :goto_1
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p2, 0x3

    new-array p2, p2, [Landroid/animation/Animator;

    .line 4821
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v3, [F

    const/4 v6, 0x0

    aput v6, v5, v2

    .line 4822
    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p2, v2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v3, [F

    aput v6, v5, v2

    .line 4823
    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p2, v3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v7, v5, [F

    aput v6, v7, v2

    const/16 v2, 0x38

    .line 4824
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    aput v2, v7, v3

    invoke-static {v0, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p2, v5

    .line 4821
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4826
    iput v5, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    .line 4827
    new-instance p2, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda23;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    .line 4837
    invoke-virtual {p1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4838
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4839
    new-instance p2, Lorg/telegram/ui/ArticleViewer$26;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ArticleViewer$26;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4848
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/ArticleViewer;->transitionAnimationStartTime:J

    .line 4849
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt p2, v0, :cond_a

    .line 4850
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v5, v1}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 4852
    :cond_a
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_b
    :goto_2
    return-void
.end method

.method public destroyArticleViewer()V
    .locals 4

    .line 4963
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 4967
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4968
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 4969
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 4971
    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4973
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 4975
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 4976
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    const/4 v3, 0x1

    .line 4977
    invoke-virtual {v2, v3}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->destroyWebView(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4979
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4981
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 4983
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4985
    :goto_2
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    .line 4986
    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 4987
    sput-object v1, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    :cond_3
    :goto_3
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 6

    .line 2885
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_2

    .line 2886
    aget-object p1, p3, v1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 2887
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_9

    move p1, v1

    .line 2888
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    array-length p3, p2

    if-ge p1, p3, :cond_9

    .line 2889
    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    move p3, v1

    :goto_1
    if-ge p3, p2, :cond_1

    .line 2891
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v2, v2, p1

    invoke-virtual {v2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2892
    instance-of v3, v2, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    if-eqz v3, :cond_0

    .line 2893
    check-cast v2, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    .line 2894
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->updateButtonState(Z)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2899
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-eq p1, p2, :cond_6

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne p1, p2, :cond_3

    goto :goto_5

    .line 2915
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    if-ne p1, p2, :cond_9

    .line 2916
    aget-object p1, p3, v1

    check-cast p1, Ljava/lang/Integer;

    .line 2917
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p2, :cond_9

    move p2, v1

    .line 2918
    :goto_2
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    array-length v0, p3

    if-ge p2, v0, :cond_9

    .line 2919
    aget-object p3, p3, p2

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    move v0, v1

    :goto_3
    if-ge v0, p3, :cond_5

    .line 2921
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v2, v2, p2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2922
    instance-of v3, v2, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    if-eqz v3, :cond_4

    .line 2923
    check-cast v2, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    .line 2924
    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2925
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 2926
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 2928
    iget v0, p3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iput v0, v3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2929
    iget v0, p3, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    iput v0, v3, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 2930
    iget p3, p3, Lorg/telegram/messenger/MessageObject;->audioPlayerDuration:I

    iput p3, v3, Lorg/telegram/messenger/MessageObject;->audioPlayerDuration:I

    .line 2931
    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->updatePlayingMessageProgress()V

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 2900
    :cond_6
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_9

    move p1, v1

    .line 2901
    :goto_6
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    array-length p3, p2

    if-ge p1, p3, :cond_9

    .line 2902
    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    move p3, v1

    :goto_7
    if-ge p3, p2, :cond_8

    .line 2904
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v2, v2, p1

    invoke-virtual {v2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2905
    instance-of v3, v2, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    if-eqz v3, :cond_7

    .line 2906
    check-cast v2, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    .line 2907
    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 2909
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->updateButtonState(Z)V

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_9
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 4991
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    return v0
.end method

.method public open(Lorg/telegram/messenger/MessageObject;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4290
    invoke-direct {p0, p1, v0, v0, v1}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public open(Lorg/telegram/tgnet/TLRPC$TL_webPage;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4294
    invoke-direct {p0, v0, p1, p2, v1}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public openPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z
    .locals 5

    .line 11514
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 11519
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v0, :cond_2

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer$WebPageUtils;->isVideo(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 11523
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    move-object v0, p1

    move p1, v1

    goto :goto_1

    .line 11520
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$21500(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11521
    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$21500(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 11526
    :goto_1
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    .line 11527
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 11528
    new-instance v3, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object p2

    const/4 v4, 0x0

    invoke-direct {v3, p0, p2, v0, v4}, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/util/List;Lorg/telegram/ui/ArticleViewer$1;)V

    new-instance p2, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;-><init>(Lorg/telegram/ui/ArticleViewer;Ljava/util/List;)V

    invoke-virtual {v2, p1, v3, p2}, Lorg/telegram/ui/PhotoViewer;->openPhoto(ILorg/telegram/ui/PhotoViewer$PageBlocksAdapter;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11529
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->checkVideoPlayer()V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_2
    return v1
.end method

.method public setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 35

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    .line 3100
    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 3101
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, v6, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    .line 3102
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v0, v6, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3103
    iget v0, v6, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v0, v6, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3104
    iget v0, v6, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v0, v6, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3105
    iget v0, v6, Lorg/telegram/ui/ArticleViewer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v0, v6, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3106
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-ne v0, v7, :cond_0

    .line 3107
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->updatePaintColors()V

    .line 3108
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->refreshThemeColors()V

    return-void

    .line 3111
    :cond_0
    iput-object v7, v6, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    .line 3113
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "articles"

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "font_type"

    .line 3114
    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v6, Lorg/telegram/ui/ArticleViewer;->selectedFont:I

    .line 3115
    invoke-direct {v6, v8}, Lorg/telegram/ui/ArticleViewer;->createPaint(Z)V

    .line 3116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    .line 3118
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->layer_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 3119
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->slide_dot_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->slideDotDrawable:Landroid/graphics/drawable/Drawable;

    .line 3120
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->slide_dot_big:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->slideDotBigDrawable:Landroid/graphics/drawable/Drawable;

    .line 3121
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->scrimPaint:Landroid/graphics/Paint;

    .line 3123
    new-instance v0, Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ArticleViewer$WindowView;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    .line 3124
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 3125
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 3126
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 3127
    new-instance v0, Lorg/telegram/ui/ArticleViewer$7;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ArticleViewer$7;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    .line 3175
    iget-object v1, v6, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const/4 v10, -0x1

    const/16 v11, 0x33

    invoke-static {v10, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v0, v12, :cond_1

    .line 3178
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 3179
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    sget-object v1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda4;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 3188
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    .line 3189
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 3190
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/4 v13, 0x4

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3191
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v2, v6, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    invoke-static {v10, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3193
    new-instance v0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-direct {v0, v7}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 3194
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3195
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 3196
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    const/16 v3, 0x11

    invoke-static {v10, v10, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3198
    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, v7}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->fullscreenTextureView:Landroid/view/TextureView;

    const/4 v14, 0x2

    new-array v0, v14, [Lorg/telegram/ui/Components/RecyclerListView;

    .line 3200
    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    new-array v0, v14, [Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    .line 3201
    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    new-array v0, v14, [Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3202
    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->layoutManager:[Landroidx/recyclerview/widget/LinearLayoutManager;

    move v0, v8

    .line 3203
    :goto_0
    iget-object v2, v6, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    array-length v2, v2

    const/16 v5, 0x38

    if-ge v0, v2, :cond_3

    .line 3204
    iget-object v2, v6, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    new-instance v3, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v4, v6, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v3, v6, v4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    aput-object v3, v2, v0

    .line 3205
    iget-object v2, v6, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/ArticleViewer$8;

    invoke-direct {v4, v6, v7, v3}, Lorg/telegram/ui/ArticleViewer$8;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    aput-object v4, v2, v0

    .line 3264
    iget-object v2, v6, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 3265
    iget-object v2, v6, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v2, v2, v0

    iget-object v4, v6, Lorg/telegram/ui/ArticleViewer;->layoutManager:[Landroidx/recyclerview/widget/LinearLayoutManager;

    new-instance v11, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v15, v6, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v11, v15, v9, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    aput-object v11, v4, v0

    invoke-virtual {v2, v11}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3266
    iget-object v2, v6, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3267
    iget-object v2, v6, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v8}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 3268
    iget-object v2, v6, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v2, v2, v0

    if-nez v0, :cond_2

    move v15, v8

    goto :goto_1

    :cond_2
    const/16 v15, 0x8

    :goto_1
    invoke-virtual {v2, v15}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 3269
    iget-object v2, v6, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v2, v2, v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v2, v8, v4, v8, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 3270
    iget-object v2, v6, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v2, v2, v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 3271
    iget-object v2, v6, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v4, v6, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v4, v4, v0

    invoke-static {v10, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3272
    iget-object v2, v6, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v2, v2, v0

    new-instance v4, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda44;

    invoke-direct {v4, v6}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 3280
    iget-object v2, v6, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v2, v2, v0

    new-instance v4, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda43;

    invoke-direct {v4, v6, v3}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 3366
    iget-object v2, v6, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v2, v2, v0

    new-instance v3, Lorg/telegram/ui/ArticleViewer$9;

    invoke-direct {v3, v6}, Lorg/telegram/ui/ArticleViewer$9;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v11, 0x33

    goto/16 :goto_0

    .line 3388
    :cond_3
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->headerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3389
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->statusBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3390
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->headerProgressPaint:Landroid/graphics/Paint;

    const v2, -0xdbdbda

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3391
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->navigationBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3392
    new-instance v0, Lorg/telegram/ui/ArticleViewer$10;

    invoke-direct {v0, v6, v7}, Lorg/telegram/ui/ArticleViewer$10;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    .line 3430
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 3431
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    invoke-static {v10, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3432
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda12;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3434
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x13

    .line 3435
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 3436
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 3437
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v11, "fonts/rmedium.ttf"

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3438
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const v1, -0x4c4c4d

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 3439
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 3440
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v15, 0x1c

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    .line 3441
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    iget-object v3, v6, Lorg/telegram/ui/ArticleViewer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v16, -0x1

    const/16 v17, 0x38

    const/16 v18, 0x33

    const/16 v19, 0x48

    const/16 v20, 0x0

    const/16 v21, 0x60

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3442
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->titleTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x42400000    # 48.0f

    const/16 v22, 0x0

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->addFrameParams(Landroid/view/View;IIFFFF)V

    .line 3444
    new-instance v0, Lorg/telegram/ui/Components/LineProgressView;

    invoke-direct {v0, v7}, Lorg/telegram/ui/Components/LineProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    .line 3445
    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    .line 3446
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 3447
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    .line 3448
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    iget-object v3, v6, Lorg/telegram/ui/ArticleViewer;->lineProgressView:Lorg/telegram/ui/Components/LineProgressView;

    const/16 v16, -0x1

    const/16 v17, 0x2

    const/16 v18, 0x53

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3450
    new-instance v0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda25;

    invoke-direct {v0, v6}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->lineProgressTickRunnable:Ljava/lang/Runnable;

    .line 3464
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->menuContainer:Landroid/widget/FrameLayout;

    .line 3465
    iget-object v3, v6, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    const/16 v4, 0x35

    const/16 v15, 0x30

    invoke-static {v15, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3466
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->menuContainer:Landroid/widget/FrameLayout;

    const/16 v18, 0x30

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->addFrameParams(Landroid/view/View;IIFFFF)V

    .line 3468
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchShadow:Landroid/view/View;

    .line 3469
    sget v3, Lorg/telegram/messenger/R$drawable;->header_shadow:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3470
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchShadow:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 3471
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v3, v6, Lorg/telegram/ui/ArticleViewer;->searchShadow:Landroid/view/View;

    const/16 v17, -0x1

    const/16 v18, 0x3

    const/16 v19, 0x33

    const/16 v20, 0x0

    const/16 v21, 0x38

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3473
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v3, v6, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchContainer:Landroid/widget/FrameLayout;

    .line 3474
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 3475
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3476
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v12, :cond_4

    .line 3477
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 3479
    :cond_4
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    iget-object v3, v6, Lorg/telegram/ui/ArticleViewer;->searchContainer:Landroid/widget/FrameLayout;

    invoke-static {v10, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v3, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3481
    new-instance v0, Lorg/telegram/ui/ArticleViewer$11;

    iget-object v3, v6, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v6, v3}, Lorg/telegram/ui/ArticleViewer$11;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v3, 0x3fc00000    # 1.5f

    .line 3493
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 3494
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 3495
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 3496
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v9, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 3497
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 3498
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 3499
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v3, Lorg/telegram/messenger/R$string;->Search:I

    const-string v14, "Search"

    invoke-static {v14, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3500
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 3501
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 3502
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/high16 v9, 0x80000

    or-int/2addr v0, v9

    .line 3503
    iget-object v9, v6, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setInputType(I)V

    const/16 v0, 0x17

    if-ge v4, v0, :cond_5

    .line 3505
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v9, Lorg/telegram/ui/ArticleViewer$12;

    invoke-direct {v9, v6}, Lorg/telegram/ui/ArticleViewer$12;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 3523
    :cond_5
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v9, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda18;

    invoke-direct {v9, v6}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 3529
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v9, Lorg/telegram/ui/ArticleViewer$13;

    invoke-direct {v9, v6}, Lorg/telegram/ui/ArticleViewer$13;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3582
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v9, 0x2000003

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3583
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 3584
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v9, v6, Lorg/telegram/ui/ArticleViewer;->searchField:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v20, -0x1

    const/16 v21, 0x24

    const/16 v22, 0x10

    const/16 v23, 0x48

    const/16 v24, 0x0

    const/16 v25, 0x30

    const/16 v26, 0x0

    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v9, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3586
    new-instance v0, Lorg/telegram/ui/ArticleViewer$14;

    iget-object v5, v6, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v6, v5}, Lorg/telegram/ui/ArticleViewer$14;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->clearButton:Landroid/widget/ImageView;

    .line 3605
    new-instance v5, Lorg/telegram/ui/ArticleViewer$15;

    invoke-direct {v5, v6}, Lorg/telegram/ui/ArticleViewer$15;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3611
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->clearButton:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3612
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3613
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->clearButton:Landroid/widget/ImageView;

    const/high16 v5, 0x42340000    # 45.0f

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setRotation(F)V

    .line 3614
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 3615
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->clearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 3616
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->clearButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda5;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3623
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->clearButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->ClearButton:I

    const-string v5, "ClearButton"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3624
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ArticleViewer;->clearButton:Landroid/widget/ImageView;

    invoke-static {v15, v10, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3626
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    .line 3627
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3628
    new-instance v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v0, v8}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/high16 v2, 0x43480000    # 200.0f

    .line 3629
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;->setAnimationTime(F)V

    .line 3630
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    .line 3631
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotatedColor(I)V

    .line 3632
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v8}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    .line 3633
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    iget-object v2, v6, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3634
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const v9, 0x40ffffff    # 7.9999995f

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3635
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const/16 v5, 0x36

    const/16 v12, 0x38

    invoke-static {v5, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3636
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda8;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3648
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrGoBack:I

    const-string v5, "AccDescrGoBack"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3651
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v2, v6, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const/4 v12, 0x0

    invoke-direct {v0, v2, v12, v9, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->translatePageItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 3652
    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setDuplicateParentStateEnabled(Z)V

    .line 3653
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->translatePageItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 3654
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->translatePageItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_translate:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 3655
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->translatePageItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3656
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->translatePageItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda6;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3657
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->menuContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ArticleViewer;->translatePageItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v5, 0x38

    invoke-static {v15, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3659
    new-instance v2, Lorg/telegram/ui/ArticleViewer$16;

    iget-object v1, v6, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const/16 v21, 0x0

    const v22, 0x40ffffff    # 7.9999995f

    const v23, -0x4c4c4d

    move-object v0, v2

    move-object/from16 v24, v1

    move-object/from16 v1, p0

    move-object v12, v2

    move-object/from16 v2, v24

    move v10, v3

    move-object/from16 v3, v21

    move/from16 v27, v4

    move/from16 v4, v22

    move v15, v5

    move/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer$16;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;II)V

    iput-object v12, v6, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v0, 0x1

    .line 3706
    invoke-virtual {v12, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLayoutInScreen(Z)V

    .line 3707
    iget-object v1, v6, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setDuplicateParentStateEnabled(Z)V

    .line 3708
    iget-object v1, v6, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 3709
    iget-object v1, v6, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 3710
    iget-object v1, v6, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_search:I

    invoke-static {v14, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 3711
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_share:I

    sget v2, Lorg/telegram/messenger/R$string;->ShareFile:I

    const-string v3, "ShareFile"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 3712
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_openin:I

    sget v2, Lorg/telegram/messenger/R$string;->OpenInExternalApp:I

    const-string v3, "OpenInExternalApp"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 3713
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_settings_old:I

    sget v2, Lorg/telegram/messenger/R$string;->Settings:I

    const-string v4, "Settings"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 3714
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3715
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v2, "AccDescrMoreOptions"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3716
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->menuContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0x30

    invoke-static {v2, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3717
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/high16 v31, 0x42400000    # 48.0f

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->addFrameParams(Landroid/view/View;IIFFFF)V

    .line 3718
    new-instance v0, Lorg/telegram/ui/Components/ContextProgressView;

    const/4 v1, 0x2

    invoke-direct {v0, v7, v1}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/16 v1, 0x8

    .line 3719
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    .line 3720
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->menuContainer:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/16 v2, 0x30

    invoke-static {v2, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3721
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->addFrameParams(Landroid/view/View;IIFFFF)V

    .line 3722
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda11;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3723
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->menuButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda40;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 3789
    new-instance v0, Lorg/telegram/ui/ArticleViewer$17;

    iget-object v1, v6, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v6, v1}, Lorg/telegram/ui/ArticleViewer$17;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    .line 3798
    sget-object v1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda16;->INSTANCE:Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda16;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3799
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 3800
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3801
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 3802
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 3803
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 3804
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 3805
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    const/16 v2, 0x50

    const/16 v4, 0x33

    const/4 v5, -0x1

    invoke-static {v5, v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3807
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, v6, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchUpButton:Landroid/widget/ImageView;

    .line 3808
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3809
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchUpButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_go_up:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3810
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchUpButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3811
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchUpButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3812
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lorg/telegram/ui/ArticleViewer;->searchUpButton:Landroid/widget/ImageView;

    const/16 v28, 0x30

    const/16 v29, 0x30

    const/16 v30, 0x35

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x30

    const/16 v34, 0x0

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3813
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchUpButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda14;

    invoke-direct {v2, v6}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3814
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchUpButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrSearchNext:I

    const-string v4, "AccDescrSearchNext"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3816
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, v6, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchDownButton:Landroid/widget/ImageView;

    .line 3817
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3818
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchDownButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_go_down:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3819
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchDownButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 3820
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchDownButton:Landroid/widget/ImageView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3821
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ArticleViewer;->searchDownButton:Landroid/widget/ImageView;

    const/16 v33, 0x0

    invoke-static/range {v28 .. v34}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3822
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchDownButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda7;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3823
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchDownButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrSearchPrev:I

    const-string v2, "AccDescrSearchPrev"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3825
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v1, v6, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 3826
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 3827
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 3828
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3829
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 3830
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ArticleViewer;->searchCountText:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/16 v11, 0x13

    const/16 v12, 0x12

    const/4 v13, 0x0

    const/16 v14, 0x6c

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3832
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    .line 3833
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, -0x3

    .line 3834
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 3835
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x33

    .line 3836
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x62

    .line 3837
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x30

    .line 3838
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/high16 v1, 0x20000

    .line 3839
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v0, 0x700

    .line 3842
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I[ZZ)I

    move-result v1

    .line 3843
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v2

    const v3, 0x3f389375    # 0.721f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    move v2, v8

    :goto_2
    if-eqz v2, :cond_7

    const/16 v2, 0x1a

    move/from16 v3, v27

    if-lt v3, v2, :cond_8

    const/16 v0, 0x710

    goto :goto_3

    :cond_7
    move/from16 v3, v27

    .line 3848
    :cond_8
    :goto_3
    iget-object v2, v6, Lorg/telegram/ui/ArticleViewer;->navigationBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3849
    iget-object v1, v6, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const/16 v0, 0x15

    if-lt v3, v0, :cond_9

    .line 3852
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x7ffeff00

    or-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v0, 0x1c

    if-lt v3, v0, :cond_9

    const/4 v0, 0x1

    .line 3856
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 3860
    :cond_9
    new-instance v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;-><init>()V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    .line 3861
    iget-object v1, v6, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setParentView(Landroid/view/ViewGroup;)V

    .line 3863
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda42;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setOnTranslate(Lorg/telegram/ui/Cells/TextSelectionHelper$OnTranslateListener;)V

    .line 3871
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    iget-object v1, v6, Lorg/telegram/ui/ArticleViewer;->layoutManager:[Landroidx/recyclerview/widget/LinearLayoutManager;

    aget-object v1, v1, v8

    iput-object v1, v0, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3872
    new-instance v1, Lorg/telegram/ui/ArticleViewer$18;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ArticleViewer$18;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->setCallback(Lorg/telegram/ui/Cells/TextSelectionHelper$Callback;)V

    .line 3887
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3889
    new-instance v0, Lorg/telegram/ui/PinchToZoomHelper;

    iget-object v1, v6, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, v1}, Lorg/telegram/ui/PinchToZoomHelper;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    iput-object v0, v6, Lorg/telegram/ui/ArticleViewer;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    .line 3890
    new-instance v1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda45;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PinchToZoomHelper;->setClipBoundsListener(Lorg/telegram/ui/PinchToZoomHelper$ClipBoundsListener;)V

    .line 3894
    iget-object v0, v6, Lorg/telegram/ui/ArticleViewer;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$19;

    invoke-direct {v1, v6}, Lorg/telegram/ui/ArticleViewer$19;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PinchToZoomHelper;->setCallback(Lorg/telegram/ui/PinchToZoomHelper$Callback;)V

    .line 3902
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->updatePaintColors()V

    return-void
.end method

.method public showDialog(Landroid/app/Dialog;)V
    .locals 2

    .line 4995
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 4999
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 5000
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 5001
    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5004
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5007
    :cond_1
    :goto_0
    :try_start_1
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    const/4 v0, 0x1

    .line 5008
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5009
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5010
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 5012
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method protected startCheckLongPress(FFLandroid/view/View;)V
    .locals 2

    .line 1915
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1918
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    .line 1919
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    if-nez v0, :cond_1

    .line 1920
    new-instance v0, Lorg/telegram/ui/ArticleViewer$CheckForTap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ArticleViewer$CheckForTap;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$1;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    .line 1922
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "bottomSheet"

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelperBottomSheet:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    if-eqz v0, :cond_2

    float-to-int p1, p1

    float-to-int p2, p2

    .line 1923
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->setMaybeView(IILandroid/view/View;)V

    goto :goto_0

    .line 1925
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;->setMaybeView(IILandroid/view/View;)V

    .line 1927
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p3

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateThemeColors(F)V
    .locals 3

    .line 2943
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->refreshThemeColors()V

    .line 2944
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->updatePaintColors()V

    .line 2945
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    if-eqz v0, :cond_0

    .line 2946
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 2947
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:[Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 2948
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2949
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->searchPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 2951
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    .line 2952
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
