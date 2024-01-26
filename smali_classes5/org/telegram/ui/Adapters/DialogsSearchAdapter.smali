.class public Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DialogsSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;,
        Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;,
        Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;,
        Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;,
        Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogSearchResult;
    }
.end annotation


# instance fields
.field private cancelShowMoreAnimation:Ljava/lang/Runnable;

.field private currentAccount:I

.field private currentItemCount:I

.field public delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

.field private final dialogsActivity:Lorg/telegram/ui/DialogsActivity;

.field private dialogsType:I

.field private filterDialogIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final filtered2RecentSearchObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;",
            ">;"
        }
    .end annotation
.end field

.field private filteredRecentQuery:Ljava/lang/String;

.field private final filteredRecentSearchObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;",
            ">;"
        }
    .end annotation
.end field

.field private filtersDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

.field private folderId:I

.field globalSearchCollapsed:Z

.field private innerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field private lastForumReqId:I

.field private lastGlobalSearchId:I

.field private lastLocalSearchId:I

.field private lastMessagesSearchId:I

.field private lastMessagesSearchString:Ljava/lang/String;

.field private lastReqId:I

.field private lastSearchId:I

.field private lastSearchText:Ljava/lang/String;

.field private lastShowMoreUpdate:J

.field public localMessagesLoadingRow:I

.field private localMessagesSearchEndReached:Z

.field private localTipArchive:Z

.field private localTipDates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/FiltersView$DateData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private messagesSearchEndReached:Z

.field private needMessagesSearch:I

.field private nextSearchRate:I

.field phoneCollapsed:Z

.field private recentSearchObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;",
            ">;"
        }
    .end annotation
.end field

.field private recentSearchObjectsById:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;",
            ">;"
        }
    .end annotation
.end field

.field private reqForumId:I

.field private reqId:I

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field private final searchContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private final searchForumResultMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final searchResultHashtags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final searchResultMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private searchRunnable:Ljava/lang/Runnable;

.field private searchRunnable2:Ljava/lang/Runnable;

.field private final searchTopics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_forumTopic;",
            ">;"
        }
    .end annotation
.end field

.field private searchWas:Z

.field private selfUserId:J

.field public showMoreAnimation:Z

.field public showMoreHeader:Landroid/view/View;

.field waitingResponseCount:I


