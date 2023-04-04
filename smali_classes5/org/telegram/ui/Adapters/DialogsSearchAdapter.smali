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

.field private filtered2RecentSearchObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;",
            ">;"
        }
    .end annotation
.end field

.field private filteredRecentQuery:Ljava/lang/String;

.field private filteredRecentSearchObjects:Ljava/util/ArrayList;
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

.field private searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field private searchContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private searchForumResultMessages:Ljava/util/ArrayList;
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

.field private searchResultHashtags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultMessages:Ljava/util/ArrayList;
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

.field private searchTopics:Ljava/util/ArrayList;
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

.method public constructor <init>(Landroid/content/Context;IILandroidx/recyclerview/widget/DefaultItemAnimator;ZI)V
    .locals 2

    .line 244
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    .line 105
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqForumId:I

    const/4 v1, -0x1

    .line 111
    iput v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesLoadingRow:I

    .line 125
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->showMoreAnimation:Z

    .line 131
    sget v1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 136
    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentQuery:Ljava/lang/String;

    .line 137
    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipDates:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 1815
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    .line 1816
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    .line 245
    iput p6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    .line 246
    iput-object p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 247
    new-instance p4, Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-direct {p4, v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>(Z)V

    iput-object p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 248
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$1;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {p4, v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    .line 285
    iget-object p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p4, p5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setAllowGlobalResults(Z)V

    .line 286
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    .line 287
    iput p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    .line 288
    iput p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    .line 289
    invoke-static {p6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->selfUserId:J

    .line 290
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadRecentSearch()V

    .line 291
    invoke-static {p6}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MediaDataController;->loadHints(Z)V

    return-void
.end method

.method static synthetic access$002(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;I)I
    .locals 0

    .line 68
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastGlobalSearchId:I

    return p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastLocalSearchId:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchId:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 68
    iget-object p0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I
    .locals 0

    .line 68
    iget p0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    return p0
.end method

.method private synthetic lambda$clearRecentSearch$9(Ljava/lang/StringBuilder;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "DELETE FROM search_recent WHERE "

    .line 783
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
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

    .line 786
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$loadRecentSearch$4(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V
    .locals 0

    .line 614
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->setRecentSearch(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method private static synthetic lambda$loadRecentSearch$5(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;)I
    .locals 0

    .line 710
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

    .line 718
    invoke-interface {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;->setRecentSearch(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method private static synthetic lambda$loadRecentSearch$7(IILorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;)V
    .locals 13

    .line 621
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

    .line 623
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 624
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 625
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 626
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 628
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 629
    new-instance v6, Landroidx/collection/LongSparseArray;

    invoke-direct {v6}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 630
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 631
    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v7

    .line 634
    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_2

    if-eqz p1, :cond_1

    const/4 v9, 0x3

    if-ne p1, v9, :cond_4

    .line 636
    :cond_1
    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v9

    .line 637
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 638
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 642
    :cond_2
    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x2

    if-eq p1, v9, :cond_4

    .line 643
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 644
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    neg-long v11, v7

    .line 648
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 649
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move v9, v10

    goto :goto_2

    :cond_4
    move v9, v2

    :goto_2
    if-eqz v9, :cond_0

    .line 654
    new-instance v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    invoke-direct {v9}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;-><init>()V

    .line 655
    iput-wide v7, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    .line 656
    invoke-virtual {v0, v10}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v7

    iput v7, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->date:I

    .line 657
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    iget-wide v7, v9, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    invoke-virtual {v6, v7, v8, v9}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 661
    :cond_5
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 664
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 666
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, ","

    if-nez v0, :cond_7

    .line 667
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 668
    invoke-static {p0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    invoke-static {v7, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4, v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getEncryptedChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move v4, v2

    .line 669
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_7

    .line 670
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

    if-eqz v8, :cond_6

    .line 672
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLObject;

    iput-object v9, v8, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 677
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 679
    invoke-static {p0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-static {v7, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Lorg/telegram/messenger/MessagesStorage;->getChatsInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    move v3, v2

    .line 680
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 681
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 682
    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v8, v8

    .line 683
    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v10, :cond_8

    .line 684
    invoke-virtual {v6, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .line 685
    invoke-virtual {v6, v8, v9}, Landroidx/collection/LongSparseArray;->remove(J)V

    if-eqz v4, :cond_9

    .line 687
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 690
    :cond_8
    invoke-virtual {v6, v8, v9}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    if-eqz v8, :cond_9

    .line 692
    iput-object v4, v8, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 698
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 699
    invoke-static {p0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p0

    invoke-static {v7, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/MessagesStorage;->getUsersInternal(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 700
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v2, p0, :cond_c

    .line 701
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    .line 702
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v6, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    if-eqz v0, :cond_b

    .line 704
    iput-object p0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 709
    :cond_c
    sget-object p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda21;->INSTANCE:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda21;

    invoke-static {v5, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 718
    new-instance p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda6;

    invoke-direct {p0, p2, v5, v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception p0

    .line 720
    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$19(Landroid/view/View;)V
    .locals 0

    .line 1597
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p1, :cond_0

    .line 1598
    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->needClearList()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$20(Landroid/view/View;)V
    .locals 0

    .line 1614
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p1, :cond_0

    .line 1615
    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->clearTopPeers()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$21(Landroid/view/View;)V
    .locals 0

    .line 1623
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p1, :cond_0

    .line 1624
    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->needClearList()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$22(Landroid/view/View;)V
    .locals 0

    .line 1629
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p1, :cond_0

    .line 1630
    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->needClearList()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$23(Lorg/telegram/ui/Cells/GraySectionCell;)V
    .locals 2

    .line 1677
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    if-eqz v0, :cond_0

    .line 1678
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

    .line 1679
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$24(I)V
    .locals 0

    add-int/lit8 p1, p1, 0x3

    .line 1723
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$25(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 1735
    iput-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->showMoreAnimation:Z

    const/4 v0, 0x0

    .line 1736
    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->showMoreHeader:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1738
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$26(Ljava/util/ArrayList;ILorg/telegram/ui/Cells/GraySectionCell;)V
    .locals 9

    .line 1689
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1690
    iget-wide v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastShowMoreUpdate:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    .line 1693
    :cond_0
    iput-wide v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastShowMoreUpdate:J

    .line 1695
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1696
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

    .line 1697
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-eqz v2, :cond_7

    const-wide/16 v5, 0xc8

    if-eqz v0, :cond_4

    const-wide/16 v7, 0x2d

    goto :goto_3

    :cond_4
    move-wide v7, v5

    .line 1698
    :goto_3
    invoke-virtual {v2, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 1699
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-eqz v0, :cond_5

    const-wide/16 v5, 0x50

    :cond_5
    invoke-virtual {v2, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 1700
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-eqz v0, :cond_6

    const-wide/16 v5, 0x10e

    goto :goto_4

    :cond_6
    const-wide/16 v5, 0x0

    :goto_4
    invoke-virtual {v2, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDelay(J)V

    .line 1702
    :cond_7
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    xor-int/2addr v2, v4

    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v2, :cond_8

    .line 1703
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

    .line 1704
    iput-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->showMoreHeader:Landroid/view/View;

    .line 1705
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 1706
    instance-of v2, p3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_b

    .line 1707
    move-object v2, p3

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 1708
    iget-boolean v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-nez v5, :cond_9

    add-int/lit8 v5, p2, 0x4

    goto :goto_6

    :cond_9
    add-int v5, p2, p1

    add-int/2addr v5, v4

    :goto_6
    move v6, v1

    .line 1709
    :goto_7
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_b

    .line 1710
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1711
    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v8

    if-ne v8, v5, :cond_a

    .line 1712
    iput-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->showMoreHeader:Landroid/view/View;

    goto :goto_8

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 1717
    :cond_b
    :goto_8
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-nez v2, :cond_c

    add-int/lit8 v2, p2, 0x3

    .line 1718
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/2addr p2, v3

    add-int/lit8 p1, p1, -0x3

    .line 1719
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_9

    :cond_c
    add-int/lit8 v2, p2, 0x4

    add-int/lit8 p1, p1, -0x3

    .line 1721
    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    if-eqz v0, :cond_d

    .line 1723
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;I)V

    const-wide/16 v2, 0x15e

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_9

    :cond_d
    add-int/lit8 p2, p2, 0x3

    .line 1725
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1729
    :goto_9
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->cancelShowMoreAnimation:Ljava/lang/Runnable;

    if-eqz p1, :cond_e

    .line 1730
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_e
    if-eqz v0, :cond_f

    .line 1733
    iput-boolean v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->showMoreAnimation:Z

    .line 1734
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->cancelShowMoreAnimation:Ljava/lang/Runnable;

    const-wide/16 p2, 0x190

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_a

    .line 1742
    :cond_f
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->showMoreAnimation:Z

    :goto_a
    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$27(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 1759
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$17(Landroid/view/View;I)V
    .locals 2

    .line 1411
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p2, :cond_0

    .line 1412
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->didPressedOnSubDialog(J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$18(Landroid/view/View;I)Z
    .locals 2

    .line 1416
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p2, :cond_0

    .line 1417
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

    .line 740
    :try_start_0
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "REPLACE INTO search_recent VALUES(?, ?)"

    invoke-virtual {v0, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    .line 741
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v1, 0x1

    .line 742
    invoke-virtual {v0, v1, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 p1, 0x2

    .line 743
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int p2, v1

    invoke-virtual {v0, p1, p2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 744
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    .line 745
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 747
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$removeRecentSearch$10(J)V
    .locals 3

    .line 803
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

    .line 805
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

    .line 1076
    iput-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    .line 1077
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    if-eq v15, v1, :cond_0

    return-void

    .line 1080
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

    .line 1081
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

    .line 1092
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

    .line 1081
    invoke-virtual/range {v1 .. v14}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZIIJ)V

    goto :goto_6

    :cond_7
    move-object v15, v13

    move/from16 v16, v14

    .line 1095
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    .line 1097
    :goto_6
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    if-eqz v1, :cond_9

    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_8

    goto :goto_7

    .line 1100
    :cond_8
    invoke-direct {v0, v15}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics(Ljava/lang/String;)V

    move/from16 v1, p1

    move-object v2, v15

    .line 1101
    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchMessagesInternal(Ljava/lang/String;I)V

    .line 1102
    invoke-direct {v0, v2, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumMessagesInternal(Ljava/lang/String;I)V

    goto :goto_8

    .line 1098
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

    .line 1069
    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 1070
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchDialogsInternal(Ljava/lang/String;I)V

    .line 1071
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 1072
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    return-void

    .line 1075
    :cond_0
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchDialogsInternal$11()V
    .locals 5

    .line 870
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtersDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 871
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipDates:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipArchive:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/telegram/ui/FilteredSearchView$Delegate;->updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$searchDialogsInternal$12(Ljava/lang/String;ILjava/lang/String;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    .line 842
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 843
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 844
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 845
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 847
    iget v0, v6, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v7

    iget v8, v6, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    iget-object v13, v6, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filterDialogIds:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getSearchAdapterHelper()Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    move-result-object v0

    iget-boolean v15, v0, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->crossAccountsForward:Z

    const/4 v14, -0x1

    move-object/from16 v9, p1

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    invoke-virtual/range {v7 .. v15}, Lorg/telegram/messenger/MessagesStorage;->localSearch(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZ)V

    move-object/from16 v0, p0

    move-object v7, v5

    move/from16 v5, p2

    .line 863
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 864
    iget-object v0, v6, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipDates:Ljava/util/ArrayList;

    invoke-static {v7, v0}, Lorg/telegram/ui/Adapters/FiltersView;->fillTipDates(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    .line 865
    iput-boolean v0, v6, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipArchive:Z

    .line 866
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    sget v0, Lorg/telegram/messenger/R$string;->ArchiveSearchFilter:I

    const-string v1, "ArchiveSearchFilter"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "archive"

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 867
    iput-boolean v0, v6, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipArchive:Z

    .line 869
    :cond_1
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v0, v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchForumMessagesInternal$0(IILorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_messages_search;Ljava/util/ArrayList;)V
    .locals 3

    .line 381
    iget p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastForumReqId:I

    const/4 v0, 0x0

    if-ne p1, p4, :cond_9

    if-lez p2, :cond_0

    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    if-ne p2, p1, :cond_9

    .line 382
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    const/4 p4, 0x1

    sub-int/2addr p1, p4

    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    if-nez p3, :cond_9

    .line 385
    check-cast p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 386
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v1, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, v1, p4, p4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 387
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 388
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 389
    iget p1, p6, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->add_offset:I

    if-nez p1, :cond_1

    .line 390
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 392
    :cond_1
    iget p1, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->next_rate:I

    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->nextSearchRate:I

    move p1, v0

    .line 393
    :goto_0
    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_3

    .line 394
    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Message;

    .line 395
    invoke-static {p3}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v1

    .line 396
    iget p6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p6

    iget-object p6, p6, Lorg/telegram/messenger/MessagesController;->deletedHistory:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p6, v1, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result p6

    if-eqz p6, :cond_2

    .line 397
    iget p3, p3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gt p3, p6, :cond_2

    goto :goto_1

    .line 400
    :cond_2
    iget-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p3, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 402
    :cond_3
    iput-boolean p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    .line 403
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

    .line 405
    iput p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchId:I

    .line 406
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastLocalSearchId:I

    if-eq p1, p2, :cond_5

    .line 407
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 409
    :cond_5
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastGlobalSearchId:I

    if-eq p1, p2, :cond_6

    .line 410
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clear()V

    .line 413
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    iget-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 414
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p1, :cond_8

    .line 415
    iget p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    if-lez p2, :cond_7

    move p2, p4

    goto :goto_3

    :cond_7
    move p2, v0

    :goto_3
    invoke-interface {p1, p2, p4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    .line 416
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->runResultsEnterAnimation()V

    .line 418
    :cond_8
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 421
    :cond_9
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqForumId:I

    return-void
.end method

.method private synthetic lambda$searchForumMessagesInternal$1(Ljava/lang/String;IILorg/telegram/tgnet/TLRPC$TL_messages_search;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 14

    .line 360
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-nez p6, :cond_2

    .line 362
    move-object/from16 v0, p5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 363
    new-instance v9, Landroidx/collection/LongSparseArray;

    invoke-direct {v9}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 364
    new-instance v10, Landroidx/collection/LongSparseArray;

    invoke-direct {v10}, Landroidx/collection/LongSparseArray;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 365
    :goto_0
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 366
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 367
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v9, v4, v5, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 369
    :goto_1
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 370
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 371
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v10, v4, v5, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v11, v1

    .line 373
    :goto_2
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_2

    .line 374
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Message;

    .line 375
    new-instance v12, Lorg/telegram/messenger/MessageObject;

    move-object v13, p0

    iget v2, v13, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v12

    move-object v4, v10

    move-object v5, v9

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;ZZ)V

    .line 376
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, p1

    .line 377
    invoke-virtual {v12, p1}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    move-object v13, p0

    move-object v5, p1

    .line 380
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

    .line 517
    iget p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastReqId:I

    const/4 v0, 0x0

    if-ne p1, p4, :cond_f

    if-lez p2, :cond_0

    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    if-ne p2, p1, :cond_f

    .line 518
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    const/4 p4, 0x1

    sub-int/2addr p1, p4

    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    if-nez p3, :cond_f

    .line 521
    check-cast p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 522
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v1, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, v1, p4, p4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 523
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 524
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p3, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 525
    iget p1, p6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    if-nez p1, :cond_1

    .line 526
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 528
    :cond_1
    iget p1, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->next_rate:I

    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->nextSearchRate:I

    move p1, v0

    .line 529
    :goto_0
    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_9

    .line 530
    iget-object p3, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Message;

    .line 531
    invoke-static {p3}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v1

    .line 532
    iget p6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p6

    iget-object p6, p6, Lorg/telegram/messenger/MessagesController;->deletedHistory:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {p6, v1, v2}, Lorg/telegram/messenger/support/LongSparseIntArray;->get(J)I

    move-result p6

    if-eqz p6, :cond_2

    .line 533
    iget v1, p3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-gt v1, p6, :cond_2

    goto/16 :goto_5

    .line 536
    :cond_2
    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lorg/telegram/messenger/MessageObject;

    .line 537
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v0

    .line 539
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 540
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_3

    if-eqz p6, :cond_3

    .line 541
    invoke-virtual {p6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p6}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-nez v2, :cond_3

    move v1, p4

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_2
    if-eqz v1, :cond_5

    goto :goto_5

    .line 550
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    invoke-static {p3}, Lorg/telegram/messenger/MessageObject;->getDialogId(Lorg/telegram/tgnet/TLRPC$Message;)J

    move-result-wide v1

    .line 552
    iget-boolean p6, p3, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    if-eqz p6, :cond_6

    iget p6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p6

    iget-object p6, p6, Lorg/telegram/messenger/MessagesController;->dialogs_read_outbox_max:Lj$/util/concurrent/ConcurrentHashMap;

    goto :goto_3

    :cond_6
    iget p6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p6

    iget-object p6, p6, Lorg/telegram/messenger/MessagesController;->dialogs_read_inbox_max:Lj$/util/concurrent/ConcurrentHashMap;

    .line 553
    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p6, v3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_7

    .line 555
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget-boolean v4, p3, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    invoke-virtual {v3, v4, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDialogReadMax(ZJ)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 556
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p6, v1, v3}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p6

    iget v1, p3, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ge p6, v1, :cond_8

    move p6, p4

    goto :goto_4

    :cond_8
    move p6, v0

    :goto_4
    iput-boolean p6, p3, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 560
    :cond_9
    iput-boolean p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    .line 561
    iget-object p1, p5, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p3, 0x14

    if-eq p1, p3, :cond_a

    move p1, p4

    goto :goto_6

    :cond_a
    move p1, v0

    :goto_6
    iput-boolean p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSearchEndReached:Z

    if-lez p2, :cond_c

    .line 563
    iput p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchId:I

    .line 564
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastLocalSearchId:I

    if-eq p1, p2, :cond_b

    .line 565
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 567
    :cond_b
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastGlobalSearchId:I

    if-eq p1, p2, :cond_c

    .line 568
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clear()V

    .line 571
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    iget-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 572
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p1, :cond_e

    .line 573
    iget p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    if-lez p2, :cond_d

    move p2, p4

    goto :goto_7

    :cond_d
    move p2, v0

    :goto_7
    invoke-interface {p1, p2, p4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    .line 574
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->runResultsEnterAnimation()V

    .line 576
    :cond_e
    iput-boolean p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    .line 577
    iput-boolean p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    .line 578
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 581
    :cond_f
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    return-void
.end method

.method private synthetic lambda$searchMessagesInternal$3(Ljava/lang/String;IILorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 14

    .line 496
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-nez p6, :cond_2

    .line 498
    move-object/from16 v0, p5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 499
    new-instance v9, Landroidx/collection/LongSparseArray;

    invoke-direct {v9}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 500
    new-instance v10, Landroidx/collection/LongSparseArray;

    invoke-direct {v10}, Landroidx/collection/LongSparseArray;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 501
    :goto_0
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 502
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 503
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v9, v4, v5, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 505
    :goto_1
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 506
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 507
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v10, v4, v5, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v11, v1

    .line 509
    :goto_2
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_2

    .line 510
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Message;

    .line 511
    new-instance v12, Lorg/telegram/messenger/MessageObject;

    move-object v13, p0

    iget v2, v13, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v12

    move-object v4, v10

    move-object v5, v9

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;ZZ)V

    .line 512
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, p1

    .line 513
    invoke-virtual {v12, p1}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    move-object v13, p0

    move-object v5, p1

    .line 516
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

    .line 915
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 916
    iput-wide p1, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    if-eqz p4, :cond_0

    .line 918
    iput p4, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->folder_id:I

    .line 920
    :cond_0
    instance-of p4, p3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p4, :cond_1

    .line 921
    check-cast p3, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p3}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p3

    iput p3, v0, Lorg/telegram/tgnet/TLRPC$Dialog;->flags:I

    .line 923
    :cond_1
    iget p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {p3, p1, p2, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 924
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getAllDialogs()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
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

    .line 880
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    .line 881
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    if-eq p1, v0, :cond_0

    return-void

    .line 884
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastLocalSearchId:I

    .line 885
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastGlobalSearchId:I

    if-eq v0, p1, :cond_1

    .line 886
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clear()V

    .line 888
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchId:I

    if-eq v0, p1, :cond_2

    .line 889
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 891
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    .line 892
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    move v2, v0

    .line 893
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 894
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 896
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$User;

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_3

    .line 897
    move-object v4, v3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 898
    iget v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v4, v1}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 899
    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_1

    .line 900
    :cond_3
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_4

    .line 901
    move-object v4, v3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 902
    iget v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v4, v1}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 903
    iget-wide v7, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v7, v7

    goto :goto_1

    .line 904
    :cond_4
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v4, :cond_5

    .line 905
    move-object v4, v3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 906
    iget v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    invoke-virtual {v7, v4, v1}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    :cond_5
    move-wide v7, v5

    :goto_1
    cmp-long v4, v7, v5

    if-eqz v4, :cond_6

    .line 910
    iget v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-nez v4, :cond_6

    .line 913
    iget v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda22;

    invoke-direct {v5, p0, v7, v8, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;JLjava/lang/Object;)V

    invoke-virtual {v4, v7, v8, v5}, Lorg/telegram/messenger/MessagesStorage;->getDialogFolderId(JLorg/telegram/messenger/MessagesStorage$IntCallback;)V

    .line 931
    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->resentSearchAvailable()Z

    move-result v4

    if-eqz v4, :cond_a

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-nez v3, :cond_a

    .line 933
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_2

    :cond_7
    move v3, v0

    :goto_2
    move v4, v0

    :goto_3
    if-nez v3, :cond_9

    if-ge v4, p1, :cond_9

    .line 937
    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    if-eqz v5, :cond_8

    .line 938
    iget-wide v5, v5, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_8

    move v3, v1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    if-eqz v3, :cond_a

    .line 943
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 944
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_a
    add-int/2addr v2, v1

    goto/16 :goto_0

    .line 949
    :cond_b
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p4, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 950
    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 951
    iput-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 953
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 954
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 955
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p1, :cond_d

    .line 956
    iget p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    if-lez p2, :cond_c

    move v0, v1

    :cond_c
    invoke-interface {p1, v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    .line 957
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->runResultsEnterAnimation()V

    :cond_d
    return-void
.end method

.method public static loadRecentSearch(IILorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;)V
    .locals 2

    .line 619
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
    .locals 2

    .line 591
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private searchDialogsInternal(Ljava/lang/String;I)V
    .locals 6

    .line 832
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 835
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 836
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    .line 837
    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    .line 838
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

    .line 841
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

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 325
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

    .line 328
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqForumId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 329
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqForumId:I

    invoke-virtual {v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 330
    iput v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqForumId:I

    .line 332
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    .line 333
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentQuery:Ljava/lang/String;

    .line 334
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 335
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 336
    iput v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastForumReqId:I

    .line 337
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    .line 338
    iput-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    .line 339
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 343
    :cond_3
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/16 v2, 0xf

    if-ne v0, v2, :cond_4

    return-void

    .line 347
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v2

    .line 349
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    const/16 v4, 0x14

    .line 350
    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 351
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 352
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 353
    iget v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 354
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 355
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->add_offset:I

    .line 357
    :cond_5
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    .line 358
    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastForumReqId:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastForumReqId:I

    .line 359
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

    .line 446
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

    .line 449
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 450
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    invoke-virtual {v0, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 451
    iput v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    .line 453
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 454
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentQuery:Ljava/lang/String;

    .line 455
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 456
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 457
    iput v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastReqId:I

    .line 458
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    .line 459
    iput-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    .line 460
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 463
    :cond_2
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filterRecent(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 467
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/16 v3, 0xf

    if-ne v0, v3, :cond_5

    .line 468
    iget p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    .line 469
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz p2, :cond_4

    if-lez p1, :cond_3

    move v1, v2

    .line 470
    :cond_3
    invoke-interface {p2, v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    .line 471
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->runResultsEnterAnimation()V

    :cond_4
    return-void

    .line 476
    :cond_5
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;-><init>()V

    const/16 v0, 0x14

    .line 477
    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->limit:I

    .line 478
    iput-object p1, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->q:Ljava/lang/String;

    .line 479
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 480
    iget v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    or-int/2addr v0, v2

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->flags:I

    .line 481
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->folderId:I

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->folder_id:I

    .line 482
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 483
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 484
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 485
    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->nextSearchRate:I

    iput v1, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    .line 486
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    .line 487
    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_0

    .line 489
    :cond_6
    iput v1, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    .line 490
    iput v1, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 491
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 493
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    .line 494
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastReqId:I

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastReqId:I

    .line 495
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

    .line 427
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 428
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_1

    .line 431
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 432
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v0

    .line 433
    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getTopicsController()Lorg/telegram/messenger/TopicsController;

    move-result-object v2

    neg-long v0, v0

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/TopicsController;->getTopics(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 434
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 435
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 436
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

    .line 437
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->searchQuery:Ljava/lang/String;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
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

    .line 815
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    .line 816
    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    const/4 p1, 0x0

    .line 817
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 818
    iget-object p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .line 819
    iget-object v0, p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 820
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v0, p2, v2}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    goto :goto_1

    .line 821
    :cond_0
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_1

    .line 822
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, p2, v2}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto :goto_1

    .line 823
    :cond_1
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v0, :cond_2

    .line 824
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

    .line 827
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filterRecent(Ljava/lang/String;)V

    .line 828
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

    .line 879
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

    .line 1999
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move v1, v0

    .line 2001
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 2002
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

    .line 811
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->addHashtagsFromMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public clearRecentHashtags()V
    .locals 1

    .line 967
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->clearRecentHashtags()V

    .line 968
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 969
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearRecentSearch()V
    .locals 6

    .line 754
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    const-string v1, "1"

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 755
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 756
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .line 757
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 758
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 759
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    iget-wide v4, v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->remove(J)V

    if-nez v0, :cond_0

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "did IN ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 762
    iget-wide v2, v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v3, ", "

    .line 764
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, ")"

    .line 770
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 773
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 774
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 775
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 776
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 780
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 781
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

    .line 1952
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentQuery:Ljava/lang/String;

    .line 1953
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1954
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1955
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1956
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge v1, p1, :cond_1

    .line 1958
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

    if-nez v0, :cond_0

    goto :goto_1

    .line 1961
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1965
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1966
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_c

    .line 1968
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    if-eqz v2, :cond_b

    .line 1969
    iget-object v3, v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    if-nez v3, :cond_3

    goto/16 :goto_4

    .line 1972
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v3

    iget-wide v5, v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    goto :goto_4

    .line 1976
    :cond_4
    iget-object v3, v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    .line 1977
    move-object v4, v3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 1978
    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->username:Ljava/lang/String;

    goto :goto_3

    .line 1979
    :cond_5
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_6

    .line 1980
    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    .line 1981
    iget-object v3, v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    goto :goto_3

    .line 1982
    :cond_6
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    if-eqz v4, :cond_7

    .line 1983
    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatInvite;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatInvite;->title:Ljava/lang/String;

    move-object v7, v5

    move-object v5, v3

    move-object v3, v7

    goto :goto_3

    :cond_7
    move-object v3, v5

    :goto_3
    if-eqz v5, :cond_8

    .line 1985
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->wordStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    if-eqz v3, :cond_a

    .line 1986
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->wordStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1987
    :cond_9
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1989
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_b

    goto :goto_5

    :cond_b
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    :goto_5
    return-void
.end method

.method public getCurrentItemCount()I
    .locals 1

    .line 1948
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentItemCount:I

    return v0
.end method

.method public getInnerListView()Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    .line 295
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 12

    .line 1186
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-lez p1, :cond_0

    .line 1188
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1

    .line 1193
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 1194
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    .line 1200
    :cond_3
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    :goto_1
    if-le p1, v0, :cond_7

    add-int/lit8 v5, p1, -0x1

    sub-int/2addr v5, v0

    .line 1201
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_7

    .line 1202
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    iget-object p1, p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    .line 1203
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_5

    .line 1204
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

    if-eqz v0, :cond_6

    goto :goto_2

    .line 1208
    :cond_5
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_6

    .line 1209
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

    if-eqz v0, :cond_6

    :goto_2
    move-object p1, v0

    :cond_6
    return-object p1

    .line 1216
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 1219
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    if-lez p1, :cond_9

    .line 1220
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_9

    .line 1221
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1223
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    sub-int/2addr p1, v0

    .line 1225
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    if-lez p1, :cond_b

    .line 1226
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_b

    .line 1227
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1229
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    sub-int/2addr p1, v0

    .line 1231
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v0

    .line 1232
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v4

    .line 1233
    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v5

    .line 1234
    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1235
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int v8, v6, v7

    if-lez v8, :cond_f

    .line 1236
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v8

    if-gtz v8, :cond_d

    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_f

    :cond_d
    if-nez p1, :cond_e

    return-object v1

    :cond_e
    add-int/lit8 p1, p1, -0x1

    .line 1242
    :cond_f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x3

    if-le v8, v9, :cond_10

    .line 1243
    iget-boolean v10, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    if-eqz v10, :cond_10

    move v8, v9

    .line 1246
    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_11

    move v9, v3

    goto :goto_3

    :cond_11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v9, v2

    :goto_3
    const/4 v10, 0x4

    if-le v9, v10, :cond_12

    .line 1247
    iget-boolean v11, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v11, :cond_12

    move v9, v10

    :cond_12
    if-ltz p1, :cond_13

    if-ge p1, v6, :cond_13

    .line 1251
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_13
    sub-int/2addr p1, v6

    if-ltz p1, :cond_14

    if-ge p1, v7, :cond_14

    .line 1255
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_14
    sub-int/2addr p1, v7

    if-ltz p1, :cond_15

    if-ge p1, v8, :cond_15

    .line 1259
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_15
    sub-int/2addr p1, v8

    if-lez p1, :cond_16

    if-ge p1, v9, :cond_16

    sub-int/2addr p1, v2

    .line 1263
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_16
    sub-int/2addr p1, v9

    .line 1266
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v3

    goto :goto_4

    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    :goto_4
    if-lez p1, :cond_18

    .line 1267
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt p1, v4, :cond_18

    .line 1268
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1270
    :cond_18
    iget-boolean v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-nez v4, :cond_19

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_19

    move v3, v2

    :cond_19
    add-int/2addr v0, v3

    sub-int/2addr p1, v0

    .line 1271
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_5

    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    :goto_5
    if-lez p1, :cond_1b

    .line 1272
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_1b

    .line 1273
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1b
    return-object v1
.end method

.method public getItemCount()I
    .locals 8

    .line 1121
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    return v1

    .line 1125
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1126
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    return v0

    .line 1129
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1130
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v0

    add-int/2addr v0, v1

    .line 1131
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-nez v3, :cond_3

    return v0

    :cond_2
    move v0, v1

    .line 1135
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 1137
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 1139
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1140
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 1144
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 1146
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v0, v4

    .line 1148
    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v2, :cond_6

    .line 1149
    iget-boolean v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v6, :cond_6

    move v5, v2

    .line 1152
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v2, :cond_7

    .line 1153
    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    if-eqz v7, :cond_7

    goto :goto_0

    :cond_7
    move v2, v6

    :goto_0
    add-int/2addr v3, v4

    if-lez v3, :cond_9

    .line 1156
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

    .line 1165
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_c

    add-int/lit8 v2, v2, 0x1

    .line 1167
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    xor-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 1169
    :cond_c
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-nez v2, :cond_d

    .line 1170
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesLoadingRow:I

    .line 1172
    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1173
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

    .line 1177
    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSearchEndReached:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1179
    :cond_f
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-eqz v1, :cond_10

    .line 1180
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesLoadingRow:I

    .line 1182
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

    .line 1820
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

    .line 1823
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 1824
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-ne v0, v1, :cond_4

    if-nez p1, :cond_3

    return v1

    :cond_3
    move v0, v2

    :cond_4
    if-ge p1, v0, :cond_5

    const/4 p1, 0x6

    return p1

    :cond_5
    if-ne p1, v0, :cond_6

    return v1

    .line 1839
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_7

    return v3

    .line 1842
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 1844
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v4, 0x3

    if-nez v0, :cond_b

    if-nez p1, :cond_9

    return v1

    .line 1847
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_a

    return v4

    .line 1850
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 1853
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    if-nez p1, :cond_c

    return v1

    .line 1856
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_d

    const/16 p1, 0x8

    return p1

    .line 1859
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 1861
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v0

    .line 1862
    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1863
    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int v7, v5, v6

    if-lez v7, :cond_11

    .line 1864
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v7

    if-gtz v7, :cond_f

    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_11

    :cond_f
    if-nez p1, :cond_10

    return v1

    :cond_10
    add-int/lit8 p1, p1, -0x1

    .line 1870
    :cond_11
    iget-object v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v4, :cond_12

    .line 1871
    iget-boolean v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    if-eqz v8, :cond_12

    goto :goto_2

    :cond_12
    move v4, v7

    .line 1874
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_13

    move v0, v3

    goto :goto_3

    :cond_13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    :goto_3
    const/4 v7, 0x4

    if-le v0, v7, :cond_14

    .line 1875
    iget-boolean v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v8, :cond_14

    move v0, v7

    .line 1878
    :cond_14
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_15

    move v8, v3

    goto :goto_4

    :cond_15
    iget-object v8, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v1

    .line 1879
    :goto_4
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_16

    iget-boolean v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-nez v9, :cond_16

    move v8, v3

    .line 1882
    :cond_16
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_17

    move v9, v3

    goto :goto_5

    :cond_17
    iget-object v9, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v9, v1

    :goto_5
    if-ltz p1, :cond_18

    if-ge p1, v5, :cond_18

    return v3

    :cond_18
    sub-int/2addr p1, v5

    if-ltz p1, :cond_19

    if-ge p1, v6, :cond_19

    return v3

    :cond_19
    sub-int/2addr p1, v6

    if-ltz p1, :cond_1d

    if-ge p1, v4, :cond_1d

    .line 1893
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 1894
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 1895
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1a

    const-string v0, "searchByTel"

    .line 1897
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1898
    sget p1, Lcom/iMe/common/IdFabric$ViewTypes;->SEARCH_TEL:I

    return p1

    :cond_1a
    const-string v0, "section"

    .line 1901
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    return v1

    :cond_1b
    const/4 p1, 0x7

    return p1

    :cond_1c
    return v3

    :cond_1d
    sub-int/2addr p1, v4

    if-ltz p1, :cond_1f

    if-ge p1, v0, :cond_1f

    if-nez p1, :cond_1e

    return v1

    :cond_1e
    return v3

    :cond_1f
    sub-int/2addr p1, v0

    if-lez v9, :cond_24

    if-ltz p1, :cond_23

    .line 1919
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-eqz v0, :cond_20

    if-ge p1, v9, :cond_23

    goto :goto_6

    :cond_20
    if-gt p1, v9, :cond_23

    :goto_6
    if-nez p1, :cond_21

    return v1

    :cond_21
    if-ne p1, v9, :cond_22

    return v7

    :cond_22
    return v2

    .line 1928
    :cond_23
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    xor-int/2addr v0, v1

    add-int/2addr v9, v0

    sub-int/2addr p1, v9

    :cond_24
    if-ltz p1, :cond_26

    if-ge p1, v8, :cond_26

    if-nez p1, :cond_25

    return v1

    :cond_25
    return v2

    :cond_26
    return v7
.end method

.method public getLastSearchString()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentItemsCount()I
    .locals 3

    .line 1110
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    .line 1111
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
    iget-boolean v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-nez v1, :cond_2

    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MediaDataController;->hints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v2, 0x2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public getRecentResultsCount()I
    .locals 1

    .line 1115
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    :goto_0
    if-eqz v0, :cond_1

    .line 1116
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getSearchAdapterHelper()Lorg/telegram/ui/Adapters/SearchAdapterHelper;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    return-object v0
.end method

.method public hasRecentSearch()Z
    .locals 1

    .line 587
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

    .line 1352
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

    .line 1280
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1283
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1286
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 1287
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaDataController;->hints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    .line 1293
    :cond_3
    iget-boolean v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    :goto_1
    if-le p1, v0, :cond_5

    add-int/lit8 v4, p1, -0x1

    sub-int/2addr v4, v0

    .line 1294
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_5

    return v1

    .line 1297
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 1300
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v0

    .line 1301
    iget-object v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v3

    .line 1302
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1303
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1304
    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_7

    .line 1305
    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    if-eqz v7, :cond_7

    move v5, v6

    .line 1308
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    move v0, v1

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    :goto_2
    const/4 v6, 0x4

    if-le v0, v6, :cond_9

    .line 1309
    iget-boolean v7, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v7, :cond_9

    move v0, v6

    .line 1312
    :cond_9
    iget-object v6, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ltz p1, :cond_a

    if-ge p1, v6, :cond_a

    return v1

    :cond_a
    add-int/2addr v6, v2

    sub-int/2addr p1, v6

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

    .line 1333
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_3

    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    :goto_3
    if-lez p1, :cond_10

    if-ge p1, v0, :cond_10

    return v1

    .line 1338
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_4

    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    :goto_4
    return v1
.end method

.method public isHashtagSearch()Z
    .locals 1

    .line 963
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isMessagesSearchEndReached()Z
    .locals 4

    .line 303
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

    .line 606
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

    .line 602
    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    return v0
.end method

.method public isSearching()Z
    .locals 1

    .line 150
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

    .line 307
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqForumId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->reqId:I

    if-eqz v0, :cond_0

    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localMessagesSearchEndReached:Z

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchId:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumMessagesInternal(Ljava/lang/String;I)V

    goto :goto_0

    .line 313
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastMessagesSearchId:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchMessagesInternal(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public loadRecentSearch()V
    .locals 3

    .line 610
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    return-void

    .line 613
    :cond_0
    iget v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    new-instance v2, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadRecentSearch(IILorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    .line 1443
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    sget v4, Lcom/iMe/common/IdFabric$ViewTypes;->SEARCH_TEL:I

    const-string v5, "windowBackgroundWhiteBlueText2"

    const-string v6, "+"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v3, v4, :cond_0

    .line 1444
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1445
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCell;

    .line 1446
    invoke-virtual {v0, v7, v5}, Lorg/telegram/ui/Cells/TextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lorg/telegram/messenger/R$string;->Search:I

    const-string v5, "Search"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "searchByTel"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    .line 1448
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Cells/TextCell;->setFullDivider(Z)V

    goto/16 :goto_2a

    .line 1450
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v4, 0x2

    const-string v9, "windowBackgroundWhite"

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x0

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2a

    .line 1807
    :pswitch_1
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v13, v0

    check-cast v13, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 1808
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lorg/telegram/messenger/ContactsController$Contact;

    const/4 v15, 0x0

    .line 1809
    iget-object v0, v14, Lorg/telegram/messenger/ContactsController$Contact;->first_name:Ljava/lang/String;

    iget-object v2, v14, Lorg/telegram/messenger/ContactsController$Contact;->last_name:Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lorg/telegram/messenger/ContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_2a

    .line 1796
    :pswitch_2
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1797
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCell;

    .line 1798
    invoke-virtual {v0, v7, v5}, Lorg/telegram/ui/Cells/TextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    sget v3, Lorg/telegram/messenger/R$string;->AddContactByPhone:I

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v12

    const-string v2, "AddContactByPhone"

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v12}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    .line 1801
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Cells/TextCell;->showDivider(Z)V

    .line 1802
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Cells/TextCell;->setFullDivider(Z)V

    goto/16 :goto_2a

    .line 1791
    :pswitch_3
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    .line 1792
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;

    div-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;->setIndex(I)V

    goto/16 :goto_2a

    .line 1784
    :pswitch_4
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/HashtagSearchCell;

    .line 1785
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 1786
    iget-object v3, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1787
    iget-object v3, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v8, v12

    :goto_0
    invoke-virtual {v0, v8}, Lorg/telegram/ui/Cells/HashtagSearchCell;->setNeedDivider(Z)V

    goto/16 :goto_2a

    .line 1779
    :pswitch_5
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TopicSearchCell;

    .line 1780
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TopicSearchCell;->setTopic(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;)V

    goto/16 :goto_2a

    .line 1765
    :pswitch_6
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v13, v0

    check-cast v13, Lorg/telegram/ui/Cells/DialogCell;

    .line 1766
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1767
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v8

    if-eq v2, v0, :cond_2

    goto :goto_1

    :cond_2
    move v8, v12

    :goto_1
    iput-boolean v8, v13, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    .line 1768
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 1769
    iget-object v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 1770
    iput-boolean v2, v13, Lorg/telegram/ui/Cells/DialogCell;->useFromUserAsAvatar:Z

    if-nez v0, :cond_3

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 1772
    invoke-virtual/range {v13 .. v19}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V

    goto/16 :goto_2a

    .line 1774
    :cond_3
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v14

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v0

    move/from16 v17, v2

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V

    goto/16 :goto_2a

    .line 1594
    :pswitch_7
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 1595
    iget-object v3, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const-string v5, "ClearButton"

    if-nez v3, :cond_4

    .line 1596
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

    goto/16 :goto_2a

    .line 1603
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

    goto/16 :goto_8

    .line 1604
    :cond_6
    :goto_2
    iget-boolean v3, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-nez v3, :cond_7

    iget v3, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/messenger/MediaDataController;->hints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v8

    goto :goto_3

    :cond_7
    move v3, v12

    :goto_3
    if-ne v3, v8, :cond_8

    goto :goto_4

    :cond_8
    move v4, v3

    :goto_4
    const-string v3, "Recent"

    if-ge v2, v4, :cond_9

    .line 1613
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

    :cond_9
    if-ne v2, v4, :cond_b

    .line 1620
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1621
    iget-boolean v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    if-nez v2, :cond_a

    .line 1622
    sget v2, Lorg/telegram/messenger/R$string;->Recent:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->ClearButton:I

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_5

    .line 1628
    :cond_a
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

    :goto_5
    return-void

    .line 1635
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v12

    goto :goto_6

    :cond_c
    iget-object v4, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v8

    :goto_6
    add-int/2addr v3, v4

    iget-object v4, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    move v4, v12

    goto :goto_7

    :cond_d
    iget-object v4, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v8

    :goto_7
    add-int/2addr v3, v4

    if-ne v2, v3, :cond_e

    .line 1636
    sget v2, Lorg/telegram/messenger/R$string;->SearchAllChatsShort:I

    const-string v3, "SearchAllChatsShort"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    return-void

    .line 1639
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v3

    sub-int v3, v2, v3

    .line 1642
    :goto_8
    iget-object v4, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v4

    .line 1643
    iget-object v5, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1644
    iget-object v6, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v6}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1645
    iget-object v9, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v9}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v11, :cond_f

    .line 1646
    iget-boolean v13, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    if-eqz v13, :cond_f

    move v9, v11

    .line 1649
    :cond_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_10

    move v13, v12

    goto :goto_9

    :cond_10
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/2addr v13, v8

    :goto_9
    if-le v13, v10, :cond_11

    .line 1650
    iget-boolean v14, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v14, :cond_11

    goto :goto_a

    :cond_11
    move v10, v13

    .line 1653
    :goto_a
    iget-object v13, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_12

    move v13, v12

    goto :goto_b

    :cond_12
    iget-object v13, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/2addr v13, v8

    .line 1654
    :goto_b
    iget-object v14, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_13

    goto :goto_c

    :cond_13
    iget-object v14, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    .line 1658
    :goto_c
    iget-object v14, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_15

    if-nez v3, :cond_14

    .line 1660
    sget v14, Lorg/telegram/messenger/R$string;->Topics:I

    const-string v15, "Topics"

    invoke-static {v15, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_d

    :cond_14
    move-object v14, v7

    .line 1662
    :goto_d
    iget-object v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/2addr v15, v8

    sub-int/2addr v3, v15

    goto :goto_e

    :cond_15
    move-object v14, v7

    .line 1664
    :goto_e
    iget-object v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_17

    if-nez v3, :cond_16

    .line 1666
    sget v14, Lorg/telegram/messenger/R$string;->InviteToTelegramShort:I

    const-string v15, "InviteToTelegramShort"

    invoke-static {v15, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 1668
    :cond_16
    iget-object v15, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchContacts:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/2addr v15, v8

    sub-int/2addr v3, v15

    :cond_17
    if-nez v14, :cond_1c

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    if-ltz v3, :cond_18

    if-ge v3, v9, :cond_18

    .line 1673
    sget v2, Lorg/telegram/messenger/R$string;->PhoneNumberSearch:I

    const-string v3, "PhoneNumberSearch"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 1674
    iget-object v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v11, :cond_1c

    .line 1675
    iget-boolean v12, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    .line 1676
    new-instance v7, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda20;

    invoke-direct {v7, v1, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Lorg/telegram/ui/Cells/GraySectionCell;)V

    goto :goto_10

    :cond_18
    sub-int/2addr v3, v9

    if-ltz v3, :cond_19

    if-ge v3, v10, :cond_19

    .line 1685
    sget v3, Lorg/telegram/messenger/R$string;->GlobalSearch:I

    const-string v5, "GlobalSearch"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 1686
    iget-object v3, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v11, :cond_1c

    .line 1687
    iget-boolean v12, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    .line 1688
    new-instance v7, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda19;

    invoke-direct {v7, v1, v4, v2, v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;ILorg/telegram/ui/Cells/GraySectionCell;)V

    goto :goto_10

    .line 1746
    :cond_19
    iget-object v2, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v2, :cond_1b

    if-lez v13, :cond_1b

    sub-int/2addr v3, v10

    if-gt v3, v8, :cond_1b

    .line 1747
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

    .line 1748
    sget v3, Lorg/telegram/messenger/R$string;->SearchMessagesIn:I

    new-array v4, v8, [Ljava/lang/Object;

    if-nez v2, :cond_1a

    const-string v2, "null"

    goto :goto_f

    :cond_1a
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    :goto_f
    aput-object v2, v4, v12

    const-string v2, "SearchMessagesIn"

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_10

    .line 1750
    :cond_1b
    sget v2, Lorg/telegram/messenger/R$string;->SearchMessages:I

    const-string v3, "SearchMessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    :cond_1c
    :goto_10
    if-nez v7, :cond_1d

    .line 1756
    invoke-virtual {v0, v14}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_2a

    :cond_1d
    if-eqz v12, :cond_1e

    .line 1759
    sget v2, Lorg/telegram/messenger/R$string;->ShowMore:I

    const-string v3, "ShowMore"

    goto :goto_11

    :cond_1e
    sget v2, Lorg/telegram/messenger/R$string;->ShowLess:I

    const-string v3, "ShowLess"

    :goto_11
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v14, v2, v3}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2a

    .line 1452
    :pswitch_8
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v3, v0

    check-cast v3, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 1453
    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 1454
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getDialogId()J

    move-result-wide v5

    .line 1463
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1465
    instance-of v9, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v9, :cond_1f

    .line 1466
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 1467
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v9

    move-object v13, v7

    move-object v15, v13

    move-object v14, v9

    move-object v9, v0

    goto :goto_13

    .line 1468
    :cond_1f
    instance-of v9, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v9, :cond_21

    .line 1469
    iget v9, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v13, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v9

    if-nez v9, :cond_20

    goto :goto_12

    :cond_20
    move-object v0, v9

    .line 1473
    :goto_12
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v9

    move-object v13, v0

    move-object v15, v7

    move-object v14, v9

    move-object v9, v15

    goto :goto_13

    .line 1474
    :cond_21
    instance-of v9, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v9, :cond_22

    .line 1475
    iget v9, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v0

    .line 1476
    iget v9, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-static {v9}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-wide v13, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v9

    move-object v15, v0

    move-object v13, v7

    move-object v14, v13

    goto :goto_13

    :cond_22
    move-object v9, v7

    move-object v13, v9

    move-object v14, v13

    move-object v15, v14

    .line 1479
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isRecentSearchDisplayed()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1480
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v0

    if-ge v2, v0, :cond_24

    .line 1481
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v0

    sub-int/2addr v0, v8

    if-eq v2, v0, :cond_23

    move v0, v8

    goto :goto_14

    :cond_23
    move v0, v12

    :goto_14
    iput-boolean v0, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    move v0, v8

    goto :goto_15

    :cond_24
    move v0, v12

    .line 1484
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v16

    sub-int v2, v2, v16

    goto :goto_16

    :cond_25
    move v0, v12

    .line 1486
    :goto_16
    iget-object v7, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_26

    .line 1487
    iget-object v7, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v8

    sub-int/2addr v2, v7

    .line 1489
    :cond_26
    iget-object v7, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v7

    .line 1490
    iget-object v4, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getPhoneSearch()Ljava/util/ArrayList;

    move-result-object v4

    .line 1491
    iget-object v12, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1492
    iget-object v10, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v10}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLocalServerSearch()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int v19, v12, v10

    if-lez v19, :cond_28

    .line 1493
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v19

    if-gtz v19, :cond_27

    iget-object v8, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_28

    :cond_27
    add-int/lit8 v2, v2, -0x1

    .line 1496
    :cond_28
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v11, :cond_29

    .line 1497
    iget-boolean v11, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    if-eqz v11, :cond_29

    const/4 v8, 0x3

    :cond_29
    if-lez v8, :cond_2a

    add-int/lit8 v11, v8, -0x1

    .line 1501
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_2a

    add-int/lit8 v4, v8, -0x2

    goto :goto_17

    :cond_2a
    move v4, v8

    .line 1504
    :goto_17
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2b

    const/4 v7, 0x0

    goto :goto_18

    :cond_2b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v11, 0x1

    add-int/2addr v7, v11

    :goto_18
    const/4 v11, 0x4

    if-le v7, v11, :cond_2c

    .line 1505
    iget-boolean v11, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    if-eqz v11, :cond_2c

    const/16 v18, 0x4

    goto :goto_19

    :cond_2c
    move/from16 v18, v7

    :goto_19
    if-nez v0, :cond_2e

    .line 1509
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getItemCount()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->getRecentItemsCount()I

    move-result v11

    sub-int/2addr v7, v11

    const/4 v11, 0x1

    sub-int/2addr v7, v11

    if-eq v2, v7, :cond_2d

    add-int/2addr v4, v12

    add-int/2addr v4, v10

    sub-int/2addr v4, v11

    if-eq v2, v4, :cond_2d

    add-int v12, v12, v18

    add-int/2addr v12, v8

    add-int/2addr v12, v10

    sub-int/2addr v12, v11

    if-eq v2, v12, :cond_2d

    const/4 v4, 0x1

    goto :goto_1a

    :cond_2d
    const/4 v4, 0x0

    :goto_1a
    iput-boolean v4, v3, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    :cond_2e
    const-string v4, "@"

    if-ltz v2, :cond_30

    .line 1511
    iget-object v7, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_30

    if-nez v9, :cond_30

    .line 1512
    iget-object v7, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 1513
    invoke-static {v9}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    if-eqz v2, :cond_2f

    if-eqz v9, :cond_2f

    if-eqz v7, :cond_2f

    .line 1515
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2f

    goto :goto_1b

    :cond_2f
    move-object v7, v2

    const/4 v2, 0x0

    goto :goto_1c

    :cond_30
    const/4 v2, 0x0

    :goto_1b
    const/4 v7, 0x0

    :goto_1c
    if-nez v2, :cond_39

    if-eqz v0, :cond_31

    .line 1522
    iget-object v0, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentQuery:Ljava/lang/String;

    goto :goto_1d

    :cond_31
    iget-object v0, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundUsername()Ljava/lang/String;

    move-result-object v0

    .line 1523
    :goto_1d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_39

    if-eqz v9, :cond_32

    .line 1527
    iget-object v8, v9, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v8, v10}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1e

    :cond_32
    if-eqz v13, :cond_33

    .line 1529
    iget-object v8, v13, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_1e

    :cond_33
    const/4 v8, 0x0

    :goto_1e
    const-string v11, "windowBackgroundWhiteBlueText4"

    const/4 v12, -0x1

    if-eqz v8, :cond_34

    .line 1531
    invoke-static {v8, v0}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-eq v10, v12, :cond_34

    .line 1532
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1533
    new-instance v8, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    invoke-direct {v8, v11}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v18

    add-int v12, v10, v18

    move-object/from16 v18, v2

    const/16 v2, 0x21

    invoke-virtual {v7, v8, v10, v12, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1f

    :cond_34
    move-object/from16 v18, v2

    :goto_1f
    if-eqz v14, :cond_3a

    if-nez v9, :cond_3a

    .line 1537
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    const/4 v2, 0x1

    .line 1538
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1541
    :cond_35
    :try_start_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1542
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1543
    invoke-virtual {v2, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1544
    invoke-static {v14, v0}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_36

    const/4 v8, 0x1

    goto :goto_20

    :cond_36
    const/4 v8, 0x0

    :goto_20
    if-eqz v8, :cond_38

    .line 1546
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v4, :cond_37

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_37
    add-int/lit8 v4, v4, 0x1

    .line 1552
    :goto_21
    new-instance v8, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;

    invoke-direct {v8, v11}, Lorg/telegram/ui/Components/ForegroundColorSpanThemable;-><init>(Ljava/lang/String;)V

    add-int/2addr v0, v4

    const/16 v10, 0x21

    invoke-virtual {v2, v8, v4, v0, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_38
    move-object v14, v2

    goto :goto_22

    :catch_0
    move-exception v0

    .line 1557
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_22

    :cond_39
    move-object/from16 v18, v2

    :cond_3a
    move-object/from16 v14, v18

    :goto_22
    const/4 v2, 0x0

    .line 1562
    invoke-virtual {v3, v2, v2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setChecked(ZZ)V

    if-eqz v9, :cond_3b

    .line 1564
    iget-wide v10, v9, Lorg/telegram/tgnet/TLRPC$User;->id:J

    move-object/from16 p1, v7

    iget-wide v7, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->selfUserId:J

    cmp-long v0, v10, v7

    if-nez v0, :cond_3c

    .line 1565
    sget v0, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v2, "SavedMessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    const/4 v0, 0x1

    const/4 v7, 0x0

    goto :goto_23

    :cond_3b
    move-object/from16 p1, v7

    :cond_3c
    move-object/from16 v16, p1

    move-object v7, v14

    const/4 v0, 0x0

    :goto_23
    if-eqz v13, :cond_40

    .line 1569
    iget v2, v13, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    if-eqz v2, :cond_40

    .line 1571
    invoke-static {v13}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    const/16 v4, 0x20

    if-eqz v2, :cond_3d

    iget-boolean v2, v13, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_3d

    .line 1572
    iget v2, v13, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    const-string v8, "Subscribers"

    invoke-static {v8, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    goto :goto_24

    .line 1574
    :cond_3d
    iget v2, v13, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    const-string v8, "Members"

    invoke-static {v8, v2, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    .line 1576
    :goto_24
    instance-of v4, v7, Landroid/text/SpannableStringBuilder;

    const-string v8, ", "

    if-eqz v4, :cond_3e

    .line 1577
    move-object v4, v7

    check-cast v4, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_26

    .line 1578
    :cond_3e
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3f

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    aput-object v7, v4, v10

    const/4 v10, 0x1

    aput-object v8, v4, v10

    const/4 v7, 0x2

    aput-object v2, v4, v7

    .line 1579
    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_25

    :cond_3f
    const/4 v10, 0x1

    :goto_25
    move-object/from16 v17, v2

    goto :goto_27

    :cond_40
    :goto_26
    const/4 v10, 0x1

    move-object/from16 v17, v7

    :goto_27
    if-eqz v9, :cond_41

    move-object v14, v9

    goto :goto_28

    :cond_41
    move-object v14, v13

    :goto_28
    const/16 v18, 0x1

    move-object v13, v3

    move/from16 v19, v0

    .line 1584
    invoke-virtual/range {v13 .. v19}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 1585
    iget-object v0, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getDialogId()J

    move-result-wide v7

    invoke-interface {v0, v7, v8}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->isSelected(J)Z

    move-result v0

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getDialogId()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-nez v2, :cond_42

    move v8, v10

    goto :goto_29

    :cond_42
    const/4 v8, 0x0

    :goto_29
    invoke-virtual {v3, v0, v8}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setChecked(ZZ)V

    .line 1587
    iget-object v0, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->isCustomForward()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1588
    iget-object v0, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ProfileSearchCell;->getDialogId()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->checkDialogIsSelected(J)Z

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setChecked(ZZ)V

    :cond_43
    :goto_2a
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
    .locals 7

    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 1429
    :pswitch_0
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, p1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 1425
    :pswitch_1
    new-instance p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1387
    :pswitch_2
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$3;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/content/Context;)V

    const-string v1, "listSelectorSDK21"

    .line 1396
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    const/16 v1, 0x9

    .line 1397
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 1398
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1399
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1400
    new-instance v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$4;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$4;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Landroid/content/Context;)V

    .line 1406
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1407
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1409
    new-instance v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    iget v3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->currentAccount:I

    invoke-direct {v1, v2, v3, p1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$CategoryAdapterRecycler;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1410
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda26;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1415
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda27;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1422
    iput-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;

    :goto_0
    move-object p1, v0

    goto :goto_1

    .line 1384
    :pswitch_3
    new-instance p1, Lorg/telegram/ui/Cells/HashtagSearchCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Cells/HashtagSearchCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 1378
    :pswitch_4
    new-instance p1, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 1379
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 1380
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    goto :goto_1

    .line 1375
    :pswitch_5
    new-instance p1, Lorg/telegram/ui/Cells/TopicSearchCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Cells/TopicSearchCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 1367
    :pswitch_6
    new-instance p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$2;-><init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZ)V

    goto :goto_1

    .line 1364
    :pswitch_7
    new-instance p1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 1361
    :pswitch_8
    new-instance p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;)V

    :goto_1
    const/4 v0, 0x5

    const/4 v1, -0x1

    if-ne p2, v0, :cond_0

    .line 1433
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/16 v0, 0x56

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-direct {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 1435
    :cond_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1437
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

    .line 726
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    if-nez v0, :cond_0

    .line 728
    new-instance v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    invoke-direct {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;-><init>()V

    .line 729
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 731
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 733
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 734
    iput-wide p1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->did:J

    .line 735
    iput-object p3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    .line 736
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int p3, v1

    iput p3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->date:I

    .line 737
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 738
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

    .line 792
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    if-nez v0, :cond_0

    return-void

    .line 796
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjectsById:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 797
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->recentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 798
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 799
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 800
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 801
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

    .line 975
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

    .line 978
    :cond_1
    iput-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchText:Ljava/lang/String;

    .line 979
    iput v2, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->folderId:I

    .line 980
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 981
    sget-object v2, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 982
    iput-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 984
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    .line 985
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 986
    iput-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchRunnable2:Ljava/lang/Runnable;

    :cond_3
    if-eqz v1, :cond_4

    .line 990
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    move-object v2, v3

    .line 994
    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filterRecent(Ljava/lang/String;)V

    .line 995
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_e

    .line 996
    iput-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filteredRecentQuery:Ljava/lang/String;

    .line 997
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->unloadRecentHashtags()V

    .line 998
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 999
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1000
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1001
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1, v3, v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1002
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_b

    .line 1003
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

    .line 1014
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->getSearchForumDialogId()J

    move-result-wide v4

    goto :goto_6

    :cond_a
    const-wide/16 v4, 0x0

    :goto_6
    move-wide/from16 v20, v4

    .line 1003
    invoke-virtual/range {v8 .. v21}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZIIJ)V

    .line 1017
    :cond_b
    iput-boolean v7, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchWas:Z

    .line 1018
    iput v7, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    .line 1019
    iput v7, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    .line 1020
    iput-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    .line 1021
    iput-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    .line 1022
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v1, :cond_c

    .line 1023
    invoke-interface {v1, v7, v6}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    .line 1025
    :cond_c
    iget v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->dialogsType:I

    if-eq v1, v2, :cond_d

    .line 1026
    invoke-direct {v0, v3}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchTopics(Ljava/lang/String;)V

    .line 1027
    invoke-direct {v0, v3, v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchMessagesInternal(Ljava/lang/String;I)V

    .line 1028
    invoke-direct {v0, v3, v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchForumMessagesInternal(Ljava/lang/String;I)V

    .line 1030
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1031
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipDates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1032
    iput-boolean v7, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipArchive:Z

    .line 1033
    iget-object v1, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtersDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    if-eqz v1, :cond_13

    .line 1034
    iget-object v2, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipDates:Ljava/util/ArrayList;

    invoke-interface {v1, v7, v3, v2, v7}, Lorg/telegram/ui/FilteredSearchView$Delegate;->updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    goto/16 :goto_9

    .line 1037
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;

    iget-object v8, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtered2RecentSearchObjects:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v8}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1038
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I

    if-eq v3, v5, :cond_10

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_10

    .line 1039
    iput-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->messagesSearchEndReached:Z

    .line 1040
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->loadRecentHashtags()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1041
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1042
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1043
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getHashtags()Ljava/util/ArrayList;

    move-result-object v3

    move v4, v7

    .line 1044
    :goto_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_f

    .line 1045
    iget-object v5, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/SearchAdapterHelper$HashtagObject;->hashtag:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1047
    :cond_f
    iput-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    .line 1048
    iput-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    .line 1049
    iput v7, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    .line 1050
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1051
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v3, :cond_11

    .line 1052
    invoke-interface {v3, v7, v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    goto :goto_8

    .line 1056
    :cond_10
    iget-object v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultHashtags:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1059
    :cond_11
    :goto_8
    iget v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    add-int/2addr v3, v6

    iput v3, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I

    const/4 v4, 0x3

    .line 1060
    iput v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->waitingResponseCount:I

    .line 1061
    iput-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->globalSearchCollapsed:Z

    .line 1062
    iput-boolean v6, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->phoneCollapsed:Z

    .line 1063
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1064
    iget-object v4, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->delegate:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;

    if-eqz v4, :cond_12

    .line 1065
    invoke-interface {v4, v6, v7}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$DialogsSearchAdapterDelegate;->searchStateChanged(ZZ)V

    .line 1068
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

    .line 299
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

    .line 146
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filterDialogIds:Ljava/util/ArrayList;

    return-void
.end method

.method public setFiltersDelegate(Lorg/telegram/ui/FilteredSearchView$Delegate;Z)V
    .locals 3

    .line 1941
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->filtersDelegate:Lorg/telegram/ui/FilteredSearchView$Delegate;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 1943
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipDates:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->localTipArchive:Z

    invoke-interface {p1, p2, v0, v1, v2}, Lorg/telegram/ui/FilteredSearchView$Delegate;->updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    :cond_0
    return-void
.end method
