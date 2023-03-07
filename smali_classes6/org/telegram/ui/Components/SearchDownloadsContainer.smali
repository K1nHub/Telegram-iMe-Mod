.class public Lorg/telegram/ui/Components/SearchDownloadsContainer;
.super Landroid/widget/FrameLayout;
.source "SearchDownloadsContainer.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SearchDownloadsContainer$TouchHelperCallback;,
        Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;,
        Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;
    }
.end annotation


# instance fields
.field adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

.field checkingFilesExist:Z

.field private final currentAccount:I

.field currentLoadingFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field currentLoadingFilesTmp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field downloadingFilesEndRow:I

.field downloadingFilesHeader:I

.field downloadingFilesStartRow:I

.field emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private hasCurrentDownload:Z

.field itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

.field lastQueryString:Ljava/lang/String;

.field lastSearchRunnable:Ljava/lang/Runnable;

.field private final loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private final messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

.field parentActivity:Landroid/app/Activity;

.field parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field recentFilesEndRow:I

.field recentFilesHeader:I

.field recentFilesStartRow:I

.field recentLoadingFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field recentLoadingFilesTmp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field rowCount:I

.field searchQuery:Ljava/lang/String;

.field uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;


# direct methods
.method public static synthetic $r8$lambda$18HjGQY4p6sy2E8IJd4M43lIJkg(Lorg/telegram/ui/Components/SearchDownloadsContainer;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lambda$update$4(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1oyVm1CSrDfAaQHAJxAZmrkVheo(Lorg/telegram/ui/Components/SearchDownloadsContainer;Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lambda$showSettingsDialog$6(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4RgKGeWQcGfxLPlewORYEaSs5qU(Lorg/telegram/ui/Components/SearchDownloadsContainer;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lambda$new$1(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$7PSl-OPKLYADR-sB6mdAY6IJ2go(Lorg/telegram/ui/Components/SearchDownloadsContainer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lambda$checkFilesExist$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$Gwr0sXHL1Ju_18_yH8WndB-QbAU(Lorg/telegram/ui/Components/SearchDownloadsContainer;ILandroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lambda$new$0(ILandroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KaLcoIzdeoGytpoK--Y6OUNnY0s(Lorg/telegram/ui/Components/SearchDownloadsContainer;Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lambda$showSettingsDialog$7(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UyVc4B1FCaN7ubX5gsGTCpIRAPc(Lorg/telegram/ui/Components/SearchDownloadsContainer;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lambda$update$5(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YFu5z8U00jjZtDp6oK1SYVgkinw(Lorg/telegram/ui/Components/SearchDownloadsContainer;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lambda$checkFilesExist$2(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;I)V
    .locals 4

    .line 88
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;Lorg/telegram/ui/Components/SearchDownloadsContainer$1;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFiles:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFilesTmp:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFilesTmp:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesHeader:I

    .line 68
    iput v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesStartRow:I

    .line 69
    iput v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesEndRow:I

    .line 70
    iput v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesHeader:I

    .line 71
    iput v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesStartRow:I

    .line 72
    iput v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesEndRow:I

    .line 79
    new-instance v0, Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/ui/FilteredSearchView$MessageHashId;-><init>(IJ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    .line 89
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 90
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->parentActivity:Landroid/app/Activity;

    .line 91
    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    .line 92
    new-instance v0, Lorg/telegram/ui/Components/BlurredRecyclerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/BlurredRecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 93
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v2, Lorg/telegram/ui/Components/SearchDownloadsContainer$TouchHelperCallback;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/SearchDownloadsContainer$TouchHelperCallback;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;)V

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 94
    iget-object v2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/SearchDownloadsContainer$1;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/SearchDownloadsContainer$1;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 102
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 103
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Components/SearchDownloadsContainer$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SearchDownloadsContainer$2;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 111
    new-instance p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 112
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 113
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 116
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;I)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 179
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v0, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 197
    new-instance p1, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    .line 200
    new-instance p1, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 201
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setUseHeaderOffset(Z)V

    const/4 v0, 0x3

    .line 202
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    const/16 v0, 0x8

    .line 203
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 204
    new-instance v0, Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1, v1}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 205
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 206
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 208
    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/FileLoader;->getCurrentLoadingFiles(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/SearchDownloadsContainer;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->hasCurrentDownload:Z

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/SearchDownloadsContainer;)I
    .locals 0

    .line 52
    iget p0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/SearchDownloadsContainer;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->showSettingsDialog()V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/SearchDownloadsContainer;)Lorg/telegram/ui/FilteredSearchView$MessageHashId;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    return-object p0
.end method

.method private checkFilesExist()V
    .locals 2

    .line 212
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->checkingFilesExist:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->checkingFilesExist:Z

    .line 216
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isEmptyDownloads()Z
    .locals 1

    .line 340
    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/DownloadController;->downloadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/DownloadController;->recentDownloadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$checkFilesExist$2(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 239
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 240
    iget v2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DownloadController;->onDownloadComplete(Lorg/telegram/messenger/MessageObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 243
    iget p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DownloadController;->deleteRecentFiles(Ljava/util/ArrayList;)V

    .line 245
    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->checkingFilesExist:Z

    const/4 p1, 0x1

    .line 246
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->update(Z)V

    return-void
.end method

.method private synthetic lambda$checkFilesExist$3()V
    .locals 8

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 221
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 223
    iget v4, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/FileLoader;->getCurrentLoadingFiles(Ljava/util/ArrayList;)V

    .line 224
    iget v4, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/FileLoader;->getRecentLoadingFiles(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 226
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 227
    iget v6, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject;

    iget-object v7, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 228
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 232
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 233
    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 238
    :cond_3
    new-instance v0, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, v2, v3}, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(ILandroid/view/View;I)V
    .locals 11

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    invoke-static {v0, p3}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->access$500(Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;I)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v1}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->actionModeShowing()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 122
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {p1, v0, p2, v2}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->toggleItemSelection(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)V

    .line 124
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/FilteredSearchView$MessageHashId;->set(IJ)V

    .line 125
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 126
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {p1}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->actionModeShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 127
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->getItemCount()I

    move-result p2

    invoke-virtual {p1, v2, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_1
    return-void

    .line 132
    :cond_2
    instance-of p3, p2, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;

    if-eqz p3, :cond_10

    .line 133
    move-object p3, p2

    check-cast p3, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;

    iget-object p3, p3, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;->sharedDocumentCell:Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 134
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    .line 136
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoaded()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_e

    .line 137
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_2

    .line 141
    :cond_3
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->canPreviewDocument()Z

    move-result p1

    if-nez p1, :cond_b

    .line 143
    iget-object p3, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p3, :cond_4

    iget-boolean p3, p3, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z

    if-eqz p3, :cond_4

    const/4 p3, 0x1

    goto :goto_0

    :cond_4
    const/4 p3, 0x0

    .line 144
    :goto_0
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-eqz v9, :cond_5

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v9, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v3, v6

    :goto_1
    if-nez v3, :cond_7

    .line 146
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v9, v3, v7

    if-eqz v9, :cond_6

    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v6

    :cond_6
    move-object v3, v6

    :cond_7
    if-eqz v3, :cond_8

    .line 149
    iget-boolean p3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    :cond_8
    if-nez p1, :cond_9

    if-eqz p3, :cond_a

    :cond_9
    const/4 v2, 0x1

    :cond_a
    move p1, v2

    :cond_b
    if-eqz p1, :cond_c

    .line 154
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 159
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    new-instance v10, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;

    invoke-direct {v10}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Ljava/util/ArrayList;IJJILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z

    return-void

    .line 162
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->parentActivity:Landroid/app/Activity;

    iget-object p3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v1, p1, p3}, Lorg/telegram/messenger/AndroidUtilities;->openDocument(Lorg/telegram/messenger/MessageObject;Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_3

    .line 138
    :cond_d
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    return-void

    .line 163
    :cond_e
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->isLoading()Z

    move-result v1

    if-nez v1, :cond_f

    .line 164
    iput-boolean v5, v0, Lorg/telegram/messenger/MessageObject;->putInDownloadsStore:Z

    .line 165
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v3, v0, v2, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 166
    invoke-virtual {p3, v5}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    .line 167
    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/DownloadController;->updateFilesLoadingPriority()V

    goto :goto_3

    .line 169
    :cond_f
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 170
    invoke-virtual {p3, v5}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    .line 172
    :goto_3
    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->update(Z)V

    .line 174
    :cond_10
    instance-of p1, p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz p1, :cond_11

    .line 175
    check-cast p2, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 176
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/SharedAudioCell;->didPressedButton()V

    :cond_11
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;I)Z
    .locals 3

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->access$500(Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;I)Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 182
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v1}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->actionModeShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v1}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->showActionMode()V

    .line 184
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 186
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v1}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->actionModeShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {v1, p2, p1, v0}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->toggleItemSelection(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)V

    .line 188
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    invoke-interface {p1}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->actionModeShowing()Z

    move-result p1

    if-nez p1, :cond_1

    .line 189
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 191
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/FilteredSearchView$MessageHashId;->set(IJ)V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method private synthetic lambda$showSettingsDialog$6(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    .line 662
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 663
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_0

    .line 664
    new-instance p2, Lorg/telegram/ui/CacheControlActivity;

    invoke-direct {p2}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$showSettingsDialog$7(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/view/View;)V
    .locals 0

    .line 668
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 669
    iget p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/DownloadController;->clearRecentDownloadedFiles()V

    return-void
.end method

.method private synthetic lambda$update$4(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lastQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 314
    iget p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 315
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    :cond_0
    const/4 p1, 0x1

    .line 317
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->updateListInternal(ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 318
    iget p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    if-nez p2, :cond_1

    .line 319
    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p2, v0, p1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 321
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->SearchEmptyViewTitle2:I

    const-string p3, "SearchEmptyViewTitle2"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    const-string p3, "SearchEmptyViewFilteredSubtitle2"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$update$5(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 295
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 296
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    new-instance v4, Lorg/telegram/messenger/MessageObject;

    iget v5, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {v4, v5, v6, v2, v2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 298
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    iget-boolean v5, v5, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    iput-boolean v5, v4, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    .line 299
    iget-object v5, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->searchQuery:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 304
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_3

    .line 305
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 306
    new-instance v3, Lorg/telegram/messenger/MessageObject;

    iget v4, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {v3, v4, v5, v2, v2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 307
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    iget-boolean v4, v4, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    iput-boolean v4, v3, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    .line 308
    iget-object v4, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->searchQuery:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 312
    :cond_3
    new-instance p1, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p2, v0, v1}, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showSettingsDialog()V
    .locals 24

    move-object/from16 v0, p0

    .line 599
    iget-object v1, v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->parentActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 602
    :cond_0
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet;

    iget-object v2, v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->parentActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 603
    iget-object v2, v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    .line 604
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    .line 605
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 607
    new-instance v6, Lorg/telegram/ui/Components/StickerImageView;

    iget v7, v0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-direct {v6, v2, v7}, Lorg/telegram/ui/Components/StickerImageView;-><init>(Landroid/content/Context;I)V

    const/16 v7, 0x9

    .line 608
    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/StickerImageView;->setStickerNum(I)V

    .line 609
    invoke-virtual {v6}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v7

    invoke-virtual {v7, v5}, Lorg/telegram/messenger/ImageReceiver;->setAutoRepeat(I)V

    const/16 v8, 0x90

    const/16 v9, 0x90

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x10

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 610
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 613
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setGravity(I)V

    const-string v7, "dialogTextBlack"

    .line 614
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v7, 0x41c00000    # 24.0f

    .line 615
    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 616
    sget v7, Lorg/telegram/messenger/R$string;->DownloadedFiles:I

    const-string v8, "DownloadedFiles"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/4 v10, 0x0

    const/16 v11, 0x15

    const/16 v12, 0x1e

    const/16 v13, 0x15

    .line 617
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 619
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 620
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v7, 0x41700000    # 15.0f

    .line 621
    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v7, "dialogTextHint"

    .line 622
    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 623
    sget v7, Lorg/telegram/messenger/R$string;->DownloadedFilesMessage:I

    new-array v8, v3, [Ljava/lang/Object;

    const-string v9, "DownloadedFilesMessage"

    invoke-static {v9, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, -0x1

    const/4 v9, -0x2

    const/16 v12, 0xf

    const/16 v14, 0x10

    .line 624
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v7, 0x22

    .line 628
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v6, v8, v3, v9, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v8, 0x11

    .line 629
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v9, 0x41600000    # 14.0f

    .line 630
    invoke-virtual {v6, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v10, "fonts/rmedium.ttf"

    .line 631
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 632
    sget v11, Lorg/telegram/messenger/R$string;->ManageDeviceStorage:I

    const-string v12, "ManageDeviceStorage"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v11, "featuredStickers_buttonText"

    .line 634
    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v11, 0x6

    .line 635
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    const-string v13, "featuredStickers_addButton"

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v14

    const-string v15, "windowBackgroundWhite"

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v15

    const/16 v11, 0x78

    invoke-static {v15, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v15

    invoke-static {v12, v14, v15}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v17, -0x1

    const/16 v18, 0x30

    const/16 v19, 0x0

    const/16 v20, 0x10

    const/16 v21, 0xf

    const/16 v22, 0x10

    const/16 v23, 0x10

    .line 637
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v4, v6, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 640
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 641
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v12, v14, v3, v7, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 642
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 643
    invoke-virtual {v12, v5, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 644
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 645
    sget v7, Lorg/telegram/messenger/R$string;->ClearDownloadsList:I

    const-string v8, "ClearDownloadsList"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v7, 0x6

    .line 648
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8, v11}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v8

    invoke-static {v7, v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v13, -0x1

    const/16 v14, 0x30

    const/4 v15, 0x0

    const/16 v16, 0x10

    const/16 v17, 0x0

    const/16 v18, 0x10

    const/16 v19, 0x10

    .line 650
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v4, v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 652
    new-instance v3, Landroidx/core/widget/NestedScrollView;

    invoke-direct {v3, v2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    .line 653
    invoke-virtual {v3, v4}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;)V

    .line 654
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 655
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 656
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 657
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v3

    xor-int/2addr v3, v5

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 658
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v3

    xor-int/2addr v3, v5

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    .line 661
    :cond_1
    new-instance v2, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 667
    new-instance v2, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateListInternal(ZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 345
    iget v3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesHeader:I

    .line 346
    iget v5, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesStartRow:I

    .line 347
    iget v6, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesEndRow:I

    .line 349
    iget v4, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesHeader:I

    .line 350
    iget v8, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesStartRow:I

    .line 351
    iget v9, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesEndRow:I

    .line 353
    iget v2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    .line 355
    new-instance v7, Ljava/util/ArrayList;

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 356
    new-instance v10, Ljava/util/ArrayList;

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFiles:Ljava/util/ArrayList;

    invoke-direct {v10, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 358
    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->updateRows(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 359
    new-instance p1, Lorg/telegram/ui/Components/SearchDownloadsContainer$3;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Components/SearchDownloadsContainer$3;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;IIIIILjava/util/ArrayList;IILjava/util/ArrayList;)V

    invoke-static {p1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    .line 404
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x0

    .line 405
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 406
    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 407
    iget-object p3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p3

    if-ltz p3, :cond_2

    .line 409
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 410
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 413
    :cond_0
    instance-of v1, p2, Lorg/telegram/ui/Cells/GraySectionCell;

    if-eqz v1, :cond_1

    .line 414
    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    invoke-virtual {p2, v0, p3}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_1

    .line 415
    :cond_1
    instance-of p3, p2, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;

    if-eqz p3, :cond_2

    .line 416
    check-cast p2, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;

    .line 417
    iget-object p3, p2, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;->sharedDocumentCell:Lorg/telegram/ui/Cells/SharedDocumentCell;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->updateFileExistIcon(Z)V

    .line 418
    iget-object p3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    iget-object v1, p2, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;->sharedDocumentCell:Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iget-object v2, p2, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;->sharedDocumentCell:Lorg/telegram/ui/Cells/SharedDocumentCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-virtual {p3, v1, v2, v3}, Lorg/telegram/ui/FilteredSearchView$MessageHashId;->set(IJ)V

    .line 419
    iget-object p2, p2, Lorg/telegram/ui/Components/SearchDownloadsContainer$Cell;->sharedDocumentCell:Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object p3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    invoke-interface {p3, v1}, Lorg/telegram/ui/FilteredSearchView$UiCallback;->isSelected(Lorg/telegram/ui/FilteredSearchView$MessageHashId;)Z

    move-result p3

    invoke-virtual {p2, p3, v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 424
    :cond_3
    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->updateRows(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 425
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method private updateRows(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;)V"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 431
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 432
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 433
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 437
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 438
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    .line 439
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-nez v0, :cond_2

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 444
    iput p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    const/4 p2, -0x1

    .line 445
    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesHeader:I

    .line 446
    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesStartRow:I

    .line 447
    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesEndRow:I

    .line 448
    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesHeader:I

    .line 449
    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesStartRow:I

    .line 450
    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesEndRow:I

    .line 451
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->hasCurrentDownload:Z

    .line 453
    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 454
    iget p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesHeader:I

    .line 455
    iput v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesStartRow:I

    .line 456
    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr v0, p2

    iput v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    .line 457
    iput v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->downloadingFilesEndRow:I

    .line 459
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 460
    iget p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    .line 461
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->hasCurrentDownload:Z

    goto :goto_3

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 466
    :cond_5
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 467
    iget p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    iput p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesHeader:I

    .line 468
    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesStartRow:I

    .line 469
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    .line 470
    iput p2, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentFilesEndRow:I

    :cond_6
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 694
    sget p2, Lorg/telegram/messenger/NotificationCenter;->onDownloadingFilesChanged:I

    if-ne p1, p2, :cond_1

    .line 695
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 696
    iget p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/DownloadController;->clearUnviewedDownloads()V

    :cond_0
    const/4 p1, 0x1

    .line 698
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->update(Z)V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 676
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 677
    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onDownloadingFilesChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 678
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 679
    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/DownloadController;->clearUnviewedDownloads()V

    .line 681
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->checkFilesExist()V

    const/4 v0, 0x0

    .line 682
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->update(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 687
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 688
    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onDownloadingFilesChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->searchQuery:Ljava/lang/String;

    const/4 p1, 0x0

    .line 477
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->update(Z)V

    return-void
.end method

.method public setKeyboardHeight(IZ)V
    .locals 1

    .line 725
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/StickerEmptyView;->setKeyboardHeight(IZ)V

    return-void
.end method

.method public setUiCallback(Lorg/telegram/ui/FilteredSearchView$UiCallback;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->uiCallback:Lorg/telegram/ui/FilteredSearchView$UiCallback;

    return-void
.end method

.method public update(Z)V
    .locals 7

    .line 252
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->adapter:Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SearchDownloadsContainer$DownloadsAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->searchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->isEmptyDownloads()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 280
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->setStickerType(I)V

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 284
    iget v3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/FileLoader;->getCurrentLoadingFiles(Ljava/util/ArrayList;)V

    .line 285
    iget v3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/FileLoader;->getRecentLoadingFiles(Ljava/util/ArrayList;)V

    .line 287
    iget-object v3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->searchQuery:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 288
    iget-object v4, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lastQueryString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 290
    iput-object v3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lastQueryString:Ljava/lang/String;

    .line 291
    sget-object v5, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v6, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lastSearchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 292
    sget-object v5, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, v0, v3, v2}, Lorg/telegram/ui/Components/SearchDownloadsContainer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/SearchDownloadsContainer;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lastSearchRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x12c

    :goto_0
    invoke-virtual {v5, v6, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    .line 330
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFilesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFilesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v4, :cond_8

    .line 333
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFilesTmp:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFilesTmp:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->updateListInternal(ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_4

    .line 254
    :cond_2
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    if-nez v0, :cond_3

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->itemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    .line 257
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->checkingFilesExist:Z

    if-eqz v0, :cond_4

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFilesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFilesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 261
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFilesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->getCurrentLoadingFiles(Ljava/util/ArrayList;)V

    .line 262
    iget v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFilesTmp:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->getRecentLoadingFiles(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    .line 264
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_5

    .line 265
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 267
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 268
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 271
    :cond_6
    iput-object v3, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->lastQueryString:Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->currentLoadingFilesTmp:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->recentLoadingFilesTmp:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Components/SearchDownloadsContainer;->updateListInternal(ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 273
    iget p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->rowCount:I

    if-nez p1, :cond_7

    .line 274
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, v2, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 275
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->SearchEmptyViewDownloads:I

    const-string v1, "SearchEmptyViewDownloads"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object p1, p1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/SearchDownloadsContainer;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->setStickerType(I)V

    :cond_8
    :goto_4
    return-void
.end method