# direct methods
.method public static synthetic $r8$lambda$3nchIvZgyg8fgaC-zoSCRma0WUI(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onBindViewHolder$24(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5iGSIrm2FS3em6aVVUx-4QphaNU(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;IILorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$searchMessagesInternal$2(IILorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$885gjrtFAeL_x2YRbuvBksxeAMI(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$removeRecentSearch$10(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$9lpsCIsmhR4RDFljHnXKR10ZnWQ(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$loadRecentSearch$6(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9zdbIm-GPaCviikt-JMJ2o5S1b4(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onBindViewHolder$25(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C5gWEzspCTkefWoqZvXOqf55PQY(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;IILorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_search;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$searchForumMessagesInternal$0(IILorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_search;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FHA8esFbFeQe_0a8GDp9aJSWBMg(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$searchDialogsInternal$12(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FUr3E7_IlNfL3dLIC7g-sNnLZ-A(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Lorg/telegram/ui/Cells/GraySectionCell;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onBindViewHolder$23(Lorg/telegram/ui/Cells/GraySectionCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I4KJTU_iA4nlAqfcP8WgpK1LJLQ(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;IILorg/telegram/tgnet/TLRPC$TL_messages_search;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$searchForumMessagesInternal$1(Ljava/lang/String;IILorg/telegram/tgnet/TLRPC$TL_messages_search;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J8pNo6Q-mBI6AMegy9tQz3C0GnQ(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$loadRecentSearch$4(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LZffeu-f9_G53CwKolJxBbd-Diw(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onBindViewHolder$19(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MaZBvbqLtVIvlotxdXirHAAV9HE(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$updateSearchResults$14(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ml4i1u7nfuXR8q8OdqEfee5ShKU(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onBindViewHolder$20(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nu-xuLAgKD0Gzo9bYGPP4F_j8yQ(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$searchDialogsInternal$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$P-FpEnvJ6F8QgchHH7IY-RlmrDY(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;ILorg/telegram/ui/Cells/GraySectionCell;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onBindViewHolder$26(Ljava/util/ArrayList;ILorg/telegram/ui/Cells/GraySectionCell;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P41DMYbgll6opzc1DU6U_9vY9S8(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onCreateViewHolder$17(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$V7Fh06vjRuW36axhJtatkHwJZiY(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onCreateViewHolder$18(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WuZGdOZDgtdUuFRjXKBiNrHo3yE(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$clearRecentSearch$9(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_-441Xt_308VmQNgrY2D652Q_ac(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$searchDialogs$15(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eFzrYcwif_eethpAto4NkLe--Is(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$loadRecentSearch$5(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$elil_vrYdVGdo8zkKY3eg0ybthM(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$searchDialogs$16(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ezo3JakxwSyi4DnF8Uc3tbDyZxI(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;IILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$searchMessagesInternal$3(Ljava/lang/String;IILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fVspH4bRuc6rRQHtacSKKQuCSsY(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onBindViewHolder$21(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$faGRCVSJTxFD3njZdKkgs_dpHkQ(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$putRecentSearch$8(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$o-tCjBgjKFw8f8kWG1bb2R_8qmE(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;JLjava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$updateSearchResults$13(JLjava/lang/Object;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sH6byPB-y8F1nluyqn0KiiYZH0Y(IILorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$loadRecentSearch$7(IILorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tiA9ckfwpombZ0UtJu7sa_F926Q(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onBindViewHolder$27(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wgRfm2on1ahJDk_4tRyyZGUeLvo(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lambda$onBindViewHolder$22(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/DialogsActivity;IILandroidx/recyclerview/widget/DefaultItemAnimator;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 2

    .line 277
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    .line 107
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqForumId:I

    const/4 v1, -0x1

    .line 113
    iput v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesLoadingRow:I

    .line 127
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->showMoreAnimation:Z

    .line 135
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 140
    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentQuery:Ljava/lang/String;

    .line 141
    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipDates:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 1879
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    .line 1880
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    .line 278
    iput p8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    .line 279
    iput-object p5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 280
    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    .line 281
    iput-object p7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 282
    new-instance p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;

    invoke-direct {p2, p0, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Z)V

    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 288
    new-instance p5, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    invoke-direct {p5, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {p2, p5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    .line 325
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p2, p6}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setAllowGlobalResults(Z)V

    .line 326
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    .line 327
    iput p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    .line 328
    iput p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    .line 329
    invoke-static {p8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->selfUserId:J

    .line 330
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadRecentSearch()V

    .line 331
    invoke-static {p8}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MediaDataController;->loadHints(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/Object;)Z
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filter(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;I)I
    .locals 0

    .line 70
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastGlobalSearchId:I

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastLocalSearchId:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchId:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    return p0
.end method

.method private filter(Ljava/lang/Object;)Z
    .locals 3

    .line 255
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/4 v1, 0x1

    const/16 v2, 0xe

    if-eq v0, v2, :cond_0

    return v1

    .line 259
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_2

    .line 260
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz p1, :cond_1

    .line 261
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    iget-boolean p1, p1, Lorg/telegram/ui/DialogsActivity;->allowBots:Z

    return p1

    .line 263
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    iget-boolean p1, p1, Lorg/telegram/ui/DialogsActivity;->allowUsers:Z

    return p1

    .line 264
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 265
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 266
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    iget-boolean p1, p1, Lorg/telegram/ui/DialogsActivity;->allowChannels:Z

    return p1

    .line 268
    :cond_3
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isMegagroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 269
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v0, p1, Lorg/telegram/ui/DialogsActivity;->allowGroups:Z

    if-nez v0, :cond_5

    iget-boolean p1, p1, Lorg/telegram/ui/DialogsActivity;->allowMegagroups:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :cond_5
    :goto_0
    return v1

    .line 271
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v0, p1, Lorg/telegram/ui/DialogsActivity;->allowGroups:Z

    if-nez v0, :cond_8

    iget-boolean p1, p1, Lorg/telegram/ui/DialogsActivity;->allowLegacyGroups:Z

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    move v1, v2

    :cond_8
    :goto_1
    return v1

    :cond_9
    return v2
.end method

.method private hasHints()Z
    .locals 2

    .line 1506
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsActivity:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v0, v0, Lorg/telegram/ui/DialogsActivity;->allowUsers:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$clearRecentSearch$9(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DELETE FROM search_recent WHERE "

    .line 833
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 836
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$loadRecentSearch$4(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V
    .locals 0

    .line 659
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->setRecentSearch(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method private static synthetic lambda$loadRecentSearch$5(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;)I
    .locals 0

    .line 760
    iget p0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->date:I

    iget p1, p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->date:I

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$loadRecentSearch$6(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V
    .locals 0

    .line 768
    invoke-interface {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;->setRecentSearch(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method private static synthetic lambda$loadRecentSearch$7(IILorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;)V
    .locals 13

    .line 666
    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT did, date FROM search_recent WHERE 1"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    .line 668
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 669
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 670
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 671
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 673
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 674
    new-instance v6, Landroidx/collection/LongSparseArray;

    invoke-direct {v6}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 675
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 676
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v7

    .line 680
    invoke-static {p0}, Lcom/iMe/fork/controller/HiddenChatsController;->getInstance(I)Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Lcom/iMe/fork/controller/HiddenChatsController;->isChatHidden(J)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    .line 684
    :cond_1
    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_3

    if-eqz p1, :cond_2

    const/4 v9, 0x3

    if-ne p1, v9, :cond_5

    .line 686
    :cond_2
    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v9

    .line 687
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 688
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 692
    :cond_3
    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x2

    if-eq p1, v9, :cond_5

    .line 693
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 694
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    neg-long v11, v7

    .line 698
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 699
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move v9, v10

    goto :goto_2

    :cond_5
    move v9, v2

    :goto_2
    if-eqz v9, :cond_0

    .line 704
    new-instance v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    invoke-direct {v9}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;-><init>()V

    .line 705
    iput-wide v7, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    .line 706
    invoke-virtual {v0, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    iput v7, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->date:I

    .line 707
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    iget-wide v7, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    invoke-virtual {v6, v7, v8, v9}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 711
    :cond_6
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 714
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 716
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, ","

    if-nez v0, :cond_8

    .line 717
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 718
    invoke-static {p0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    invoke-static {v7, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getEncryptedChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move v4, v2

    .line 719
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_8

    .line 720
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Lorg/telegram/messenger/DialogObject;->makeEncryptedDialogId(J)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    if-eqz v8, :cond_7

    .line 722
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLObject;

    iput-object v9, v8, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 727
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 729
    invoke-static {p0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-static {v7, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    move v3, v2

    .line 730
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 731
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 732
    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v8, v8

    .line 733
    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v10, :cond_9

    .line 734
    invoke-virtual {v6, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .line 735
    invoke-virtual {v6, v8, v9}, Landroidx/collection/LongSparseArray;->remove(J)V

    if-eqz v4, :cond_a

    .line 737
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 740
    :cond_9
    invoke-virtual {v6, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    if-eqz v8, :cond_a

    .line 742
    iput-object v4, v8, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    :cond_a
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 748
    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 749
    invoke-static {p0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p0

    invoke-static {v7, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 750
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v2, p0, :cond_d

    .line 751
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    .line 752
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v6, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    if-eqz v0, :cond_c

    .line 754
    iput-object p0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 759
    :cond_d
    sget-object p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda21;->INSTANCE:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda21;

    invoke-static {v5, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 768
    new-instance p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda6;

    invoke-direct {p0, p2, v5, v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    .line 770
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$19(Landroid/view/View;)V
    .locals 0

    .line 1661
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p1, :cond_0

    .line 1662
    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->needClearList()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$20(Landroid/view/View;)V
    .locals 0

    .line 1678
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p1, :cond_0

    .line 1679
    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->clearTopPeers()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$21(Landroid/view/View;)V
    .locals 0

    .line 1687
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p1, :cond_0

    .line 1688
    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->needClearList()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$22(Landroid/view/View;)V
    .locals 0

    .line 1693
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p1, :cond_0

    .line 1694
    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->needClearList()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$23(Lorg/telegram/ui/Cells/GraySectionCell;)V
    .locals 2

    .line 1741
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    if-eqz v0, :cond_0

    .line 1742
    sget v0, Lorg/telegram/messenger/R$string;->ShowMore:I

    const-string v1, "ShowMore"

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->ShowLess:I

    const-string v1, "ShowLess"

    :goto_0
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/String;)V

    .line 1743
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$24(I)V
    .locals 0

    add-int/lit8 p1, p1, 0x3

    .line 1787
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$25(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1799
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->showMoreAnimation:Z

    const/4 v0, 0x0

    .line 1800
    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->showMoreHeader:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1802
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$26(Ljava/util/ArrayList;ILorg/telegram/ui/Cells/GraySectionCell;)V
    .locals 9

    .line 1753
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1754
    iget-wide v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastShowMoreUpdate:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    .line 1757
    :cond_0
    iput-wide v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastShowMoreUpdate:J

    .line 1759
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1760
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v0

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    const/4 v3, 0x4

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    const v2, 0x7fffffff

    :goto_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, p2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    if-le v0, v2, :cond_3

    move v0, v4

    goto :goto_2

    :cond_3
    move v0, v1

    .line 1761
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-eqz v2, :cond_7

    const-wide/16 v5, 0xc8

    if-eqz v0, :cond_4

    const-wide/16 v7, 0x2d

    goto :goto_3

    :cond_4
    move-wide v7, v5

    .line 1762
    :goto_3
    invoke-virtual {v2, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 1763
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-eqz v0, :cond_5

    const-wide/16 v5, 0x50

    :cond_5
    invoke-virtual {v2, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 1764
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-eqz v0, :cond_6

    const-wide/16 v5, 0x10e

    goto :goto_4

    :cond_6
    const-wide/16 v5, 0x0

    :goto_4
    invoke-virtual {v2, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDelay(J)V

    .line 1766
    :cond_7
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    xor-int/2addr v2, v4

    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v2, :cond_8

    .line 1767
    sget v2, Lorg/telegram/messenger/R$string;->ShowMore:I

    const-string v5, "ShowMore"

    goto :goto_5

    :cond_8
    sget v2, Lorg/telegram/messenger/R$string;->ShowLess:I

    const-string v5, "ShowLess"

    :goto_5
    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    invoke-virtual {p3, v2, v5}, Lorg/telegram/ui/Cells/GraySectionCell;->setRightText(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    .line 1768
    iput-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->showMoreHeader:Landroid/view/View;

    .line 1769
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 1770
    instance-of v2, p3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_b

    .line 1771
    move-object v2, p3

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 1772
    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-nez v5, :cond_9

    add-int/lit8 v5, p2, 0x4

    goto :goto_6

    :cond_9
    add-int v5, p2, p1

    add-int/2addr v5, v4

    :goto_6
    move v6, v1

    .line 1773
    :goto_7
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_b

    .line 1774
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1775
    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v8

    if-ne v8, v5, :cond_a

    .line 1776
    iput-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->showMoreHeader:Landroid/view/View;

    goto :goto_8

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 1781
    :cond_b
    :goto_8
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-nez v2, :cond_c

    add-int/lit8 v2, p2, 0x3

    .line 1782
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/2addr p2, v3

    add-int/lit8 p1, p1, -0x3

    .line 1783
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_9

    :cond_c
    add-int/lit8 v2, p2, 0x4

    add-int/lit8 p1, p1, -0x3

    .line 1785
    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    if-eqz v0, :cond_d

    .line 1787
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;I)V

    const-wide/16 v2, 0x15e

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_9

    :cond_d
    add-int/lit8 p2, p2, 0x3

    .line 1789
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1793
    :goto_9
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->cancelShowMoreAnimation:Ljava/lang/Runnable;

    if-eqz p1, :cond_e

    .line 1794
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_e
    if-eqz v0, :cond_f

    .line 1797
    iput-boolean v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->showMoreAnimation:Z

    .line 1798
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->cancelShowMoreAnimation:Ljava/lang/Runnable;

    const-wide/16 p2, 0x190

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_a

    .line 1806
    :cond_f
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->showMoreAnimation:Z

    :goto_a
    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$27(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 1823
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$17(Landroid/view/View;I)V
    .locals 3

    .line 1470
    instance-of p2, p1, Lorg/telegram/ui/Cells/HintDialogCell;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/Cells/HintDialogCell;

    invoke-virtual {p2}, Lorg/telegram/ui/Cells/HintDialogCell;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1471
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v0, :cond_0

    .line 1472
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/HintDialogCell;->getDialogId()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->didPressedBlockedDialog(Landroid/view/View;J)V

    :cond_0
    return-void

    .line 1476
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p2, :cond_2

    .line 1477
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->didPressedOnSubDialog(J)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$18(Landroid/view/View;I)Z
    .locals 2

    .line 1481
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p2, :cond_0

    .line 1482
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->needRemoveHint(J)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$putRecentSearch$8(J)V
    .locals 5

    .line 790
    :try_start_0
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "REPLACE INTO search_recent VALUES(?, ?)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    .line 791
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v1, 0x1

    .line 792
    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 p1, 0x2

    .line 793
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int p2, v1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 794
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 795
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 797
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$removeRecentSearch$10(J)V
    .locals 3

    .line 853
    :try_start_0
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM search_recent WHERE did = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 855
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$searchDialogs$15(ILjava/lang/String;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v15, p1

    move-object/from16 v13, p3

    const/4 v1, 0x0

    .line 1133
    iput-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    .line 1134
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    if-eq v15, v1, :cond_0

    return-void

    .line 1137
    :cond_0
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    const/4 v2, 0x2

    const/4 v14, 0x1

    if-eq v1, v2, :cond_7

    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/4 v3, 0x6

    if-eq v1, v3, :cond_7

    const/4 v3, 0x5

    if-eq v1, v3, :cond_7

    .line 1138
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v1, v5, :cond_1

    move v7, v14

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    const/4 v8, 0x1

    if-eq v1, v5, :cond_2

    const/16 v5, 0xb

    if-eq v1, v5, :cond_2

    move v9, v14

    goto :goto_1

    :cond_2
    move v9, v6

    :goto_1
    if-eq v1, v2, :cond_4

    if-ne v1, v14, :cond_3

    goto :goto_2

    :cond_3
    move v10, v6

    goto :goto_3

    :cond_4
    :goto_2
    move v10, v14

    :goto_3
    const-wide/16 v11, 0x0

    if-nez v1, :cond_5

    move/from16 v16, v14

    goto :goto_4

    :cond_5
    move/from16 v16, v6

    :goto_4
    const/16 v17, 0x0

    .line 1149
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v1

    goto :goto_5

    :cond_6
    const-wide/16 v1, 0x0

    :goto_5
    move-wide/from16 v18, v1

    move-object v1, v3

    move-object/from16 v2, p2

    move v3, v4

    move v4, v7

    move v5, v8

    move v6, v9

    move v7, v10

    move-wide v8, v11

    move/from16 v10, v16

    move/from16 v11, v17

    move/from16 v12, p1

    move-object v15, v13

    move/from16 v16, v14

    move-wide/from16 v13, v18

    .line 1138
    invoke-virtual/range {v1 .. v14}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZIIJ)V

    goto :goto_6

    :cond_7
    move-object v15, v13

    move/from16 v16, v14

    .line 1152
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    .line 1154
    :goto_6
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    if-eqz v1, :cond_9

    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_8

    goto :goto_7

    .line 1157
    :cond_8
    invoke-direct {v0, v15}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics(Ljava/lang/String;)V

    move/from16 v1, p1

    move-object v2, v15

    .line 1158
    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchMessagesInternal(Ljava/lang/String;I)V

    .line 1159
    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumMessagesInternal(Ljava/lang/String;I)V

    goto :goto_8

    .line 1155
    :cond_9
    :goto_7
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    :goto_8
    return-void
.end method

.method private synthetic lambda$searchDialogs$16(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1126
    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 1127
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchDialogsInternal(Ljava/lang/String;I)V

    .line 1128
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 1129
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    return-void

    .line 1132
    :cond_0
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchDialogsInternal$11()V
    .locals 5

    .line 920
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtersDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 921
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipDates:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipArchive:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/telegram/ui/FilteredSearchView$Delegate;->updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$searchDialogsInternal$12(Ljava/lang/String;ILjava/lang/String;)V
    .locals 12

    .line 892
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 893
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 894
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 895
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 897
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filterDialogIds:Ljava/util/ArrayList;

    const/4 v7, -0x1

    move-object v2, p1

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/MessagesStorage;->localSearch(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    move-object v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move v5, p2

    .line 913
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 914
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipDates:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lorg/telegram/ui/Adapters/FiltersView;->fillTipDates(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 p2, 0x0

    .line 915
    iput-boolean p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipArchive:Z

    .line 916
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x3

    if-lt p2, v0, :cond_1

    sget p2, Lorg/telegram/messenger/R$string;->ArchiveSearchFilter:I

    const-string v0, "ArchiveSearchFilter"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "archive"

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 917
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipArchive:Z

    .line 919
    :cond_1
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchForumMessagesInternal$0(IILorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_search;Ljava/util/ArrayList;)V
    .locals 3

    .line 424
    iget p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastForumReqId:I

    const/4 v0, 0x0

    if-ne p1, p4, :cond_9

    if-lez p2, :cond_0

    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    if-ne p2, p1, :cond_9

    .line 425
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    const/4 p4, 0x1

    sub-int/2addr p1, p4

    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    if-nez p3, :cond_9

    .line 428
    check-cast p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 429
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v1, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, v1, p4, p4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 430
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 431
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 432
    iget p1, p6, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->add_offset:I

    if-nez p1, :cond_1

    .line 433
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 435
    :cond_1
    iget p1, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->next_rate:I

    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->nextSearchRate:I

    move p1, v0

    .line 436
    :goto_0
    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_3

    .line 437
    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Message;

    .line 438
    invoke-static {p3}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v1

    .line 439
    iget p6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p6

    iget-object p6, p6, Lorg/telegram/messenger/MessagesController;->deletedHistory:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p6, v1, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result p6

    if-eqz p6, :cond_2

    .line 440
    iget p3, p3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gt p3, p6, :cond_2

    goto :goto_1

    .line 443
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p3, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 445
    :cond_3
    iput-boolean p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    .line 446
    iget-object p1, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p3, 0x14

    if-eq p1, p3, :cond_4

    move p1, p4

    goto :goto_2

    :cond_4
    move p1, v0

    :goto_2
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-lez p2, :cond_6

    .line 448
    iput p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchId:I

    .line 449
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastLocalSearchId:I

    if-eq p1, p2, :cond_5

    .line 450
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 452
    :cond_5
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastGlobalSearchId:I

    if-eq p1, p2, :cond_6

    .line 453
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clear()V

    .line 456
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    iget-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 457
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p1, :cond_8

    .line 458
    iget p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    if-lez p2, :cond_7

    move p2, p4

    goto :goto_3

    :cond_7
    move p2, v0

    :goto_3
    invoke-interface {p1, p2, p4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    .line 459
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->runResultsEnterAnimation()V

    .line 461
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 464
    :cond_9
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqForumId:I

    return-void
.end method

.method private synthetic lambda$searchForumMessagesInternal$1(Ljava/lang/String;IILorg/telegram/tgnet/TLRPC$TL_messages_search;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 14

    .line 403
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-nez p6, :cond_2

    .line 405
    move-object/from16 v0, p5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 406
    new-instance v9, Landroidx/collection/LongSparseArray;

    invoke-direct {v9}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 407
    new-instance v10, Landroidx/collection/LongSparseArray;

    invoke-direct {v10}, Landroidx/collection/LongSparseArray;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 408
    :goto_0
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 409
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 410
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v9, v4, v5, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 412
    :goto_1
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 413
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 414
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v10, v4, v5, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v11, v1

    .line 416
    :goto_2
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_2

    .line 417
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Message;

    .line 418
    new-instance v12, Lorg/telegram/messenger/MessageObject;

    move-object v13, p0

    iget v2, v13, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v12

    move-object v4, v10

    move-object v5, v9

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;ZZ)V

    .line 419
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, p1

    .line 420
    invoke-virtual {v12, p1}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    move-object v13, p0

    move-object v5, p1

    .line 423
    new-instance v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda9;

    move-object v0, v9

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    move-object v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;IILorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_search;Ljava/util/ArrayList;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchMessagesInternal$2(IILorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Ljava/util/ArrayList;)V
    .locals 7

    .line 561
    iget p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastReqId:I

    const/4 v0, 0x0

    if-ne p1, p4, :cond_11

    if-lez p2, :cond_0

    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    if-ne p2, p1, :cond_11

    .line 562
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    const/4 p4, 0x1

    sub-int/2addr p1, p4

    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    if-nez p3, :cond_11

    .line 565
    check-cast p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 566
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v1, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, v1, p4, p4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 567
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 568
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 569
    iget p1, p6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    if-nez p1, :cond_1

    .line 570
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 572
    :cond_1
    iget p1, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->next_rate:I

    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->nextSearchRate:I

    move p1, v0

    .line 573
    :goto_0
    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_b

    .line 574
    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Message;

    .line 575
    invoke-static {p3}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v1

    .line 576
    iget p6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p6

    iget-object p6, p6, Lorg/telegram/messenger/MessagesController;->deletedHistory:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p6, v1, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result p6

    if-eqz p6, :cond_2

    .line 577
    iget v3, p3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-le v3, p6, :cond_a

    :cond_2
    iget p6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p6}, Lcom/iMe/fork/controller/HiddenChatsController;->getInstance(I)Lcom/iMe/fork/controller/HiddenChatsController;

    move-result-object p6

    invoke-virtual {p6, v1, v2}, Lcom/iMe/fork/controller/HiddenChatsController;->isChatHidden(J)Z

    move-result p6

    if-eqz p6, :cond_3

    goto/16 :goto_5

    .line 580
    :cond_3
    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lorg/telegram/messenger/MessageObject;

    .line 581
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v0

    .line 583
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 584
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_4

    if-eqz p6, :cond_4

    .line 585
    invoke-virtual {p6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-virtual {p6}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-nez v2, :cond_4

    move v1, p4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v1, v0

    :goto_2
    if-eqz v1, :cond_6

    goto :goto_5

    .line 594
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-static {p3}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v1

    .line 596
    iget-boolean p6, p3, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz p6, :cond_7

    iget p6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p6

    iget-object p6, p6, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Lj$/util/concurrent/ConcurrentHashMap;

    goto :goto_3

    :cond_7
    iget p6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p6

    iget-object p6, p6, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Lj$/util/concurrent/ConcurrentHashMap;

    .line 597
    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p6, v3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_8

    .line 599
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget-boolean v4, p3, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    invoke-virtual {v3, v4, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 600
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p6, v1, v3}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p6

    iget v1, p3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge p6, v1, :cond_9

    move p6, p4

    goto :goto_4

    :cond_9
    move p6, v0

    :goto_4
    iput-boolean p6, p3, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    :cond_a
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 604
    :cond_b
    iput-boolean p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    .line 605
    iget-object p1, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p3, 0x14

    if-eq p1, p3, :cond_c

    move p1, p4

    goto :goto_6

    :cond_c
    move p1, v0

    :goto_6
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSearchEndReached:Z

    if-lez p2, :cond_e

    .line 607
    iput p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchId:I

    .line 608
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastLocalSearchId:I

    if-eq p1, p2, :cond_d

    .line 609
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 611
    :cond_d
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastGlobalSearchId:I

    if-eq p1, p2, :cond_e

    .line 612
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clear()V

    .line 615
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    iget-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 616
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p1, :cond_10

    .line 617
    iget p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    if-lez p2, :cond_f

    move p2, p4

    goto :goto_7

    :cond_f
    move p2, v0

    :goto_7
    invoke-interface {p1, p2, p4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    .line 618
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->runResultsEnterAnimation()V

    .line 620
    :cond_10
    iput-boolean p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    .line 621
    iput-boolean p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    .line 622
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 625
    :cond_11
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    return-void
.end method

.method private synthetic lambda$searchMessagesInternal$3(Ljava/lang/String;IILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 14

    .line 540
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-nez p6, :cond_2

    .line 542
    move-object/from16 v0, p5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 543
    new-instance v9, Landroidx/collection/LongSparseArray;

    invoke-direct {v9}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 544
    new-instance v10, Landroidx/collection/LongSparseArray;

    invoke-direct {v10}, Landroidx/collection/LongSparseArray;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 545
    :goto_0
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 546
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 547
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v9, v4, v5, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 549
    :goto_1
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 550
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 551
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v10, v4, v5, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v11, v1

    .line 553
    :goto_2
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_2

    .line 554
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Message;

    .line 555
    new-instance v12, Lorg/telegram/messenger/MessageObject;

    move-object v13, p0

    iget v2, v13, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v12

    move-object v4, v10

    move-object v5, v9

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;ZZ)V

    .line 556
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, p1

    .line 557
    invoke-virtual {v12, p1}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    move-object v13, p0

    move-object v5, p1

    .line 560
    new-instance v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda10;

    move-object v0, v9

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    move-object v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;IILorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Ljava/util/ArrayList;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$updateSearchResults$13(JLjava/lang/Object;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p4, v0, :cond_2

    .line 971
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 972
    iput-wide p1, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    if-eqz p4, :cond_0

    .line 974
    iput p4, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->folder_id:I

    .line 976
    :cond_0
    instance-of p4, p3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p4, :cond_1

    .line 977
    check-cast p3, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p3

    iput p3, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->flags:I

    .line 979
    :cond_1
    iget p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {p3, p1, p2, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 980
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getAllDialogs()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->sortDialogs(Landroidx/collection/LongSparseArray;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$updateSearchResults$14(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9

    .line 930
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    .line 931
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    if-eq p1, v0, :cond_0

    return-void

    .line 934
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastLocalSearchId:I

    .line 935
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastGlobalSearchId:I

    if-eq v0, p1, :cond_1

    .line 936
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clear()V

    .line 938
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchId:I

    if-eq v0, p1, :cond_2

    .line 939
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 941
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    const/4 p1, 0x0

    move v0, p1

    .line 942
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 943
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filter(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 944
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_3
    add-int/2addr v0, v1

    goto :goto_0

    .line 948
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, p1

    .line 949
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    .line 950
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 952
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$User;

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_5

    .line 953
    move-object v4, v3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 954
    iget v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v4, v1}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 955
    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_2

    .line 956
    :cond_5
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_6

    .line 957
    move-object v4, v3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 958
    iget v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v4, v1}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 959
    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v7, v7

    goto :goto_2

    .line 960
    :cond_6
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v4, :cond_7

    .line 961
    move-object v4, v3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 962
    iget v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v4, v1}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    :cond_7
    move-wide v7, v5

    :goto_2
    cmp-long v4, v7, v5

    if-eqz v4, :cond_8

    .line 966
    iget v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v4, :cond_8

    .line 969
    iget v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda22;

    invoke-direct {v5, p0, v7, v8, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;JLjava/lang/Object;)V

    invoke-virtual {v4, v7, v8, v5}, Lorg/telegram/messenger/MessagesStorage;->getDialogFolderId(JLorg/telegram/messenger/MessagesStorage$IntCallback;)V

    .line 987
    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->resentSearchAvailable()Z

    move-result v4

    if-eqz v4, :cond_c

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v3, :cond_c

    .line 989
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-nez v3, :cond_9

    move v3, v1

    goto :goto_3

    :cond_9
    move v3, p1

    :goto_3
    move v4, p1

    :goto_4
    if-nez v3, :cond_b

    if-ge v4, v0, :cond_b

    .line 993
    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    if-eqz v5, :cond_a

    .line 994
    iget-wide v5, v5, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_a

    move v3, v1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    if-eqz v3, :cond_c

    .line 999
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1000
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_c
    add-int/2addr v2, v1

    goto/16 :goto_1

    .line 1005
    :cond_d
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p4, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1006
    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 1007
    iput-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 1009
    iget-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {p3, p2, p4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1010
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1011
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p2, :cond_f

    .line 1012
    iget p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    if-lez p3, :cond_e

    move p1, v1

    :cond_e
    invoke-interface {p2, p1, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    .line 1013
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->runResultsEnterAnimation()V

    :cond_f
    return-void
.end method

.method public static loadRecentSearch(IILorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;)V
    .locals 2

    .line 664
    invoke-static {p0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda5;-><init>(IILorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private resentSearchAvailable()Z
    .locals 3

    .line 635
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_0

    const/16 v2, 0xf

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private searchDialogsInternal(Ljava/lang/String;I)V
    .locals 6

    .line 882
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 885
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 886
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    .line 887
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    .line 888
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    return-void

    .line 891
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, v0, p2, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private searchForumMessagesInternal(Ljava/lang/String;I)V
    .locals 10

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 368
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 371
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqForumId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 372
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqForumId:I

    invoke-virtual {v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 373
    iput v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqForumId:I

    .line 375
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    .line 376
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentQuery:Ljava/lang/String;

    .line 377
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 378
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 379
    iput v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastForumReqId:I

    .line 380
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    .line 381
    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    .line 382
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 386
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/16 v2, 0xf

    if-ne v0, v2, :cond_4

    return-void

    .line 390
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v2

    .line 392
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    const/16 v4, 0x14

    .line 393
    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 394
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 395
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 396
    iget v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 397
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 398
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->add_offset:I

    .line 400
    :cond_5
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    .line 401
    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastForumReqId:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastForumReqId:I

    .line 402
    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda23;

    move-object v4, v2

    move-object v5, p0

    move-object v6, p1

    move v8, p2

    move-object v9, v0

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;IILorg/telegram/tgnet/TLRPC$TL_messages_search;)V

    const/4 p1, 0x2

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqForumId:I

    :cond_6
    :goto_0
    return-void
.end method

.method private searchMessagesInternal(Ljava/lang/String;I)V
    .locals 9

    .line 489
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 492
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 493
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    invoke-virtual {v0, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 494
    iput v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    .line 496
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 497
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentQuery:Ljava/lang/String;

    .line 498
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 499
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 500
    iput v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastReqId:I

    .line 501
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    .line 502
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    .line 503
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 506
    :cond_2
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filterRecent(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 510
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/16 v3, 0xf

    if-ne v0, v3, :cond_5

    .line 511
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    .line 512
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p2, :cond_4

    if-lez p1, :cond_3

    move v1, v2

    .line 513
    :cond_3
    invoke-interface {p2, v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    .line 514
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->runResultsEnterAnimation()V

    :cond_4
    return-void

    .line 519
    :cond_5
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;-><init>()V

    const/16 v0, 0x14

    .line 520
    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->limit:I

    .line 521
    iput-object p1, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->q:Ljava/lang/String;

    .line 522
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 523
    iget v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    or-int/2addr v0, v2

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    .line 524
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->folderId:I

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->folder_id:I

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchId:I

    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    if-ne v0, v3, :cond_6

    .line 526
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 527
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 528
    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->nextSearchRate:I

    iput v1, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    .line 529
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    .line 530
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_0

    .line 532
    :cond_6
    iput v1, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    .line 533
    iput v1, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 534
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 536
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    .line 537
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastReqId:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastReqId:I

    .line 539
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda24;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;IILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;)V

    const/4 p1, 0x2

    invoke-virtual {v7, v6, v8, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    :cond_7
    :goto_1
    return-void
.end method

.method private searchTopics(Ljava/lang/String;)V
    .locals 4

    .line 470
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 471
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_1

    .line 474
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 475
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v0

    .line 476
    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v2

    neg-long v0, v0

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 477
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 478
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 479
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 480
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->searchQuery:Ljava/lang/String;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 485
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_3
    :goto_1
    return-void
.end method

.method private setRecentSearch(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;",
            ">;",
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;",
            ">;)V"
        }
    .end annotation

    .line 865
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    .line 866
    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    const/4 p1, 0x0

    .line 867
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 868
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .line 869
    iget-object v0, p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 870
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, p2, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    goto :goto_1

    .line 871
    :cond_0
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_1

    .line 872
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, p2, v2}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto :goto_1

    .line 873
    :cond_1
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_2

    .line 874
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {v0, p2, v2}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 877
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filterRecent(Ljava/lang/String;)V

    .line 878
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;I)V"
        }
    .end annotation

    .line 929
    new-instance p4, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda12;

    move-object v0, p4

    move-object v1, p0

    move v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private wordStartsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 2063
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move v1, v0

    .line 2065
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 2066
    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public addHashtagsFromMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 861
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->addHashtagsFromMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public clearRecentHashtags()V
    .locals 1

    .line 1023
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clearRecentHashtags()V

    .line 1024
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1025
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearRecentSearch()V
    .locals 6

    .line 804
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    const-string v1, "1"

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 805
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 806
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .line 807
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 808
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 809
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    iget-wide v4, v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->remove(J)V

    if-nez v0, :cond_0

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "did IN ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 812
    iget-wide v2, v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v3, ", "

    .line 814
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, ")"

    .line 820
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 823
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 824
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 825
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 826
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 830
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 831
    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public filterRecent(Ljava/lang/String;)V
    .locals 8

    .line 2016
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentQuery:Ljava/lang/String;

    .line 2017
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2018
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2019
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2020
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge v1, p1, :cond_3

    .line 2022
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    iget-wide v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filter(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 2025
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 2029
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2030
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_f

    .line 2032
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    if-eqz v2, :cond_e

    .line 2033
    iget-object v3, v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    if-nez v3, :cond_5

    goto/16 :goto_4

    .line 2036
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v3

    iget-wide v5, v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_e

    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    iget-object v3, v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filter(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_4

    .line 2040
    :cond_7
    iget-object v3, v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    .line 2041
    move-object v4, v3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 2042
    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    goto :goto_3

    .line 2043
    :cond_8
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_9

    .line 2044
    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    .line 2045
    iget-object v3, v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    goto :goto_3

    .line 2046
    :cond_9
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz v4, :cond_a

    .line 2047
    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    move-object v7, v5

    move-object v5, v3

    move-object v3, v7

    goto :goto_3

    :cond_a
    move-object v3, v5

    :goto_3
    if-eqz v5, :cond_b

    .line 2049
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->wordStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    :cond_b
    if-eqz v3, :cond_d

    .line 2050
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->wordStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2051
    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2053
    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_e

    goto :goto_5

    :cond_e
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_f
    :goto_5
    return-void
.end method

.method public getCurrentItemCount()I
    .locals 1

    .line 2012
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentItemCount:I

    return v0
.end method

.method public getInnerListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 12

    .line 1243
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-lez p1, :cond_0

    .line 1245
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1

    .line 1250
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1251
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->hasHints()Z

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x2

    .line 1257
    :cond_2
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    :goto_0
    if-le p1, v0, :cond_6

    add-int/lit8 v4, p1, -0x1

    sub-int/2addr v4, v0

    .line 1258
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    .line 1259
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    iget-object p1, p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    .line 1260
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_4

    .line 1261
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 1265
    :cond_4
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_5

    .line 1266
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_5

    :goto_1
    move-object p1, v0

    :cond_5
    return-object p1

    .line 1273
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 1276
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    if-lez p1, :cond_8

    .line 1277
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_8

    .line 1278
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1280
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    sub-int/2addr p1, v0

    .line 1282
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    if-lez p1, :cond_a

    .line 1283
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_a

    .line 1284
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1286
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    sub-int/2addr p1, v0

    .line 1288
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v0

    .line 1289
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v3

    .line 1290
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v4

    .line 1291
    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1292
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int v7, v5, v6

    if-lez v7, :cond_e

    .line 1293
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v7

    if-gtz v7, :cond_c

    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    :cond_c
    if-nez p1, :cond_d

    return-object v1

    :cond_d
    add-int/lit8 p1, p1, -0x1

    .line 1299
    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_f

    .line 1300
    iget-boolean v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    if-eqz v9, :cond_f

    move v7, v8

    .line 1303
    :cond_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_10

    move v8, v9

    goto :goto_2

    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v2

    :goto_2
    const/4 v10, 0x4

    if-le v8, v10, :cond_11

    .line 1304
    iget-boolean v11, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v11, :cond_11

    move v8, v10

    :cond_11
    if-ltz p1, :cond_12

    if-ge p1, v5, :cond_12

    .line 1308
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_12
    sub-int/2addr p1, v5

    if-ltz p1, :cond_13

    if-ge p1, v6, :cond_13

    .line 1312
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_13
    sub-int/2addr p1, v6

    if-ltz p1, :cond_14

    if-ge p1, v7, :cond_14

    .line 1316
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_14
    sub-int/2addr p1, v7

    if-lez p1, :cond_15

    if-ge p1, v8, :cond_15

    sub-int/2addr p1, v2

    .line 1320
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_15
    sub-int/2addr p1, v8

    .line 1323
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v9

    goto :goto_3

    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    :goto_3
    if-lez p1, :cond_17

    .line 1324
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt p1, v3, :cond_17

    .line 1325
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1327
    :cond_17
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-nez v3, :cond_18

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    move v9, v2

    :cond_18
    add-int/2addr v0, v9

    sub-int/2addr p1, v0

    .line 1328
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_4

    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    :goto_4
    if-lez p1, :cond_1a

    .line 1329
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_1a

    .line 1330
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1a
    return-object v1
.end method

.method public getItemCount()I
    .locals 8

    .line 1178
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    return v1

    .line 1182
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1183
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    return v0

    .line 1186
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1187
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v0

    add-int/2addr v0, v1

    .line 1188
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-nez v3, :cond_3

    return v0

    :cond_2
    move v0, v1

    .line 1192
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 1194
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 1196
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1197
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 1201
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 1203
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v0, v4

    .line 1205
    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v2, :cond_6

    .line 1206
    iget-boolean v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v6, :cond_6

    move v5, v2

    .line 1209
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v2, :cond_7

    .line 1210
    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    if-eqz v7, :cond_7

    goto :goto_0

    :cond_7
    move v2, v6

    :goto_0
    add-int/2addr v3, v4

    if-lez v3, :cond_9

    .line 1213
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v3

    if-gtz v3, :cond_8

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    add-int/lit8 v0, v0, 0x1

    :cond_9
    if-eqz v5, :cond_a

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v0, v5

    :cond_a
    if-eqz v2, :cond_b

    add-int/2addr v0, v2

    .line 1222
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_c

    add-int/lit8 v2, v2, 0x1

    .line 1224
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    xor-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 1226
    :cond_c
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-nez v2, :cond_d

    .line 1227
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesLoadingRow:I

    .line 1229
    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1230
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-nez v3, :cond_e

    goto :goto_1

    :cond_e
    move v1, v2

    :goto_1
    if-eqz v1, :cond_f

    add-int/lit8 v1, v1, 0x1

    .line 1234
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSearchEndReached:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1236
    :cond_f
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-eqz v1, :cond_10

    .line 1237
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesLoadingRow:I

    .line 1239
    :cond_10
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentItemCount:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 10

    .line 1884
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    return v1

    .line 1887
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 1888
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->hasHints()Z

    move-result v0

    if-ne v0, v1, :cond_3

    if-nez p1, :cond_2

    return v1

    :cond_2
    move v0, v2

    :cond_3
    if-ge p1, v0, :cond_4

    const/4 p1, 0x6

    return p1

    :cond_4
    if-ne p1, v0, :cond_5

    return v1

    .line 1903
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_6

    return v3

    .line 1906
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 1908
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v4, 0x3

    if-nez v0, :cond_a

    if-nez p1, :cond_8

    return v1

    .line 1911
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_9

    return v4

    .line 1914
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 1917
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    if-nez p1, :cond_b

    return v1

    .line 1920
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_c

    const/16 p1, 0x8

    return p1

    .line 1923
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 1925
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v0

    .line 1926
    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1927
    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int v7, v5, v6

    if-lez v7, :cond_10

    .line 1928
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v7

    if-gtz v7, :cond_e

    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_10

    :cond_e
    if-nez p1, :cond_f

    return v1

    :cond_f
    add-int/lit8 p1, p1, -0x1

    .line 1934
    :cond_10
    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v4, :cond_11

    .line 1935
    iget-boolean v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    if-eqz v8, :cond_11

    goto :goto_1

    :cond_11
    move v4, v7

    .line 1938
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_12

    move v0, v3

    goto :goto_2

    :cond_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    :goto_2
    const/4 v7, 0x4

    if-le v0, v7, :cond_13

    .line 1939
    iget-boolean v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v8, :cond_13

    move v0, v7

    .line 1942
    :cond_13
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_14

    move v8, v3

    goto :goto_3

    :cond_14
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v1

    .line 1943
    :goto_3
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_15

    iget-boolean v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-nez v9, :cond_15

    move v8, v3

    .line 1946
    :cond_15
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_16

    move v9, v3

    goto :goto_4

    :cond_16
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v9, v1

    :goto_4
    if-ltz p1, :cond_17

    if-ge p1, v5, :cond_17

    return v3

    :cond_17
    sub-int/2addr p1, v5

    if-ltz p1, :cond_18

    if-ge p1, v6, :cond_18

    return v3

    :cond_18
    sub-int/2addr p1, v6

    if-ltz p1, :cond_1c

    if-ge p1, v4, :cond_1c

    .line 1957
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 1958
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 1959
    check-cast p1, Ljava/lang/String;

    const-string v0, "searchByTel"

    .line 1961
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1962
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CELL:I

    return p1

    :cond_19
    const-string v0, "section"

    .line 1965
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    return v1

    :cond_1a
    const/4 p1, 0x7

    return p1

    :cond_1b
    return v3

    :cond_1c
    sub-int/2addr p1, v4

    if-ltz p1, :cond_1e

    if-ge p1, v0, :cond_1e

    if-nez p1, :cond_1d

    return v1

    :cond_1d
    return v3

    :cond_1e
    sub-int/2addr p1, v0

    if-lez v9, :cond_23

    if-ltz p1, :cond_22

    .line 1983
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-eqz v0, :cond_1f

    if-ge p1, v9, :cond_22

    goto :goto_5

    :cond_1f
    if-gt p1, v9, :cond_22

    :goto_5
    if-nez p1, :cond_20

    return v1

    :cond_20
    if-ne p1, v9, :cond_21

    return v7

    :cond_21
    return v2

    .line 1992
    :cond_22
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    xor-int/2addr v0, v1

    add-int/2addr v9, v0

    sub-int/2addr p1, v9

    :cond_23
    if-ltz p1, :cond_25

    if-ge p1, v8, :cond_25

    if-nez p1, :cond_24

    return v1

    :cond_24
    return v2

    :cond_25
    return v7
.end method

.method public getLastSearchString()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentItemsCount()I
    .locals 3

    .line 1167
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    .line 1168
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->hasHints()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public getRecentResultsCount()I
    .locals 1

    .line 1172
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    :goto_0
    if-eqz v0, :cond_1

    .line 1173
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public hasRecentSearch()Z
    .locals 1

    .line 631
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->resentSearchAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 1411
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGlobalSearch(I)Z
    .locals 8

    .line 1337
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1340
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1343
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 1344
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->hasHints()Z

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x2

    .line 1350
    :cond_2
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    :goto_0
    if-le p1, v0, :cond_4

    add-int/lit8 v4, p1, -0x1

    sub-int/2addr v4, v0

    .line 1351
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    return v1

    .line 1354
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 1357
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v0

    .line 1358
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v3

    .line 1359
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1360
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1361
    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_6

    .line 1362
    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    if-eqz v7, :cond_6

    move v5, v6

    .line 1365
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    move v0, v1

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    :goto_1
    const/4 v6, 0x4

    if-le v0, v6, :cond_8

    .line 1366
    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v7, :cond_8

    move v0, v6

    .line 1369
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a

    if-ltz p1, :cond_9

    if-ge p1, v6, :cond_9

    return v1

    :cond_9
    add-int/2addr v6, v2

    sub-int/2addr p1, v6

    :cond_a
    if-ltz p1, :cond_b

    if-ge p1, v4, :cond_b

    return v1

    :cond_b
    sub-int/2addr p1, v4

    if-ltz p1, :cond_c

    if-ge p1, v3, :cond_c

    return v1

    :cond_c
    sub-int/2addr p1, v3

    if-lez p1, :cond_d

    if-ge p1, v5, :cond_d

    return v1

    :cond_d
    sub-int/2addr p1, v5

    if-lez p1, :cond_e

    if-ge p1, v0, :cond_e

    return v2

    :cond_e
    sub-int/2addr p1, v0

    .line 1392
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_2

    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    :goto_2
    if-lez p1, :cond_10

    if-ge p1, v0, :cond_10

    return v1

    .line 1397
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_3

    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    :goto_3
    return v1
.end method

.method public isHashtagSearch()Z
    .locals 1

    .line 1019
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isMessagesSearchEndReached()Z
    .locals 4

    .line 343
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSearchEndReached:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecentSearchDisplayed()Z
    .locals 2

    .line 651
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->hasRecentSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSearchWas()Z
    .locals 1

    .line 647
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    return v0
.end method

.method public isSearching()Z
    .locals 1

    .line 154
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadMoreSearchMessages()V
    .locals 4

    .line 347
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqForumId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    if-eqz v0, :cond_0

    return-void

    .line 350
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchId:I

    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    if-eq v0, v1, :cond_1

    return-void

    .line 353
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-nez v0, :cond_2

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchId:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumMessagesInternal(Ljava/lang/String;I)V

    goto :goto_0

    .line 356
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchId:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchMessagesInternal(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public loadRecentSearch()V
    .locals 3

    .line 655
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    return-void

    .line 658
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    new-instance v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadRecentSearch(IILorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    .line 1512
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    sget v4, Lcom/iMe/common/IdFabric$ViewTypes;->TEXT_CELL:I

    const-string v5, "+"

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ne v3, v4, :cond_0

    .line 1513
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1514
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCell;

    .line 1515
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    invoke-virtual {v0, v6, v3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 1516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lorg/telegram/messenger/R$string;->Search:I

    const-string v6, "Search"

    invoke-static {v6, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "searchByTel"

    const-string v8, ""

    invoke-virtual {v2, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    .line 1517
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/TextCell;->setFullDivider(Z)V

    goto/16 :goto_2b

    .line 1519
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v4, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v11, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2b

    .line 1871
    :pswitch_1
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v12, v0

    check-cast v12, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 1872
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lorg/telegram/messenger/ContactsController$Contact;

    const/4 v14, 0x0

    .line 1873
    iget-object v0, v13, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object v2, v13, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2b

    .line 1860
    :pswitch_2
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1861
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCell;

    .line 1862
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    invoke-virtual {v0, v6, v3}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 1863
    sget v3, Lorg/telegram/messenger/R$string;->AddContactByPhone:I

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v11

    const-string v2, "AddContactByPhone"

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v11}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    .line 1865
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/TextCell;->showDivider(Z)V

    .line 1866
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/TextCell;->setFullDivider(Z)V

    goto/16 :goto_2b

    .line 1855
    :pswitch_3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    .line 1856
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;

    div-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->setIndex(I)V

    goto/16 :goto_2b

    .line 1848
    :pswitch_4
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/HashtagSearchCell;

    .line 1849
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1850
    iget-object v3, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1851
    iget-object v3, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v7, v11

    :goto_0
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Cells/HashtagSearchCell;->setNeedDivider(Z)V

    goto/16 :goto_2b

    .line 1843
    :pswitch_5
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TopicSearchCell;

    .line 1844
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TopicSearchCell;->setTopic(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    goto/16 :goto_2b

    .line 1829
    :pswitch_6
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v12, v0

    check-cast v12, Lorg/telegram/ui/Cells/DialogCell;

    .line 1830
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1831
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v7

    if-eq v2, v0, :cond_2

    goto :goto_1

    :cond_2
    move v7, v11

    :goto_1
    iput-boolean v7, v12, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    .line 1832
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lorg/telegram/messenger/MessageObject;

    .line 1833
    iget-object v0, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1834
    iput-boolean v0, v12, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-nez v15, :cond_3

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 1836
    invoke-virtual/range {v12 .. v18}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V

    goto/16 :goto_2b

    .line 1838
    :cond_3
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v13

    iget-object v0, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V

    goto/16 :goto_2b

    .line 1658
    :pswitch_7
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 1659
    iget-object v3, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const-string v5, "ClearButton"

    if-nez v3, :cond_4

    .line 1660
    sget v2, Lorg/telegram/messenger/R$string;->Hashtags:I

    const-string v3, "Hashtags"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->ClearButton:I

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2b

    .line 1667
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    move v3, v2

    goto/16 :goto_7

    .line 1668
    :cond_6
    :goto_2
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->hasHints()Z

    move-result v3

    if-ne v3, v7, :cond_7

    goto :goto_3

    :cond_7
    move v4, v3

    :goto_3
    const-string v3, "Recent"

    if-ge v2, v4, :cond_8

    .line 1677
    sget v2, Lorg/telegram/messenger/R$string;->Recent:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->ClearButton:I

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void

    :cond_8
    if-ne v2, v4, :cond_a

    .line 1684
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1685
    iget-boolean v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-nez v2, :cond_9

    .line 1686
    sget v2, Lorg/telegram/messenger/R$string;->Recent:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->ClearButton:I

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 1692
    :cond_9
    sget v2, Lorg/telegram/messenger/R$string;->Recent:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->Clear:I

    const-string v4, "Clear"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :goto_4
    return-void

    .line 1699
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v11

    goto :goto_5

    :cond_b
    iget-object v4, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v7

    :goto_5
    add-int/2addr v3, v4

    iget-object v4, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v11

    goto :goto_6

    :cond_c
    iget-object v4, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v7

    :goto_6
    add-int/2addr v3, v4

    if-ne v2, v3, :cond_d

    .line 1700
    sget v2, Lorg/telegram/messenger/R$string;->SearchAllChatsShort:I

    const-string v3, "SearchAllChatsShort"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1703
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v3

    sub-int v3, v2, v3

    .line 1706
    :goto_7
    iget-object v4, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v4

    .line 1707
    iget-object v5, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1708
    iget-object v6, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1709
    iget-object v12, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v12}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-le v12, v9, :cond_e

    .line 1710
    iget-boolean v13, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    if-eqz v13, :cond_e

    move v12, v9

    .line 1713
    :cond_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_f

    move v13, v11

    goto :goto_8

    :cond_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/2addr v13, v7

    :goto_8
    if-le v13, v8, :cond_10

    .line 1714
    iget-boolean v14, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v14, :cond_10

    goto :goto_9

    :cond_10
    move v8, v13

    .line 1717
    :goto_9
    iget-object v13, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_11

    move v13, v11

    goto :goto_a

    :cond_11
    iget-object v13, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/2addr v13, v7

    .line 1718
    :goto_a
    iget-object v14, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_12

    goto :goto_b

    :cond_12
    iget-object v14, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 1722
    :goto_b
    iget-object v14, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_14

    if-nez v3, :cond_13

    .line 1724
    sget v14, Lorg/telegram/messenger/R$string;->Topics:I

    const-string v15, "Topics"

    invoke-static {v15, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_c

    :cond_13
    const/4 v14, 0x0

    .line 1726
    :goto_c
    iget-object v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/2addr v15, v7

    sub-int/2addr v3, v15

    goto :goto_d

    :cond_14
    const/4 v14, 0x0

    .line 1728
    :goto_d
    iget-object v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_16

    if-nez v3, :cond_15

    .line 1730
    sget v14, Lorg/telegram/messenger/R$string;->InviteToTelegramShort:I

    const-string v15, "InviteToTelegramShort"

    invoke-static {v15, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 1732
    :cond_15
    iget-object v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/2addr v15, v7

    sub-int/2addr v3, v15

    :cond_16
    if-nez v14, :cond_1b

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    if-ltz v3, :cond_17

    if-ge v3, v12, :cond_17

    .line 1737
    sget v2, Lorg/telegram/messenger/R$string;->PhoneNumberSearch:I

    const-string v3, "PhoneNumberSearch"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 1738
    iget-object v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v9, :cond_1b

    .line 1739
    iget-boolean v11, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    .line 1740
    new-instance v10, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda20;

    invoke-direct {v10, v1, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Lorg/telegram/ui/Cells/GraySectionCell;)V

    goto :goto_10

    :cond_17
    sub-int/2addr v3, v12

    if-ltz v3, :cond_18

    if-ge v3, v8, :cond_18

    .line 1749
    sget v3, Lorg/telegram/messenger/R$string;->GlobalSearch:I

    const-string v5, "GlobalSearch"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 1750
    iget-object v3, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v9, :cond_1b

    .line 1751
    iget-boolean v11, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    .line 1752
    new-instance v10, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda19;

    invoke-direct {v10, v1, v4, v2, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;ILorg/telegram/ui/Cells/GraySectionCell;)V

    goto :goto_10

    .line 1810
    :cond_18
    iget-object v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v2, :cond_1a

    if-lez v13, :cond_1a

    sub-int/2addr v3, v8

    if-gt v3, v7, :cond_1a

    .line 1811
    iget v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v3

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    .line 1812
    sget v3, Lorg/telegram/messenger/R$string;->SearchMessagesIn:I

    new-array v4, v7, [Ljava/lang/Object;

    if-nez v2, :cond_19

    const-string v2, "null"

    goto :goto_e

    :cond_19
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_e
    aput-object v2, v4, v11

    const-string v2, "SearchMessagesIn"

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_f

    .line 1814
    :cond_1a
    sget v2, Lorg/telegram/messenger/R$string;->SearchMessages:I

    const-string v3, "SearchMessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    :cond_1b
    :goto_f
    const/4 v10, 0x0

    :goto_10
    if-nez v10, :cond_1c

    .line 1820
    invoke-virtual {v0, v14}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2b

    :cond_1c
    if-eqz v11, :cond_1d

    .line 1823
    sget v2, Lorg/telegram/messenger/R$string;->ShowMore:I

    const-string v3, "ShowMore"

    goto :goto_11

    :cond_1d
    sget v2, Lorg/telegram/messenger/R$string;->ShowLess:I

    const-string v3, "ShowLess"

    :goto_11
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v10}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v14, v2, v3}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2b

    .line 1521
    :pswitch_8
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v3, v0

    check-cast v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 1522
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1523
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getDialogId()J

    move-result-wide v19

    .line 1532
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1534
    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_1e

    .line 1535
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 1536
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    move-object v13, v5

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v5, v0

    goto :goto_14

    .line 1537
    :cond_1e
    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_20

    .line 1538
    iget v5, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v12, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    if-nez v5, :cond_1f

    goto :goto_12

    :cond_1f
    move-object v0, v5

    .line 1542
    :goto_12
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v5

    move-object v12, v0

    move-object v13, v5

    const/4 v5, 0x0

    goto :goto_13

    .line 1543
    :cond_20
    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v5, :cond_21

    .line 1544
    iget v5, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v0

    .line 1545
    iget v5, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v12, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v5

    move-object v14, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    goto :goto_14

    :cond_21
    const/4 v5, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_13
    const/4 v14, 0x0

    .line 1548
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1549
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v0

    if-ge v2, v0, :cond_23

    .line 1550
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v0

    sub-int/2addr v0, v7

    if-eq v2, v0, :cond_22

    move v0, v7

    goto :goto_15

    :cond_22
    move v0, v11

    :goto_15
    iput-boolean v0, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    move v0, v7

    goto :goto_16

    :cond_23
    move v0, v11

    .line 1553
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v15

    sub-int/2addr v2, v15

    goto :goto_17

    :cond_24
    move v0, v11

    .line 1555
    :goto_17
    iget-object v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_25

    .line 1556
    iget-object v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/2addr v15, v7

    sub-int/2addr v2, v15

    .line 1558
    :cond_25
    iget-object v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v15}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v15

    .line 1559
    iget-object v10, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v10}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v10

    .line 1560
    iget-object v4, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1561
    iget-object v11, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v11}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int v18, v4, v11

    if-lez v18, :cond_27

    .line 1562
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v18

    if-gtz v18, :cond_26

    iget-object v6, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_27

    :cond_26
    add-int/lit8 v2, v2, -0x1

    .line 1565
    :cond_27
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v9, :cond_28

    .line 1566
    iget-boolean v9, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    if-eqz v9, :cond_28

    const/4 v6, 0x3

    :cond_28
    if-lez v6, :cond_29

    add-int/lit8 v9, v6, -0x1

    .line 1570
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_29

    add-int/lit8 v9, v6, -0x2

    goto :goto_18

    :cond_29
    move v9, v6

    .line 1573
    :goto_18
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2a

    const/4 v10, 0x0

    goto :goto_19

    :cond_2a
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v10, v7

    :goto_19
    if-le v10, v8, :cond_2b

    .line 1574
    iget-boolean v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v15, :cond_2b

    goto :goto_1a

    :cond_2b
    move v8, v10

    :goto_1a
    if-nez v0, :cond_2d

    .line 1578
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v15

    sub-int/2addr v10, v15

    sub-int/2addr v10, v7

    if-eq v2, v10, :cond_2c

    add-int/2addr v9, v4

    add-int/2addr v9, v11

    sub-int/2addr v9, v7

    if-eq v2, v9, :cond_2c

    add-int/2addr v4, v8

    add-int/2addr v4, v6

    add-int/2addr v4, v11

    sub-int/2addr v4, v7

    if-eq v2, v4, :cond_2c

    move v4, v7

    goto :goto_1b

    :cond_2c
    const/4 v4, 0x0

    :goto_1b
    iput-boolean v4, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    :cond_2d
    const-string v4, "@"

    if-ltz v2, :cond_2f

    .line 1580
    iget-object v6, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2f

    if-nez v5, :cond_2f

    .line 1581
    iget-object v6, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 1582
    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_2e

    if-eqz v5, :cond_2e

    if-eqz v6, :cond_2e

    .line 1584
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    goto :goto_1c

    :cond_2e
    move-object v6, v2

    const/4 v2, 0x0

    goto :goto_1d

    :cond_2f
    const/4 v2, 0x0

    :goto_1c
    const/4 v6, 0x0

    :goto_1d
    if-nez v2, :cond_37

    if-eqz v0, :cond_30

    .line 1591
    iget-object v0, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentQuery:Ljava/lang/String;

    goto :goto_1e

    :cond_30
    iget-object v0, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundUsername()Ljava/lang/String;

    move-result-object v0

    .line 1592
    :goto_1e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_37

    if-eqz v5, :cond_31

    .line 1596
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v8, v9}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1f

    :cond_31
    if-eqz v12, :cond_32

    .line 1598
    iget-object v8, v12, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_1f

    :cond_32
    const/4 v8, 0x0

    :goto_1f
    const/16 v9, 0x21

    if-eqz v8, :cond_33

    .line 1600
    invoke-static {v8, v0}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_33

    .line 1601
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1602
    new-instance v8, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-direct {v8, v11}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v10

    invoke-virtual {v6, v8, v10, v11, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_33
    if-eqz v13, :cond_37

    if-nez v5, :cond_37

    .line 1606
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1607
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1610
    :cond_34
    :try_start_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1611
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1612
    invoke-virtual {v2, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1613
    invoke-static {v13, v0}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_35

    move v8, v7

    goto :goto_20

    :cond_35
    const/4 v8, 0x0

    :goto_20
    if-eqz v8, :cond_37

    .line 1615
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v4, :cond_36

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_36
    add-int/lit8 v4, v4, 0x1

    .line 1621
    :goto_21
    new-instance v8, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-direct {v8, v10}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(I)V

    add-int/2addr v0, v4

    invoke-virtual {v2, v8, v4, v0, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_22

    :catch_0
    move-exception v0

    .line 1626
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_23

    :cond_37
    :goto_22
    move-object v13, v2

    :goto_23
    const/4 v2, 0x0

    .line 1631
    invoke-virtual {v3, v2, v2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setChecked(ZZ)V

    if-eqz v5, :cond_38

    .line 1633
    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-wide v10, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->selfUserId:J

    cmp-long v0, v8, v10

    if-nez v0, :cond_38

    .line 1634
    sget v0, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v2, "SavedMessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    move/from16 v18, v7

    const/4 v10, 0x0

    goto :goto_24

    :cond_38
    move-object v15, v6

    move-object v10, v13

    const/16 v18, 0x0

    :goto_24
    if-eqz v12, :cond_3c

    .line 1638
    iget v0, v12, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v0, :cond_3c

    .line 1640
    invoke-static {v12}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    const/16 v2, 0x20

    if-eqz v0, :cond_39

    iget-boolean v0, v12, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v0, :cond_39

    .line 1641
    iget v0, v12, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    const-string v4, "Subscribers"

    invoke-static {v4, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    goto :goto_25

    .line 1643
    :cond_39
    iget v0, v12, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    const-string v4, "Members"

    invoke-static {v4, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    .line 1645
    :goto_25
    instance-of v2, v10, Landroid/text/SpannableStringBuilder;

    const-string v4, ", "

    if-eqz v2, :cond_3a

    .line 1646
    move-object v2, v10

    check-cast v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_27

    .line 1647
    :cond_3a
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v10, v2, v6

    aput-object v4, v2, v7

    const/4 v4, 0x2

    aput-object v0, v2, v4

    .line 1648
    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_26

    :cond_3b
    const/4 v6, 0x0

    :goto_26
    move-object/from16 v16, v0

    goto :goto_28

    :cond_3c
    :goto_27
    const/4 v6, 0x0

    move-object/from16 v16, v10

    :goto_28
    if-eqz v5, :cond_3d

    move-object v13, v5

    goto :goto_29

    :cond_3d
    move-object v13, v12

    :goto_29
    const/16 v17, 0x1

    move-object v12, v3

    .line 1653
    invoke-virtual/range {v12 .. v18}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 1654
    iget-object v0, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getDialogId()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->isSelected(J)Z

    move-result v0

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getDialogId()J

    move-result-wide v4

    cmp-long v2, v19, v4

    if-nez v2, :cond_3e

    goto :goto_2a

    :cond_3e
    move v7, v6

    :goto_2a
    invoke-virtual {v3, v0, v7}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setChecked(ZZ)V

    :goto_2b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 11

    const/4 p1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    .line 1494
    :pswitch_0
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x10

    invoke-direct {p1, v1, v2, v0}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZ)V

    goto/16 :goto_1

    .line 1490
    :pswitch_1
    new-instance p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1446
    :pswitch_2
    new-instance v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$4;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$4;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/content/Context;)V

    .line 1455
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    const/16 v3, 0x9

    .line 1456
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x0

    .line 1457
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1458
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1459
    new-instance v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$5;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/content/Context;)V

    .line 1465
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1466
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1468
    new-instance v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;

    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    iget v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    const/4 v8, 0x0

    iget v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    if-ne v4, p1, :cond_0

    move v9, v1

    goto :goto_0

    :cond_0
    move v9, v0

    :goto_0
    iget-object v10, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1469
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda26;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1480
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda27;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1487
    iput-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    move-object p1, v2

    goto :goto_1

    .line 1443
    :pswitch_3
    new-instance p1, Lorg/telegram/ui/Cells/HashtagSearchCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Cells/HashtagSearchCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 1437
    :pswitch_4
    new-instance p1, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    .line 1438
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 1439
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    goto :goto_1

    .line 1434
    :pswitch_5
    new-instance p1, Lorg/telegram/ui/Cells/TopicSearchCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Cells/TopicSearchCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 1426
    :pswitch_6
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZ)V

    goto :goto_1

    .line 1423
    :pswitch_7
    new-instance p1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 1420
    :pswitch_8
    new-instance v2, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    if-ne v3, p1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;->showPremiumBlock(Z)Lorg/telegram/ui/Cells/ProfileSearchCell;

    move-result-object p1

    :goto_1
    const/4 v0, 0x5

    const/4 v1, -0x1

    if-ne p2, v0, :cond_2

    .line 1498
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/16 v0, 0x56

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-direct {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 1500
    :cond_2
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1502
    :goto_2
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public putRecentSearch(JLorg/telegram/tgnet/TLObject;)V
    .locals 5

    .line 776
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    if-nez v0, :cond_0

    .line 778
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    invoke-direct {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;-><init>()V

    .line 779
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 781
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 783
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 784
    iput-wide p1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    .line 785
    iput-object p3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    .line 786
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int p3, v1

    iput p3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->date:I

    .line 787
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 788
    iget p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;J)V

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeRecentSearch(J)V
    .locals 2

    .line 842
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    if-nez v0, :cond_0

    return-void

    .line 846
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 847
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 848
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 849
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 850
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 851
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public searchDialogs(Ljava/lang/String;I)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-eqz v1, :cond_1

    .line 1031
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->folderId:I

    if-eq v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    .line 1034
    :cond_1
    iput-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchText:Ljava/lang/String;

    .line 1035
    iput v2, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->folderId:I

    .line 1036
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1037
    sget-object v2, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 1038
    iput-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 1040
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    .line 1041
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1042
    iput-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    :cond_3
    if-eqz v1, :cond_4

    .line 1046
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    move-object v2, v3

    .line 1050
    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filterRecent(Ljava/lang/String;)V

    .line 1051
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_e

    .line 1052
    iput-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentQuery:Ljava/lang/String;

    .line 1053
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->unloadRecentHashtags()V

    .line 1054
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1055
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1056
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1057
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1, v3, v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1058
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_b

    .line 1059
    iget-object v8, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/16 v4, 0xb

    if-eq v1, v4, :cond_5

    move v12, v6

    goto :goto_1

    :cond_5
    move v12, v7

    :goto_1
    if-eq v1, v4, :cond_6

    move v13, v6

    goto :goto_2

    :cond_6
    move v13, v7

    :goto_2
    if-eq v1, v5, :cond_8

    if-ne v1, v4, :cond_7

    goto :goto_3

    :cond_7
    move v14, v7

    goto :goto_4

    :cond_8
    :goto_3
    move v14, v6

    :goto_4
    const-wide/16 v15, 0x0

    if-nez v1, :cond_9

    move/from16 v17, v6

    goto :goto_5

    :cond_9
    move/from16 v17, v7

    :goto_5
    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 1070
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v4

    goto :goto_6

    :cond_a
    const-wide/16 v4, 0x0

    :goto_6
    move-wide/from16 v20, v4

    .line 1059
    invoke-virtual/range {v8 .. v21}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZIIJ)V

    .line 1073
    :cond_b
    iput-boolean v7, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    .line 1074
    iput v7, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    .line 1075
    iput v7, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    .line 1076
    iput-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    .line 1077
    iput-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    .line 1078
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v1, :cond_c

    .line 1079
    invoke-interface {v1, v7, v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    .line 1081
    :cond_c
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    if-eq v1, v2, :cond_d

    .line 1082
    invoke-direct {v0, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics(Ljava/lang/String;)V

    .line 1083
    invoke-direct {v0, v3, v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchMessagesInternal(Ljava/lang/String;I)V

    .line 1084
    invoke-direct {v0, v3, v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumMessagesInternal(Ljava/lang/String;I)V

    .line 1086
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1087
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipDates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1088
    iput-boolean v7, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipArchive:Z

    .line 1089
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtersDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    if-eqz v1, :cond_13

    .line 1090
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipDates:Ljava/util/ArrayList;

    invoke-interface {v1, v7, v3, v2, v7}, Lorg/telegram/ui/FilteredSearchView$Delegate;->updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    goto/16 :goto_9

    .line 1093
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    iget-object v8, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v8}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1094
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    if-eq v3, v5, :cond_10

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_10

    .line 1095
    iput-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSearchEndReached:Z

    .line 1096
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->loadRecentHashtags()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1097
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1098
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1099
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getHashtags()Ljava/util/ArrayList;

    move-result-object v3

    move v4, v7

    .line 1100
    :goto_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_f

    .line 1101
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1103
    :cond_f
    iput-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    .line 1104
    iput-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    .line 1105
    iput v7, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    .line 1106
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1107
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v3, :cond_11

    .line 1108
    invoke-interface {v3, v7, v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    goto :goto_8

    .line 1112
    :cond_10
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1115
    :cond_11
    :goto_8
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    add-int/2addr v3, v6

    iput v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    const/4 v4, 0x3

    .line 1117
    iput v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    .line 1118
    iput-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    .line 1119
    iput-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    .line 1120
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1121
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v4, :cond_12

    .line 1122
    invoke-interface {v4, v6, v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    .line 1125
    :cond_12
    sget-object v4, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda17;

    invoke-direct {v5, v0, v2, v3, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v4, v5, v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    :cond_13
    :goto_9
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    return-void
.end method

.method public setFilterDialogIds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filterDialogIds:Ljava/util/ArrayList;

    return-void
.end method

.method public setFiltersDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V
    .locals 3

    .line 2005
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtersDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 2007
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipDates:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipArchive:Z

    invoke-interface {p1, p2, v0, v1, v2}, Lorg/telegram/ui/FilteredSearchView$Delegate;->updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method
