.class public Lorg/telegram/ui/FilteredSearchView;
.super Landroid/widget/FrameLayout;
.source "FilteredSearchView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/FilteredSearchView$UiCallback;,
        Lorg/telegram/ui/FilteredSearchView$Delegate;,
        Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;,
        Lorg/telegram/ui/FilteredSearchView$MessageHashId;,
        Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;,
        Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;,
        Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;
    }
.end annotation


# static fields
.field private static arrowSpan:[Landroid/text/SpannableStringBuilder;


# instance fields
.field adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private chatPreviewDelegate:Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;

.field clearCurrentResultsRunnable:Ljava/lang/Runnable;

.field private columnsCount:I

.field private currentDataQuery:Ljava/lang/String;

.field currentIncludeFolder:Z

.field currentSearchDialogId:J

.field currentSearchFilter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

.field currentSearchMaxDate:J

.field currentSearchMinDate:J

.field currentSearchString:Ljava/lang/String;

.field private delegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

.field private dialogsAdapter:Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;

.field emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private endReached:Z

.field private floatingDateAnimation:Landroid/animation/AnimatorSet;

.field private final floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

.field private hideFloatingDateRunnable:Ljava/lang/Runnable;

.field ignoreRequestLayout:Z

.field private isLoading:Z

.field lastAccount:I

.field lastMessagesSearchString:Ljava/lang/String;

.field lastSearchFilterQueryString:Ljava/lang/String;

.field public final layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field localTipArchive:Z

.field localTipChats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field localTipDates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/FiltersView$DateData;",
            ">;"
        }
    .end annotation
.end field

.field private final messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

.field public messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public messagesById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private nextSearchRate:I

.field private notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field parentActivity:Landroid/app/Activity;

.field parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private photoViewerClassGuid:I

.field private provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field public recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private requestIndex:I

.field searchRunnable:Ljava/lang/Runnable;

.field public sectionArrays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;"
        }
    .end annotation
.end field

.field public sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sharedAudioAdapter:Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

.field private sharedDocumentsAdapter:Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

.field private sharedLinksAdapter:Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;

.field private sharedPhotoVideoAdapter:Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;

.field private sharedVoiceAdapter:Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

.field private totalCount:I

.field private uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

.field private useFromUserAsAvatar:Z


# direct methods
.method public static synthetic $r8$lambda$8UwfH3mdZkotR3y-_E8hc-YQsH0(Lorg/telegram/ui/FilteredSearchView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FilteredSearchView;->lambda$new$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$BsnzUij_jZTDtAtWPzFY3LOAXtE(Lorg/telegram/ui/FilteredSearchView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/FilteredSearchView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Oyo4l-zUW9jUmZAD9pXbnHQs-ek(Lorg/telegram/ui/FilteredSearchView;ILjava/lang/String;IZLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;JJLjava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lorg/telegram/ui/FilteredSearchView;->lambda$search$3(ILjava/lang/String;IZLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;JJLjava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ROQEma6w1s5sjrlZS4SgVM0HcY8(Lorg/telegram/ui/FilteredSearchView;JLjava/lang/String;Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;IJJZZLjava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lorg/telegram/ui/FilteredSearchView;->lambda$search$4(JLjava/lang/String;Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;IJJZZLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jINeGAocI0Xg2zzsNWeIkYhSK5U(Lorg/telegram/ui/FilteredSearchView;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;IZLjava/lang/String;Ljava/util/ArrayList;Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Lorg/telegram/ui/FilteredSearchView;->lambda$search$2(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;IZLjava/lang/String;Ljava/util/ArrayList;Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/SpannableStringBuilder;

    .line 120
    sput-object v0, Lorg/telegram/ui/FilteredSearchView;->arrowSpan:[Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 11

    .line 284
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->messagesById:Landroid/util/SparseArray;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->sectionArrays:Ljava/util/HashMap;

    const/4 v0, 0x3

    .line 99
    iput v0, p0, Lorg/telegram/ui/FilteredSearchView;->columnsCount:I

    .line 124
    new-instance v1, Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/telegram/ui/FilteredSearchView$MessageHashId;-><init>(IJ)V

    iput-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->localTipDates:Ljava/util/ArrayList;

    .line 138
    new-instance v1, Lorg/telegram/ui/FilteredSearchView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/FilteredSearchView$1;-><init>(Lorg/telegram/ui/FilteredSearchView;)V

    iput-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->clearCurrentResultsRunnable:Ljava/lang/Runnable;

    .line 152
    new-instance v1, Lorg/telegram/ui/FilteredSearchView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/FilteredSearchView$2;-><init>(Lorg/telegram/ui/FilteredSearchView;)V

    iput-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 274
    new-instance v1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 279
    new-instance v1, Lorg/telegram/ui/FilteredSearchView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/FilteredSearchView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/FilteredSearchView;)V

    iput-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->hideFloatingDateRunnable:Ljava/lang/Runnable;

    .line 285
    iput-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 286
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->parentActivity:Landroid/app/Activity;

    .line 287
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 288
    new-instance v1, Lorg/telegram/ui/FilteredSearchView$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/FilteredSearchView$3;-><init>(Lorg/telegram/ui/FilteredSearchView;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 316
    new-instance v3, Lorg/telegram/ui/FilteredSearchView$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lorg/telegram/ui/FilteredSearchView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/FilteredSearchView;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 329
    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/FilteredSearchView$4;

    invoke-direct {v3, p0}, Lorg/telegram/ui/FilteredSearchView$4;-><init>(Lorg/telegram/ui/FilteredSearchView;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;)V

    .line 362
    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 364
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 365
    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 366
    new-instance v0, Lorg/telegram/ui/FilteredSearchView$5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/FilteredSearchView$5;-><init>(Lorg/telegram/ui/FilteredSearchView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 372
    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 374
    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setSectionsType(I)V

    .line 375
    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/FilteredSearchView$6;

    invoke-direct {v4, p0}, Lorg/telegram/ui/FilteredSearchView$6;-><init>(Lorg/telegram/ui/FilteredSearchView;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 416
    new-instance v1, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v1, v4, v2, v2}, Lorg/telegram/ui/Cells/ChatActionCell;->setCustomDate(IZZ)V

    const/4 v2, 0x0

    .line 418
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 419
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaTimeBackground:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaTimeText:I

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Cells/ChatActionCell;->setOverrideColor(II)V

    const/16 v2, 0x30

    .line 420
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x31

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 421
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    new-instance v1, Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;

    invoke-direct {v1, p0}, Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;-><init>(Lorg/telegram/ui/FilteredSearchView;)V

    iput-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->dialogsAdapter:Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;

    .line 424
    new-instance v1, Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;-><init>(Lorg/telegram/ui/FilteredSearchView;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->sharedPhotoVideoAdapter:Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;

    .line 425
    new-instance v1, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x1

    invoke-direct {v1, p0, v2, v4}, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/FilteredSearchView;Landroid/content/Context;I)V

    iput-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->sharedDocumentsAdapter:Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

    .line 426
    new-instance v1, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;-><init>(Lorg/telegram/ui/FilteredSearchView;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->sharedLinksAdapter:Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;

    .line 427
    new-instance v1, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x4

    invoke-direct {v1, p0, v2, v5}, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/FilteredSearchView;Landroid/content/Context;I)V

    iput-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->sharedAudioAdapter:Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

    .line 428
    new-instance v1, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v3}, Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;-><init>(Lorg/telegram/ui/FilteredSearchView;Landroid/content/Context;I)V

    iput-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->sharedVoiceAdapter:Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

    .line 430
    new-instance v1, Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-direct {v1, p1, v0, v4}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 431
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 432
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 433
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/FilteredSearchView;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lorg/telegram/ui/FilteredSearchView;->isLoading:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/FilteredSearchView;)I
    .locals 0

    .line 85
    iget p0, p0, Lorg/telegram/ui/FilteredSearchView;->totalCount:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/FilteredSearchView;)Lorg/telegram/ui/Cells/ChatActionCell;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/FilteredSearchView;ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/FilteredSearchView;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/FilteredSearchView;)Lorg/telegram/ui/FilteredSearchView$MessageHashId;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/FilteredSearchView;->messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/FilteredSearchView;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lorg/telegram/ui/FilteredSearchView;->useFromUserAsAvatar:Z

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/FilteredSearchView;Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/FilteredSearchView;->openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/ui/FilteredSearchView;Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lorg/telegram/ui/FilteredSearchView;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/FilteredSearchView;)I
    .locals 0

    .line 85
    iget p0, p0, Lorg/telegram/ui/FilteredSearchView;->nextSearchRate:I

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/FilteredSearchView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/FilteredSearchView;)Lorg/telegram/messenger/AnimationNotificationsLocker;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/FilteredSearchView;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/FilteredSearchView;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lorg/telegram/ui/FilteredSearchView;->endReached:Z

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/FilteredSearchView;)Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/FilteredSearchView;->sharedPhotoVideoAdapter:Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/FilteredSearchView;Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/FilteredSearchView;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/FilteredSearchView;)Lorg/telegram/ui/FilteredSearchView$UiCallback;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/FilteredSearchView;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/FilteredSearchView;)Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/FilteredSearchView;->chatPreviewDelegate:Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/FilteredSearchView;)I
    .locals 0

    .line 85
    iget p0, p0, Lorg/telegram/ui/FilteredSearchView;->columnsCount:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/FilteredSearchView;)Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lorg/telegram/ui/FilteredSearchView;->currentDataQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/FilteredSearchView;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lorg/telegram/ui/FilteredSearchView;->showFloatingDateView()V

    return-void
.end method

.method public static createFromInfoString(Lorg/telegram/messenger/MessageObject;I)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x1

    .line 437
    invoke-static {p0, v0, p1}, Lorg/telegram/ui/FilteredSearchView;->createFromInfoString(Lorg/telegram/messenger/MessageObject;ZI)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static createFromInfoString(Lorg/telegram/messenger/MessageObject;ZI)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    .line 441
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/ui/FilteredSearchView;->createFromInfoString(Lorg/telegram/messenger/MessageObject;ZILandroid/text/TextPaint;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static createFromInfoString(Lorg/telegram/messenger/MessageObject;ZILandroid/text/TextPaint;)Ljava/lang/CharSequence;
    .locals 11

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 448
    :cond_0
    sget-object v1, Lorg/telegram/ui/FilteredSearchView;->arrowSpan:[Landroid/text/SpannableStringBuilder;

    aget-object v2, v1, p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_7

    .line 449
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v5, ">"

    invoke-direct {v2, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    aput-object v2, v1, p2

    const/4 v1, 0x2

    if-nez p2, :cond_1

    .line 452
    sget v2, Lorg/telegram/messenger/R$drawable;->attach_arrow_right:I

    goto :goto_0

    :cond_1
    if-ne p2, v3, :cond_2

    .line 454
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_mini_arrow_mediathin:I

    goto :goto_0

    :cond_2
    if-ne p2, v1, :cond_6

    .line 456
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_mini_arrow_mediabold:I

    .line 460
    :goto_0
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v5, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 461
    new-instance v5, Lorg/telegram/ui/Components/ColoredImageSpan;

    if-nez p2, :cond_3

    move v6, v1

    goto :goto_1

    :cond_3
    move v6, v3

    :goto_1
    invoke-direct {v5, v2, v6}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    if-eq p2, v3, :cond_4

    if-ne p2, v1, :cond_5

    :cond_4
    const v1, 0x3f59999a    # 0.85f

    .line 464
    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(F)V

    .line 466
    :cond_5
    sget-object v1, Lorg/telegram/ui/FilteredSearchView;->arrowSpan:[Landroid/text/SpannableStringBuilder;

    aget-object v2, v1, p2

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v5, v4, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_6
    return-object v0

    .line 469
    :cond_7
    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v7, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    goto :goto_3

    :cond_8
    move-object v1, v2

    .line 471
    :goto_3
    iget-object v7, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v7, v7, v5

    if-eqz v7, :cond_9

    sget v7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    goto :goto_4

    :cond_9
    move-object v7, v2

    :goto_4
    if-nez v7, :cond_b

    .line 473
    iget-object v7, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v7, v7, v5

    if-eqz v7, :cond_a

    sget v7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    goto :goto_5

    :cond_a
    move-object v7, v2

    .line 475
    :cond_b
    :goto_5
    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v8, v8, v5

    if-eqz v8, :cond_c

    sget v8, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v9, v9, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v8

    goto :goto_6

    :cond_c
    move-object v8, v2

    :goto_6
    if-nez v8, :cond_e

    .line 477
    iget-object v8, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v5, v8, v5

    if-eqz v5, :cond_d

    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    move-object v8, v5

    goto :goto_7

    :cond_d
    move-object v8, v2

    .line 479
    :cond_e
    :goto_7
    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_f

    if-nez p1, :cond_f

    move-object v8, v2

    :cond_f
    if-eqz v1, :cond_13

    if-eqz v8, :cond_13

    .line 483
    iget-object p1, v8, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 484
    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 485
    sget v5, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v5

    iget-wide v6, v8, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {p0, v3}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result p0

    invoke-virtual {v5, v6, v7, p0}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 487
    invoke-static {p0, v2}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_10
    if-nez p3, :cond_11

    move-object p0, v2

    goto :goto_8

    .line 490
    :cond_11
    invoke-virtual {p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    :goto_8
    invoke-static {p1, p0, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p0

    .line 491
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 493
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    if-nez p3, :cond_12

    goto :goto_9

    :cond_12
    invoke-virtual {p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    :goto_9
    invoke-static {v1, v2, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    const/16 v1, 0x200a

    .line 494
    invoke-virtual {p3, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    sget-object v2, Lorg/telegram/ui/FilteredSearchView;->arrowSpan:[Landroid/text/SpannableStringBuilder;

    aget-object p2, v2, p2

    .line 495
    invoke-virtual {p3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 496
    invoke-virtual {p2, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 497
    invoke-virtual {p2, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v2, p1

    goto :goto_c

    :cond_13
    if-eqz v1, :cond_15

    .line 500
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p0

    if-nez p3, :cond_14

    goto :goto_a

    :cond_14
    invoke-virtual {p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    :goto_a
    invoke-static {p0, v2, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_c

    :cond_15
    if-eqz v7, :cond_18

    .line 502
    iget-object p1, v7, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 503
    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 504
    sget p2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object p2

    iget-wide v5, v7, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-object p0, p0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {p0, v3}, Lorg/telegram/messenger/MessageObject;->getTopicId(Lorg/telegram/tgnet/TLRPC$Message;Z)I

    move-result p0

    invoke-virtual {p2, v5, v6, p0}, Lorg/telegram/messenger/TopicsController;->findTopic(JI)Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 506
    invoke-static {p0, v2}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getTopicSpannedName(Lorg/telegram/tgnet/TLRPC$ForumTopic;Landroid/graphics/Paint;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_16
    if-nez p3, :cond_17

    goto :goto_b

    .line 509
    :cond_17
    invoke-virtual {p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    :goto_b
    invoke-static {p1, v2, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_18
    :goto_c
    if-nez v2, :cond_19

    goto :goto_d

    :cond_19
    move-object v0, v2

    :goto_d
    return-object v0
.end method

.method private hideFloatingDateView(Z)V
    .locals 7

    .line 1739
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->hideFloatingDateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1740
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1743
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1744
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 1745
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1746
    iput-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1749
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xb4

    .line 1750
    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1751
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    .line 1752
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, v6

    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v4, [F

    const/16 v5, 0x30

    .line 1753
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v3, v6

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, v4

    .line 1751
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1754
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1755
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/FilteredSearchView$9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/FilteredSearchView$9;-><init>(Lorg/telegram/ui/FilteredSearchView;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1761
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1763
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x1

    .line 279
    invoke-direct {p0, v0}, Lorg/telegram/ui/FilteredSearchView;->hideFloatingDateView(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;I)V
    .locals 2

    .line 317
    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 318
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0, v1}, Lorg/telegram/ui/FilteredSearchView;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V

    goto :goto_0

    .line 319
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v0, :cond_1

    .line 320
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0, v1}, Lorg/telegram/ui/FilteredSearchView;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V

    goto :goto_0

    .line 321
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v0, :cond_2

    .line 322
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedAudioCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0, v1}, Lorg/telegram/ui/FilteredSearchView;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V

    goto :goto_0

    .line 323
    :cond_2
    instance-of v0, p1, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v0, :cond_3

    .line 324
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0, v1}, Lorg/telegram/ui/FilteredSearchView;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V

    goto :goto_0

    .line 325
    :cond_3
    instance-of v0, p1, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v0, :cond_4

    .line 326
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0, v1}, Lorg/telegram/ui/FilteredSearchView;->onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private synthetic lambda$search$2(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;IZLjava/lang/String;Ljava/util/ArrayList;Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    move-object/from16 v3, p13

    .line 651
    iget v4, v0, Lorg/telegram/ui/FilteredSearchView;->requestIndex:I

    move/from16 v5, p1

    if-eq v5, v4, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    .line 654
    iput-boolean v4, v0, Lorg/telegram/ui/FilteredSearchView;->isLoading:Z

    const-string v5, "SearchEmptyViewFilteredSubtitle2"

    const-string v6, "SearchEmptyViewTitle2"

    const/4 v7, 0x1

    if-eqz p2, :cond_1

    .line 656
    iget-object v1, v0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->SearchEmptyViewTitle2:I

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    iget-object v1, v0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 658
    iget-object v1, v0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v1, v0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v1, v4, v7}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    return-void

    .line 663
    :cond_1
    iget-object v8, v0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v8, v4}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(Z)V

    .line 665
    move-object/from16 v8, p3

    check-cast v8, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 666
    iget v9, v8, Lorg/telegram/tgnet/TLRPC$messages_Messages;->next_rate:I

    iput v9, v0, Lorg/telegram/ui/FilteredSearchView;->nextSearchRate:I

    .line 667
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v11, v8, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v11, v7, v7}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 668
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v4}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 669
    invoke-static/range {p4 .. p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v9, v10, v4}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    if-nez p5, :cond_2

    .line 671
    iget-object v9, v0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 672
    iget-object v9, v0, Lorg/telegram/ui/FilteredSearchView;->messagesById:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 673
    iget-object v9, v0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 674
    iget-object v9, v0, Lorg/telegram/ui/FilteredSearchView;->sectionArrays:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 676
    :cond_2
    iget v8, v8, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    iput v8, v0, Lorg/telegram/ui/FilteredSearchView;->totalCount:I

    .line 677
    iput-object v1, v0, Lorg/telegram/ui/FilteredSearchView;->currentDataQuery:Ljava/lang/String;

    .line 678
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v4

    :goto_0
    if-ge v9, v8, :cond_5

    move-object/from16 v10, p7

    .line 680
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject;

    .line 681
    iget-object v12, v0, Lorg/telegram/ui/FilteredSearchView;->sectionArrays:Ljava/util/HashMap;

    iget-object v13, v11, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    if-nez v12, :cond_3

    .line 683
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 684
    iget-object v13, v0, Lorg/telegram/ui/FilteredSearchView;->sectionArrays:Ljava/util/HashMap;

    iget-object v14, v11, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object v13, v0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    iget-object v14, v11, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    :cond_3
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    iget-object v12, v0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    iget-object v12, v0, Lorg/telegram/ui/FilteredSearchView;->messagesById:Landroid/util/SparseArray;

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v13

    invoke-virtual {v12, v13, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 691
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 692
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v12

    iget v13, v0, Lorg/telegram/ui/FilteredSearchView;->photoViewerClassGuid:I

    invoke-virtual {v12, v11, v13}, Lorg/telegram/ui/PhotoViewer;->addPhoto(Lorg/telegram/messenger/MessageObject;I)V

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 695
    :cond_5
    iget-object v9, v0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, v0, Lorg/telegram/ui/FilteredSearchView;->totalCount:I

    if-le v9, v10, :cond_6

    .line 696
    iget-object v9, v0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/FilteredSearchView;->totalCount:I

    .line 698
    :cond_6
    iget-object v9, v0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, v0, Lorg/telegram/ui/FilteredSearchView;->totalCount:I

    if-lt v9, v10, :cond_7

    move v9, v7

    goto :goto_1

    :cond_7
    move v9, v4

    :goto_1
    iput-boolean v9, v0, Lorg/telegram/ui/FilteredSearchView;->endReached:Z

    .line 700
    iget-object v9, v0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-eqz v9, :cond_e

    if-eqz v2, :cond_d

    .line 702
    iget-object v9, v0, Lorg/telegram/ui/FilteredSearchView;->currentDataQuery:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-wide/16 v12, 0x0

    cmp-long v9, p9, v12

    if-nez v9, :cond_c

    cmp-long v9, p11, v12

    if-nez v9, :cond_c

    .line 703
    iget-object v5, v0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v5, v5, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->SearchEmptyViewTitle:I

    const-string v9, "SearchEmptyViewTitle"

    invoke-static {v9, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    iget v5, v2, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    if-ne v5, v7, :cond_8

    .line 706
    sget v5, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitleFiles:I

    const-string v6, "SearchEmptyViewFilteredSubtitleFiles"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_8
    if-nez v5, :cond_9

    .line 708
    sget v5, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitleMedia:I

    const-string v6, "SearchEmptyViewFilteredSubtitleMedia"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_9
    if-ne v5, v10, :cond_a

    .line 710
    sget v5, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitleLinks:I

    const-string v6, "SearchEmptyViewFilteredSubtitleLinks"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_a
    if-ne v5, v11, :cond_b

    .line 712
    sget v5, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitleMusic:I

    const-string v6, "SearchEmptyViewFilteredSubtitleMusic"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 714
    :cond_b
    sget v5, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitleVoice:I

    const-string v6, "SearchEmptyViewFilteredSubtitleVoice"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 716
    :goto_2
    iget-object v6, v0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v6, v6, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 717
    iget-object v6, v0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v6, v6, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 719
    :cond_c
    iget-object v9, v0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v9, v9, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v12, Lorg/telegram/messenger/R$string;->SearchEmptyViewTitle2:I

    invoke-static {v6, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    iget-object v6, v0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v6, v6, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 721
    iget-object v6, v0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v6, v6, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    sget v9, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    invoke-static {v5, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 724
    :cond_d
    iget-object v5, v0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v5, v5, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v9, Lorg/telegram/messenger/R$string;->SearchEmptyViewTitle2:I

    invoke-static {v6, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v5, v0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v5, v5, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_e
    :goto_3
    if-eqz v2, :cond_15

    .line 730
    iget v2, v2, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    if-eqz v2, :cond_13

    if-eq v2, v7, :cond_12

    if-eq v2, v10, :cond_11

    if-eq v2, v11, :cond_10

    const/4 v5, 0x5

    if-eq v2, v5, :cond_f

    goto :goto_4

    .line 748
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->sharedVoiceAdapter:Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

    iput-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    goto :goto_4

    .line 745
    :cond_10
    iget-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->sharedAudioAdapter:Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

    iput-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    goto :goto_4

    .line 742
    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->sharedLinksAdapter:Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;

    iput-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    goto :goto_4

    .line 739
    :cond_12
    iget-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->sharedDocumentsAdapter:Lorg/telegram/ui/FilteredSearchView$SharedDocumentsAdapter;

    iput-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    goto :goto_4

    .line 732
    :cond_13
    iget-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->currentDataQuery:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 733
    iget-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->sharedPhotoVideoAdapter:Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;

    iput-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    goto :goto_4

    .line 735
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->dialogsAdapter:Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;

    iput-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    goto :goto_4

    .line 752
    :cond_15
    iget-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->dialogsAdapter:Lorg/telegram/ui/FilteredSearchView$OnlyUserFiltersAdapter;

    iput-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 754
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    iget-object v5, v0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eq v2, v5, :cond_16

    .line 755
    iget-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_16
    if-nez p5, :cond_1e

    .line 759
    iget-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz v3, :cond_17

    .line 761
    iget-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_17
    if-eqz v1, :cond_1b

    .line 763
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v11, :cond_1b

    sget v2, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v3, "SavedMessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "saved messages"

    .line 764
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_18
    move v2, v4

    .line 766
    :goto_5
    iget-object v3, v0, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1a

    .line 767
    iget-object v3, v0, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_19

    .line 768
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v3, v0, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v3, v5, v9

    if-nez v3, :cond_19

    move v2, v7

    goto :goto_6

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1a
    move v2, v4

    :goto_6
    if-nez v2, :cond_1b

    .line 774
    iget-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 777
    :cond_1b
    iget-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->localTipDates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 778
    iget-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->localTipDates:Ljava/util/ArrayList;

    move-object/from16 v3, p14

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 779
    iput-boolean v4, v0, Lorg/telegram/ui/FilteredSearchView;->localTipArchive:Z

    if-eqz v1, :cond_1d

    .line 780
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v11, :cond_1d

    sget v2, Lorg/telegram/messenger/R$string;->ArchiveSearchFilter:I

    const-string v3, "ArchiveSearchFilter"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    const-string v2, "archive"

    .line 781
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 782
    :cond_1c
    iput-boolean v7, v0, Lorg/telegram/ui/FilteredSearchView;->localTipArchive:Z

    .line 784
    :cond_1d
    iget-object v1, v0, Lorg/telegram/ui/FilteredSearchView;->delegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    if-eqz v1, :cond_1e

    .line 785
    iget-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->currentDataQuery:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    iget-object v5, v0, Lorg/telegram/ui/FilteredSearchView;->localTipDates:Ljava/util/ArrayList;

    iget-boolean v6, v0, Lorg/telegram/ui/FilteredSearchView;->localTipArchive:Z

    invoke-interface {v1, v2, v3, v5, v6}, Lorg/telegram/ui/FilteredSearchView$Delegate;->updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    :cond_1e
    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_7
    if-ge v4, v8, :cond_20

    .line 792
    iget-object v3, v0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 793
    instance-of v5, v3, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v5, :cond_1f

    .line 795
    iget-object v1, v0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    move v2, v1

    move-object v1, v3

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_20
    if-eqz v1, :cond_21

    .line 800
    iget-object v3, v0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 802
    :cond_21
    iget-object v3, v0, Lorg/telegram/ui/FilteredSearchView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_22

    iget-object v3, v0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_23

    :cond_22
    iget-object v3, v0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/FilteredSearchView;->sharedPhotoVideoAdapter:Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;

    if-eq v3, v4, :cond_24

    if-eqz v1, :cond_24

    .line 804
    :cond_23
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/FilteredSearchView$7;

    invoke-direct {v4, p0, v1, v2}, Lorg/telegram/ui/FilteredSearchView$7;-><init>(Lorg/telegram/ui/FilteredSearchView;Landroid/view/View;I)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 855
    :cond_24
    iget-object v1, v0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$search$3(ILjava/lang/String;IZLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;JJLjava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 17

    .line 639
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-nez p13, :cond_0

    .line 641
    move-object/from16 v0, p12

    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 642
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 644
    new-instance v4, Lorg/telegram/messenger/MessageObject;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x1

    move/from16 v7, p1

    invoke-direct {v4, v7, v5, v2, v6}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    move-object/from16 v9, p2

    .line 645
    invoke-virtual {v4, v9}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move/from16 v7, p1

    move-object/from16 v9, p2

    .line 650
    new-instance v16, Lorg/telegram/ui/FilteredSearchView$$ExternalSyntheticLambda1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p13

    move-object/from16 v4, p12

    move/from16 v5, p1

    move/from16 v6, p4

    move-object/from16 v7, p2

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    invoke-direct/range {v0 .. v15}, Lorg/telegram/ui/FilteredSearchView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/FilteredSearchView;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;IZLjava/lang/String;Ljava/util/ArrayList;Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$search$4(JLjava/lang/String;Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;IJJZZLjava/lang/String;I)V
    .locals 23

    move-object/from16 v13, p0

    move-wide/from16 v7, p1

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    const-wide/16 v0, 0x0

    cmp-long v2, v7, v0

    const/16 v4, 0x14

    const/4 v5, 0x0

    const-wide/16 v9, 0x3e8

    const/4 v11, 0x0

    if-eqz v2, :cond_4

    .line 580
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 581
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 582
    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    if-nez v6, :cond_0

    .line 583
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v4, v6, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    :goto_0
    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 584
    invoke-static/range {p5 .. p5}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    cmp-long v4, p6, v0

    if-lez v4, :cond_1

    .line 586
    div-long v14, p6, v9

    long-to-int v4, v14

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->min_date:I

    :cond_1
    cmp-long v0, p8, v0

    if-lez v0, :cond_2

    .line 589
    div-long v0, p8, v9

    long-to-int v0, v0

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_date:I

    :cond_2
    if-eqz p10, :cond_3

    .line 591
    iget-object v0, v13, Lorg/telegram/ui/FilteredSearchView;->lastMessagesSearchString:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v13, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 592
    iget-object v0, v13, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 593
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    goto :goto_1

    .line 595
    :cond_3
    iput v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    :goto_1
    move-object v14, v2

    goto/16 :goto_4

    .line 599
    :cond_4
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 600
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 601
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 602
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 603
    invoke-static/range {p5 .. p5}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v20, 0x0

    iget-object v2, v13, Lorg/telegram/ui/FilteredSearchView;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v2}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->isCrossAccountsForward()Z

    move-result v22

    move-object/from16 v16, p3

    move-object/from16 v17, v11

    move/from16 v21, p11

    invoke-virtual/range {v14 .. v22}, Lorg/telegram/messenger/MessagesStorage;->localSearch(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZ)V

    .line 606
    :cond_5
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;-><init>()V

    .line 607
    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->limit:I

    .line 608
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->q:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 609
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    goto :goto_2

    :cond_6
    iget-object v4, v6, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    :goto_2
    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    cmp-long v4, p6, v0

    if-lez v4, :cond_7

    .line 611
    div-long v14, p6, v9

    long-to-int v4, v14

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->min_date:I

    :cond_7
    cmp-long v0, p8, v0

    if-lez v0, :cond_8

    .line 614
    div-long v0, p8, v9

    long-to-int v0, v0

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->max_date:I

    :cond_8
    if-eqz p10, :cond_9

    .line 616
    iget-object v0, v13, Lorg/telegram/ui/FilteredSearchView;->lastMessagesSearchString:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v13, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 617
    iget-object v0, v13, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 618
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 619
    iget v1, v13, Lorg/telegram/ui/FilteredSearchView;->nextSearchRate:I

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    .line 620
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    .line 621
    invoke-static/range {p5 .. p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_3

    .line 623
    :cond_9
    iput v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    .line 624
    iput v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 625
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 627
    :goto_3
    iget v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    move/from16 v0, p11

    .line 628
    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->folder_id:I

    goto/16 :goto_1

    .line 632
    :goto_4
    iput-object v3, v13, Lorg/telegram/ui/FilteredSearchView;->lastMessagesSearchString:Ljava/lang/String;

    move-object/from16 v0, p12

    .line 633
    iput-object v0, v13, Lorg/telegram/ui/FilteredSearchView;->lastSearchFilterQueryString:Ljava/lang/String;

    .line 636
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 637
    iget-object v0, v13, Lorg/telegram/ui/FilteredSearchView;->lastMessagesSearchString:Ljava/lang/String;

    invoke-static {v0, v12}, Lorg/telegram/ui/Adapters/FiltersView;->fillTipDates(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 638
    invoke-static/range {p5 .. p5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v15

    new-instance v9, Lorg/telegram/ui/FilteredSearchView$$ExternalSyntheticLambda3;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v2, p5

    move-object/from16 v3, p3

    move/from16 v4, p13

    move/from16 v5, p10

    move-object/from16 v6, p4

    move-wide/from16 v7, p1

    move-object v13, v9

    move-wide/from16 v9, p6

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/FilteredSearchView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/FilteredSearchView;ILjava/lang/String;IZLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v15, v14, v13}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private onItemClick(ILandroid/view/View;Lorg/telegram/messenger/MessageObject;I)V
    .locals 14

    move-object v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    if-nez v2, :cond_0

    return-void

    .line 1044
    :cond_0
    iget-object v3, v1, Lorg/telegram/ui/FilteredSearchView;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v3}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->actionModeShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1045
    iget-object v3, v1, Lorg/telegram/ui/FilteredSearchView;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    move/from16 v4, p4

    invoke-interface {v3, v2, v0, v4}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->toggleItemSelection(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)V

    return-void

    .line 1048
    :cond_1
    instance-of v3, v0, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v3, :cond_2

    .line 1049
    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v0, v2}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->goToMessage(Lorg/telegram/messenger/MessageObject;)V

    return-void

    .line 1052
    :cond_2
    iget-object v3, v1, Lorg/telegram/ui/FilteredSearchView;->currentSearchFilter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget v3, v3, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    if-nez v3, :cond_3

    .line 1053
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/FilteredSearchView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1054
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    iget-object v11, v1, Lorg/telegram/ui/FilteredSearchView;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move v5, p1

    invoke-virtual/range {v3 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    .line 1055
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getClassGuid()I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/FilteredSearchView;->photoViewerClassGuid:I

    goto/16 :goto_3

    :cond_3
    const/4 v4, 0x3

    if-eq v3, v4, :cond_f

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    goto/16 :goto_2

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_9

    .line 1061
    instance-of v3, v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v3, :cond_10

    .line 1062
    check-cast v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 1063
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    .line 1064
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoaded()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1065
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/messenger/MessageObject;->canPreviewDocument()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1066
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/FilteredSearchView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1067
    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_5

    .line 1069
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1070
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/FilteredSearchView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1072
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v5

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    iget-object v13, v1, Lorg/telegram/ui/FilteredSearchView;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-virtual/range {v5 .. v13}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    .line 1073
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getClassGuid()I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/FilteredSearchView;->photoViewerClassGuid:I

    goto :goto_0

    .line 1075
    :cond_5
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/FilteredSearchView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1076
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    iget-object v10, v1, Lorg/telegram/ui/FilteredSearchView;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    .line 1077
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getClassGuid()I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/FilteredSearchView;->photoViewerClassGuid:I

    :goto_0
    return-void

    .line 1081
    :cond_6
    iget-object v0, v1, Lorg/telegram/ui/FilteredSearchView;->parentActivity:Landroid/app/Activity;

    iget-object v3, v1, Lorg/telegram/ui/FilteredSearchView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v2, v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->openDocument(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto/16 :goto_3

    .line 1082
    :cond_7
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoading()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1083
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    .line 1084
    iput-boolean v5, v2, Lorg/telegram/messenger/MessageObject;->putInDownloadsStore:Z

    .line 1085
    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/AccountInstance;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v6, v3, v2, v4, v4}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 1086
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    goto :goto_3

    .line 1088
    :cond_8
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1089
    invoke-virtual {v0, v5}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    goto :goto_3

    :cond_9
    const/4 v5, 0x2

    if-ne v3, v5, :cond_10

    .line 1094
    :try_start_0
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/4 v5, 0x0

    if-eqz v3, :cond_a

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    goto :goto_1

    :cond_a
    move-object v3, v5

    :goto_1
    if-eqz v3, :cond_d

    .line 1096
    instance-of v6, v3, Lorg/telegram/tgnet/TLRPC$TL_webPageEmpty;

    if-nez v6, :cond_d

    .line 1097
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v5, :cond_b

    .line 1098
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/FilteredSearchView;->parentActivity:Landroid/app/Activity;

    iget-object v4, v1, Lorg/telegram/ui/FilteredSearchView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1099
    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->getInstance()Lorg/telegram/ui/ArticleViewer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;)Z

    return-void

    .line 1101
    :cond_b
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->embed_url:Ljava/lang/String;

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_c

    .line 1102
    invoke-direct {p0, v3, v2}, Lorg/telegram/ui/FilteredSearchView;->openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V

    return-void

    .line 1105
    :cond_c
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    :cond_d
    if-nez v5, :cond_e

    .line 1109
    check-cast v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/SharedLinkCell;->getLink(I)Ljava/lang/String;

    move-result-object v5

    :cond_e
    if-eqz v5, :cond_10

    .line 1112
    invoke-direct {p0, v5}, Lorg/telegram/ui/FilteredSearchView;->openUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1115
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1057
    :cond_f
    :goto_2
    instance-of v2, v0, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v2, :cond_10

    .line 1058
    check-cast v0, Lorg/telegram/ui/Cells/SharedAudioCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedAudioCell;->didPressedButton()V

    :cond_10
    :goto_3
    return-void
.end method

.method private onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z
    .locals 1

    .line 1533
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v0}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->actionModeShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1534
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v0}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->showActionMode()V

    .line 1536
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v0}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->actionModeShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1537
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->toggleItemSelection(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private openUrl(Ljava/lang/String;)V
    .locals 2

    .line 1494
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->shouldShowUrlInAlert(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v1}, Lorg/telegram/ui/Components/AlertsCreator;->showOpenUrlAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 1497
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->parentActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private openWebView(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/messenger/MessageObject;)V
    .locals 10

    .line 1502
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v2, p0, Lorg/telegram/ui/FilteredSearchView;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

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

.method private showFloatingDateView()V
    .locals 8

    .line 1714
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->hideFloatingDateRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1715
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->hideFloatingDateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x28a

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1716
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1719
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 1720
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1722
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1723
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xb4

    .line 1724
    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1725
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v3, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v1, [F

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 1726
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v1, [F

    const/4 v6, 0x0

    aput v6, v5, v7

    .line 1727
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1725
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1728
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1729
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/FilteredSearchView$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/FilteredSearchView$8;-><init>(Lorg/telegram/ui/FilteredSearchView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1735
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 1

    .line 1521
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_1

    .line 1522
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_1

    .line 1524
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v0, :cond_0

    .line 1525
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Cells/DialogCell;->update(I)Z

    .line 1527
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    .line 1773
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1774
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1775
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    const/4 v2, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1776
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1778
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/SharedDocumentCell;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "nameTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v24

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v23, v3

    move/from16 v28, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1779
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v13, v2, [Ljava/lang/Class;

    const-class v1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v1, v13, v5

    const-string v1, "dateTextView"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v14

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText3:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1780
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    new-array v3, v2, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v6, v3, v5

    const-string v6, "progressView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v24

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_startStopLoadIcon:I

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v23, v3

    move/from16 v28, v18

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1781
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v13, v2, [Ljava/lang/Class;

    const-class v1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v1, v13, v5

    const-string v1, "statusImageView"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v14

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1782
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v3, v2, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v6, v3, v5

    const-string v6, "checkBox"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v24

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v23, v3

    move/from16 v28, v7

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1783
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v13, v2, [Ljava/lang/Class;

    const-class v1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v1, v13, v5

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v14

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    move-object v10, v0

    move/from16 v18, v1

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1784
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v10, v2, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v11, v10, v5

    const-string v11, "thumbImageView"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v24

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_files_folderIcon:I

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v23, v10

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1785
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v31, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v10, v2, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/SharedDocumentCell;

    aput-object v11, v10, v5

    const-string v11, "extTextView"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v33

    sget v37, Lorg/telegram/ui/ActionBar/Theme;->key_files_iconText:I

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v29, v0

    move-object/from16 v30, v3

    move-object/from16 v32, v10

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1787
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v10, v2, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/LoadingCell;

    aput-object v11, v10, v5

    const-string v11, "progressBar"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v24

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    const/16 v22, 0x0

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v23, v10

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1789
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v13, v2, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/SharedAudioCell;

    aput-object v3, v13, v5

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v14

    move-object v10, v0

    move/from16 v18, v7

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1790
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v10, v2, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/SharedAudioCell;

    aput-object v11, v10, v5

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v23, v10

    move/from16 v28, v1

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1791
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v13, v2, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/SharedAudioCell;

    aput-object v3, v13, v5

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_titleTextPaint:Landroid/text/TextPaint;

    move-object v10, v0

    move/from16 v17, v4

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1792
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v10, v2, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/SharedAudioCell;

    aput-object v11, v10, v5

    sget-object v24, Lorg/telegram/ui/ActionBar/Theme;->chat_contextResult_descriptionTextPaint:Landroid/text/TextPaint;

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v23, v10

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1794
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v13, v2, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v3, v13, v5

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1795
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v7, v2, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v10, v7, v5

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v24

    const/16 v27, 0x0

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v23, v7

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1796
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v13, v2, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v3, v13, v5

    const-string v3, "titleTextPaint"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v14

    const/4 v12, 0x0

    move-object v10, v0

    move/from16 v18, v4

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1797
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v2, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v10, v7, v5

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    const/16 v22, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v23, v7

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1798
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v13, v2, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v3, v13, v5

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->linkSelectionPaint:Landroid/graphics/Paint;

    sget v17, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkSelection:I

    move-object v10, v0

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1799
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v2, [Ljava/lang/Class;

    const-class v10, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v10, v7, v5

    const-string v10, "letterDrawable"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v24

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_linkPlaceholderText:I

    const/16 v27, 0x0

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v23, v7

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1800
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v31, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v7, v2, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/SharedLinkCell;

    aput-object v11, v7, v5

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v33

    sget v37, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_linkPlaceholder:I

    move-object/from16 v29, v0

    move-object/from16 v30, v3

    move-object/from16 v32, v7

    invoke-direct/range {v29 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1802
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    or-int v13, v3, v7

    new-array v14, v2, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    aput-object v3, v14, v5

    const/16 v17, 0x0

    move-object v11, v0

    move/from16 v18, v19

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1803
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    new-array v13, v2, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    aput-object v3, v13, v5

    const-string v3, "textView"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v14

    move-object v10, v0

    move/from16 v18, v4

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1804
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v11, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v13, v2, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/SharedMediaSectionCell;

    aput-object v7, v13, v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v14

    const/4 v12, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1806
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v12, v11, v5

    const-class v12, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v12, v11, v2

    sget-object v25, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    const/16 v24, 0x0

    move-object/from16 v20, v0

    move-object/from16 v21, v7

    move-object/from16 v23, v11

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1807
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v2, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v12, v11, v5

    sget-object v32, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countPaint:Landroid/graphics/Paint;

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounter:I

    const/16 v30, 0x0

    const/16 v33, 0x0

    move-object/from16 v28, v0

    move-object/from16 v29, v7

    move-object/from16 v31, v11

    invoke-direct/range {v28 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1808
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v2, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v12, v11, v5

    sget-object v24, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countGrayPaint:Landroid/graphics/Paint;

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterMuted:I

    const/16 v25, 0x0

    move-object/from16 v20, v0

    move-object/from16 v21, v7

    move-object/from16 v23, v11

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1809
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v2, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v12, v11, v5

    sget-object v32, Lorg/telegram/ui/ActionBar/Theme;->dialogs_countTextPaint:Landroid/text/TextPaint;

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterText:I

    move-object/from16 v28, v0

    move-object/from16 v29, v7

    move-object/from16 v31, v11

    invoke-direct/range {v28 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1810
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v10, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v12, v11, v5

    const-class v12, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v12, v11, v2

    new-array v12, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_lockDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v13, v12, v5

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_chats_secretIcon:I

    const/16 v24, 0x0

    move-object/from16 v20, v0

    move-object/from16 v21, v7

    move-object/from16 v23, v11

    move-object/from16 v25, v12

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1811
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v10, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v12, v11, v5

    const-class v12, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v12, v11, v2

    new-array v12, v10, [Landroid/graphics/drawable/Drawable;

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_scamDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    aput-object v13, v12, v5

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_fakeDrawable:Lorg/telegram/ui/Components/ScamDrawable;

    aput-object v13, v12, v2

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_chats_draft:I

    const/16 v32, 0x0

    move-object/from16 v28, v0

    move-object/from16 v29, v7

    move-object/from16 v31, v11

    move-object/from16 v33, v12

    move/from16 v35, v27

    invoke-direct/range {v28 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1812
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v2, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v12, v11, v5

    new-array v12, v10, [Landroid/graphics/drawable/Drawable;

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v13, v12, v5

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_reorderDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v13, v12, v2

    sget v42, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedIcon:I

    const/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v41, 0x0

    move-object/from16 v35, v0

    move-object/from16 v36, v7

    move-object/from16 v38, v11

    move-object/from16 v40, v12

    invoke-direct/range {v35 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1813
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v10, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v12, v11, v5

    const-class v12, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v12, v11, v2

    const/4 v12, 0x3

    new-array v13, v12, [Landroid/graphics/Paint;

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_namePaint:[Landroid/text/TextPaint;

    aget-object v15, v14, v5

    aput-object v15, v13, v5

    aget-object v14, v14, v2

    aput-object v14, v13, v2

    sget-object v14, Lorg/telegram/ui/ActionBar/Theme;->dialogs_searchNamePaint:Landroid/text/TextPaint;

    aput-object v14, v13, v10

    sget v36, Lorg/telegram/ui/ActionBar/Theme;->key_chats_name:I

    const/16 v35, 0x0

    move-object/from16 v28, v0

    move-object/from16 v29, v7

    move-object/from16 v31, v11

    move-object/from16 v33, v13

    invoke-direct/range {v28 .. v36}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1814
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v10, [Ljava/lang/Class;

    const-class v13, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v13, v11, v5

    const-class v13, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v13, v11, v2

    new-array v12, v12, [Landroid/graphics/Paint;

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_nameEncryptedPaint:[Landroid/text/TextPaint;

    aget-object v14, v13, v5

    aput-object v14, v12, v5

    aget-object v13, v13, v2

    aput-object v13, v12, v2

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_searchNameEncryptedPaint:Landroid/text/TextPaint;

    aput-object v13, v12, v10

    sget v45, Lorg/telegram/ui/ActionBar/Theme;->key_chats_secretName:I

    const/16 v39, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v37, v0

    move-object/from16 v38, v7

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    invoke-direct/range {v37 .. v45}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1815
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v2, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v12, v11, v5

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v32, v12, v2

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message_threeLines:I

    const/16 v33, 0x0

    move-object/from16 v28, v0

    move-object/from16 v29, v7

    move-object/from16 v31, v11

    invoke-direct/range {v28 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1816
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v2, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v12, v11, v5

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePaint:[Landroid/text/TextPaint;

    aget-object v40, v12, v5

    sget v43, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    const/16 v38, 0x0

    const/16 v42, 0x0

    move-object/from16 v36, v0

    move-object/from16 v37, v7

    move-object/from16 v39, v11

    invoke-direct/range {v36 .. v43}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1817
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v2, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v12, v11, v5

    sget-object v32, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messageNamePaint:Landroid/text/TextPaint;

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->key_chats_nameMessage_threeLines:I

    move-object/from16 v28, v0

    move-object/from16 v29, v7

    move-object/from16 v31, v11

    invoke-direct/range {v28 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1818
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v2, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v12, v11, v5

    const/16 v25, 0x0

    move-object/from16 v20, v0

    move-object/from16 v21, v7

    move-object/from16 v23, v11

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1820
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v2, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v12, v11, v5

    sget-object v33, Lorg/telegram/ui/ActionBar/Theme;->dialogs_messagePrintingPaint:[Landroid/text/TextPaint;

    sget v36, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionMessage:I

    const/16 v32, 0x0

    const/16 v35, 0x0

    move-object/from16 v28, v0

    move-object/from16 v29, v7

    move-object/from16 v31, v11

    invoke-direct/range {v28 .. v36}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1821
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v2, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v12, v11, v5

    sget-object v24, Lorg/telegram/ui/ActionBar/Theme;->dialogs_timePaint:Landroid/text/TextPaint;

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_chats_date:I

    move-object/from16 v20, v0

    move-object/from16 v21, v7

    move-object/from16 v23, v11

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1822
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v2, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v12, v11, v5

    sget-object v32, Lorg/telegram/ui/ActionBar/Theme;->dialogs_pinnedPaint:Landroid/graphics/Paint;

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->key_chats_pinnedOverlay:I

    const/16 v33, 0x0

    move-object/from16 v28, v0

    move-object/from16 v29, v7

    move-object/from16 v31, v11

    invoke-direct/range {v28 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1823
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v2, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v12, v11, v5

    sget-object v24, Lorg/telegram/ui/ActionBar/Theme;->dialogs_tabletSeletedPaint:Landroid/graphics/Paint;

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_chats_tabletSelectedOverlay:I

    move-object/from16 v20, v0

    move-object/from16 v21, v7

    move-object/from16 v23, v11

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1824
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v2, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v12, v11, v5

    new-array v12, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v13, v12, v5

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->key_chats_sentCheck:I

    const/16 v32, 0x0

    move-object/from16 v28, v0

    move-object/from16 v29, v7

    move-object/from16 v31, v11

    move-object/from16 v33, v12

    invoke-direct/range {v28 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1825
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v2, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v12, v11, v5

    new-array v12, v10, [Landroid/graphics/drawable/Drawable;

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_checkReadDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v13, v12, v5

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_halfCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v13, v12, v2

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_chats_sentReadCheck:I

    const/16 v24, 0x0

    move-object/from16 v20, v0

    move-object/from16 v21, v7

    move-object/from16 v23, v11

    move-object/from16 v25, v12

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1826
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v2, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v12, v11, v5

    new-array v12, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v13, v12, v5

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->key_chats_sentClock:I

    move-object/from16 v28, v0

    move-object/from16 v29, v7

    move-object/from16 v31, v11

    move-object/from16 v33, v12

    invoke-direct/range {v28 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1827
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v2, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v12, v11, v5

    sget-object v24, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorPaint:Landroid/graphics/Paint;

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_chats_sentError:I

    const/16 v25, 0x0

    move-object/from16 v20, v0

    move-object/from16 v21, v7

    move-object/from16 v23, v11

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1828
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v2, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v12, v11, v5

    new-array v12, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_errorDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v13, v12, v5

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->key_chats_sentErrorIcon:I

    move-object/from16 v28, v0

    move-object/from16 v29, v7

    move-object/from16 v31, v11

    move-object/from16 v33, v12

    invoke-direct/range {v28 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1829
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v11, v10, [Ljava/lang/Class;

    const-class v12, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v12, v11, v5

    const-class v12, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v12, v11, v2

    new-array v12, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v13, v12, v5

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedCheck:I

    const/16 v24, 0x0

    move-object/from16 v20, v0

    move-object/from16 v21, v7

    move-object/from16 v23, v11

    move-object/from16 v25, v12

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1830
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v10, v10, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v11, v10, v5

    const-class v11, Lorg/telegram/ui/Cells/ProfileSearchCell;

    aput-object v11, v10, v2

    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_verifiedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v12, v11, v5

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->key_chats_verifiedBackground:I

    move-object/from16 v28, v0

    move-object/from16 v29, v7

    move-object/from16 v31, v10

    move-object/from16 v33, v11

    invoke-direct/range {v28 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1831
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v10, v2, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v11, v10, v5

    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_muteDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v12, v11, v5

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_chats_muteIcon:I

    move-object/from16 v20, v0

    move-object/from16 v21, v7

    move-object/from16 v23, v10

    move-object/from16 v25, v11

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1832
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v10, v2, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v11, v10, v5

    new-array v11, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v12, Lorg/telegram/ui/ActionBar/Theme;->dialogs_mentionDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v12, v11, v5

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->key_chats_mentionIcon:I

    move-object/from16 v28, v0

    move-object/from16 v29, v7

    move-object/from16 v31, v10

    move-object/from16 v33, v11

    invoke-direct/range {v28 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1834
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v10, v2, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v11, v10, v5

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePinBackground:I

    const/16 v25, 0x0

    move-object/from16 v20, v0

    move-object/from16 v21, v7

    move-object/from16 v23, v10

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1835
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v14, v2, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v7, v14, v5

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archiveBackground:I

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1837
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v10, v2, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v11, v10, v5

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_chats_onlineCircle:I

    move-object/from16 v20, v0

    move-object/from16 v21, v7

    move-object/from16 v23, v10

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1838
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v14, v2, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v7, v14, v5

    move-object v11, v0

    move/from16 v18, v19

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1839
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOX:I

    new-array v14, v2, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v7, v14, v5

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1840
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKBOXCHECK:I

    new-array v10, v2, [Ljava/lang/Class;

    const-class v11, Lorg/telegram/ui/Cells/DialogCell;

    aput-object v11, v10, v5

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v24

    const/16 v27, 0x0

    move-object/from16 v20, v0

    move-object/from16 v21, v7

    move-object/from16 v23, v10

    move/from16 v28, v1

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1842
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    new-array v14, v2, [Ljava/lang/Class;

    const-class v1, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v1, v14, v5

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v15

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_graySectionText:I

    move-object v11, v0

    invoke-direct/range {v11 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1843
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v8, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SECTIONS:I

    or-int v22, v3, v6

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v3, v2, v5

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    const/16 v24, 0x0

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    move-object/from16 v23, v2

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1845
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v8, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v11, v1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v12, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v10, v0

    move/from16 v17, v4

    invoke-direct/range {v10 .. v17}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1846
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, v8, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v9
.end method

.method public messagesDeleted(JLjava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 889
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 890
    iget-object v3, p0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 891
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    neg-long v4, v4

    long-to-int v4, v4

    int-to-long v5, v4

    .line 892
    sget v7, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/ChatObject;->isChannel(JI)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    int-to-long v4, v4

    cmp-long v4, v4, p1

    const/4 v5, 0x1

    if-nez v4, :cond_3

    move v4, v0

    .line 894
    :goto_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 895
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 897
    iget-object v2, p0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 898
    iget-object v2, p0, Lorg/telegram/ui/FilteredSearchView;->messagesById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 900
    iget-object v2, p0, Lorg/telegram/ui/FilteredSearchView;->sectionArrays:Ljava/util/HashMap;

    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 901
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 902
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 903
    iget-object v2, p0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 904
    iget-object v2, p0, Lorg/telegram/ui/FilteredSearchView;->sectionArrays:Ljava/util/HashMap;

    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 907
    iget v2, p0, Lorg/telegram/ui/FilteredSearchView;->totalCount:I

    sub-int/2addr v2, v5

    iput v2, p0, Lorg/telegram/ui/FilteredSearchView;->totalCount:I

    move v2, v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v1, v5

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 912
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_5

    .line 913
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_5
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1509
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1510
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/FilteredSearchView;->lastAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1515
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1516
    iget v0, p0, Lorg/telegram/ui/FilteredSearchView;->lastAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 1653
    iget v0, p0, Lorg/telegram/ui/FilteredSearchView;->columnsCount:I

    .line 1654
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    .line 1655
    iput v2, p0, Lorg/telegram/ui/FilteredSearchView;->columnsCount:I

    goto :goto_0

    .line 1657
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/4 v1, 0x6

    .line 1658
    iput v1, p0, Lorg/telegram/ui/FilteredSearchView;->columnsCount:I

    goto :goto_0

    .line 1660
    :cond_1
    iput v2, p0, Lorg/telegram/ui/FilteredSearchView;->columnsCount:I

    .line 1663
    :goto_0
    iget v1, p0, Lorg/telegram/ui/FilteredSearchView;->columnsCount:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->sharedPhotoVideoAdapter:Lorg/telegram/ui/FilteredSearchView$SharedPhotoVideoAdapter;

    if-ne v0, v1, :cond_2

    const/4 v1, 0x1

    .line 1664
    iput-boolean v1, p0, Lorg/telegram/ui/FilteredSearchView;->ignoreRequestLayout:Z

    .line 1665
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    .line 1666
    iput-boolean v0, p0, Lorg/telegram/ui/FilteredSearchView;->ignoreRequestLayout:Z

    .line 1668
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1673
    iget-boolean v0, p0, Lorg/telegram/ui/FilteredSearchView;->ignoreRequestLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 1676
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public search(JJJLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;ZLjava/lang/String;Z)V
    .locals 21

    move-object/from16 v15, p0

    move-wide/from16 v2, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-object/from16 v14, p7

    move-object/from16 v4, p9

    .line 516
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v1, v6

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v13, 0x1

    aput-object v5, v1, v13

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v12, 0x2

    aput-object v5, v1, v12

    if-nez v14, :cond_0

    const/4 v5, -0x1

    goto :goto_0

    :cond_0
    iget v5, v14, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x3

    aput-object v5, v1, v11

    const/4 v5, 0x4

    aput-object v4, v1, v5

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const/4 v6, 0x5

    aput-object v16, v1, v6

    const-string v5, "%d%d%d%d%s%s"

    invoke-static {v0, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 517
    iget-object v0, v15, Lorg/telegram/ui/FilteredSearchView;->lastSearchFilterQueryString:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v18, v13

    goto :goto_1

    :cond_1
    const/16 v18, 0x0

    :goto_1
    if-nez v18, :cond_2

    if-eqz p10, :cond_2

    move v0, v13

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 519
    :goto_2
    iput-object v14, v15, Lorg/telegram/ui/FilteredSearchView;->currentSearchFilter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    .line 520
    iput-wide v2, v15, Lorg/telegram/ui/FilteredSearchView;->currentSearchDialogId:J

    .line 521
    iput-wide v7, v15, Lorg/telegram/ui/FilteredSearchView;->currentSearchMinDate:J

    .line 522
    iput-wide v9, v15, Lorg/telegram/ui/FilteredSearchView;->currentSearchMaxDate:J

    .line 523
    iput-object v4, v15, Lorg/telegram/ui/FilteredSearchView;->currentSearchString:Ljava/lang/String;

    move/from16 v1, p8

    .line 524
    iput-boolean v1, v15, Lorg/telegram/ui/FilteredSearchView;->currentIncludeFolder:Z

    .line 525
    iget-object v6, v15, Lorg/telegram/ui/FilteredSearchView;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v6, :cond_3

    .line 526
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 528
    :cond_3
    iget-object v6, v15, Lorg/telegram/ui/FilteredSearchView;->clearCurrentResultsRunnable:Ljava/lang/Runnable;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz v18, :cond_4

    if-eqz p10, :cond_4

    return-void

    :cond_4
    const-wide/16 v19, 0x0

    if-nez v0, :cond_6

    if-nez v14, :cond_5

    cmp-long v6, v2, v19

    if-nez v6, :cond_5

    cmp-long v6, v7, v19

    if-nez v6, :cond_5

    cmp-long v6, v9, v19

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    if-eqz p10, :cond_9

    .line 551
    iget-object v0, v15, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 533
    :cond_6
    :goto_3
    iget-object v6, v15, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 534
    iget-object v6, v15, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 535
    iget-object v6, v15, Lorg/telegram/ui/FilteredSearchView;->sectionArrays:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 536
    iput-boolean v13, v15, Lorg/telegram/ui/FilteredSearchView;->isLoading:Z

    .line 537
    iget-object v6, v15, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 538
    iget-object v6, v15, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v6, :cond_7

    .line 539
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 541
    :cond_7
    iget v6, v15, Lorg/telegram/ui/FilteredSearchView;->requestIndex:I

    add-int/2addr v6, v13

    iput v6, v15, Lorg/telegram/ui/FilteredSearchView;->requestIndex:I

    .line 543
    iget-object v6, v15, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RecyclerListView;->getPinnedHeader()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 544
    iget-object v6, v15, Lorg/telegram/ui/FilteredSearchView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RecyclerListView;->getPinnedHeader()Landroid/view/View;

    move-result-object v6

    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/view/View;->setAlpha(F)V

    .line 546
    :cond_8
    iget-object v6, v15, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 547
    iget-object v6, v15, Lorg/telegram/ui/FilteredSearchView;->localTipDates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    if-nez v0, :cond_9

    return-void

    .line 554
    :cond_9
    iput-boolean v13, v15, Lorg/telegram/ui/FilteredSearchView;->isLoading:Z

    .line 555
    iget-object v0, v15, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_a

    .line 556
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_a
    if-nez v18, :cond_b

    .line 560
    iget-object v0, v15, Lorg/telegram/ui/FilteredSearchView;->clearCurrentResultsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 561
    iget-object v0, v15, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    xor-int/lit8 v6, p10, 0x1

    invoke-virtual {v0, v13, v6}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 564
    :cond_b
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 565
    iget-object v0, v15, Lorg/telegram/ui/FilteredSearchView;->localTipDates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 566
    iget-object v0, v15, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 567
    iget-object v0, v15, Lorg/telegram/ui/FilteredSearchView;->delegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    if-eqz v0, :cond_c

    const/4 v6, 0x0

    const/4 v11, 0x0

    .line 568
    invoke-interface {v0, v11, v6, v6, v11}, Lorg/telegram/ui/FilteredSearchView$Delegate;->updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 571
    :cond_c
    iget v0, v15, Lorg/telegram/ui/FilteredSearchView;->requestIndex:I

    add-int/lit8 v11, v0, 0x1

    iput v11, v15, Lorg/telegram/ui/FilteredSearchView;->requestIndex:I

    .line 573
    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    .line 575
    new-instance v0, Lorg/telegram/ui/FilteredSearchView$$ExternalSyntheticLambda2;

    move-object/from16 p10, v0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p9

    move-object/from16 v16, v5

    move-object/from16 v5, p7

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move/from16 v17, v11

    move/from16 v11, v18

    move/from16 v12, p8

    move-object/from16 v13, v16

    move/from16 v14, v17

    invoke-direct/range {v0 .. v14}, Lorg/telegram/ui/FilteredSearchView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/FilteredSearchView;JLjava/lang/String;Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;IJJZZLjava/lang/String;I)V

    iput-object v0, v15, Lorg/telegram/ui/FilteredSearchView;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v18, :cond_d

    .line 858
    iget-object v1, v15, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4

    :cond_d
    const-wide/16 v19, 0x15e

    :goto_4
    move-wide/from16 v1, v19

    .line 575
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    move-object/from16 v0, p7

    if-nez v0, :cond_e

    .line 861
    iget-object v0, v15, Lorg/telegram/ui/FilteredSearchView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    goto :goto_6

    :cond_e
    const/4 v1, 0x1

    .line 862
    iget v0, v0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    if-nez v0, :cond_10

    .line 863
    iget-object v0, v15, Lorg/telegram/ui/FilteredSearchView;->currentSearchString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 864
    iget-object v0, v15, Lorg/telegram/ui/FilteredSearchView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    goto :goto_6

    .line 866
    :cond_f
    iget-object v0, v15, Lorg/telegram/ui/FilteredSearchView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    goto :goto_6

    :cond_10
    const/4 v2, 0x2

    if-ne v0, v1, :cond_11

    .line 869
    iget-object v0, v15, Lorg/telegram/ui/FilteredSearchView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    goto :goto_6

    :cond_11
    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    const/4 v1, 0x5

    if-ne v0, v1, :cond_12

    goto :goto_5

    :cond_12
    if-ne v0, v2, :cond_14

    .line 873
    iget-object v0, v15, Lorg/telegram/ui/FilteredSearchView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    goto :goto_6

    .line 871
    :cond_13
    :goto_5
    iget-object v0, v15, Lorg/telegram/ui/FilteredSearchView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    :cond_14
    :goto_6
    return-void
.end method

.method public setChatPreviewDelegate(Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;)V
    .locals 0

    .line 1768
    iput-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->chatPreviewDelegate:Lorg/telegram/ui/Components/SearchViewPager$ChatPreviewDelegate;

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V
    .locals 3

    .line 1680
    iput-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->delegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1682
    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 1683
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->localTipChats:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView;->localTipDates:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lorg/telegram/ui/FilteredSearchView;->localTipArchive:Z

    invoke-interface {p1, p2, v0, v1, v2}, Lorg/telegram/ui/FilteredSearchView$Delegate;->updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method

.method public setKeyboardHeight(IZ)V
    .locals 1

    .line 884
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/StickerEmptyView;->setKeyboardHeight(IZ)V

    return-void
.end method

.method public setUiCallback(Lorg/telegram/ui/FilteredSearchView$UiCallback;)V
    .locals 0

    .line 1689
    iput-object p1, p0, Lorg/telegram/ui/FilteredSearchView;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    return-void
.end method

.method public setUseFromUserAsAvatar(Z)V
    .locals 0

    .line 1037
    iput-boolean p1, p0, Lorg/telegram/ui/FilteredSearchView;->useFromUserAsAvatar:Z

    return-void
.end method

.method public update()V
    .locals 1

    .line 878
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
