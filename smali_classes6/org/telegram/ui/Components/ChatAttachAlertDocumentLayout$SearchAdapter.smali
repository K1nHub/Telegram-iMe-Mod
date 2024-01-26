.class public Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
.source "ChatAttachAlertDocumentLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchAdapter"
.end annotation


# instance fields
.field private clearCurrentResultsRunnable:Ljava/lang/Runnable;

.field private currentDataQuery:Ljava/lang/String;

.field private currentSearchDialogId:J

.field private currentSearchFilter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

.field private currentSearchFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;",
            ">;"
        }
    .end annotation
.end field

.field private currentSearchMaxDate:J

.field private currentSearchMinDate:J

.field private endReached:Z

.field private isLoading:Z

.field private lastMessagesSearchString:Ljava/lang/String;

.field private lastSearchFilterQueryString:Ljava/lang/String;

.field private localSearchRunnable:Ljava/lang/Runnable;

.field private localTipChats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

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

.field private requestIndex:I

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private searchRunnable:Ljava/lang/Runnable;

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

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;


# direct methods
.method public static synthetic $r8$lambda$SVXF_0LRGzSJ2PW8PyIx1rhcirA(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lambda$search$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_M0hWCEWCS6YqWpQC9IZOSv1p2o(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Ljava/lang/String;ZLjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lambda$search$0(Ljava/lang/String;ZLjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cioU8O3cdcU5q4AV2ge90ZpGrlA(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;JLjava/lang/String;Lorg/telegram/messenger/AccountInstance;JJZLjava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lambda$searchGlobal$4(JLjava/lang/String;Lorg/telegram/messenger/AccountInstance;JJZLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$obxFiEGr-eW7zt4KfvEib5HcL-A(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;IZJJLjava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lambda$searchGlobal$3(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;IZJJLjava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xCGYVCg1E5XOvTM5nbSSJ0Efbkk(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/AccountInstance;ZLjava/lang/String;Ljava/util/ArrayList;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lambda$searchGlobal$2(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/AccountInstance;ZLjava/lang/String;Ljava/util/ArrayList;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xW0uv_hK0YLidRC_TDAqU472TEk(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lambda$updateSearchResults$5(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/content/Context;)V
    .locals 3

    .line 1578
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;-><init>()V

    .line 1532
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 1544
    new-instance p1, Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p1, v0, v1, v2}, Lorg/telegram/ui/FilteredSearchView$MessageHashId;-><init>(IJ)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    .line 1550
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipChats:Ljava/util/ArrayList;

    .line 1551
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipDates:Ljava/util/ArrayList;

    .line 1553
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    .line 1554
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messagesById:Landroid/util/SparseArray;

    .line 1555
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    .line 1556
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sectionArrays:Ljava/util/HashMap;

    .line 1558
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    .line 1563
    new-instance p1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 1566
    new-instance p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->clearCurrentResultsRunnable:Ljava/lang/Runnable;

    .line 1579
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 1528
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 1528
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 1528
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;)Z
    .locals 0

    .line 1528
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->isLoading:Z

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;)Lorg/telegram/ui/FilteredSearchView$MessageHashId;
    .locals 0

    .line 1528
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messageHashIdTmp:Lorg/telegram/ui/FilteredSearchView$MessageHashId;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;)Lorg/telegram/messenger/AnimationNotificationsLocker;
    .locals 0

    .line 1528
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 0

    .line 1528
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->addSearchFilter(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V

    return-void
.end method

.method private addSearchFilter(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 2

    .line 1684
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1685
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1686
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->isSameType(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1691
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1692
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchFilter(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V

    .line 1693
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSearchFieldText(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1694
    invoke-direct {p0, p1, v0, v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private synthetic lambda$search$0(Ljava/lang/String;ZLjava/util/ArrayList;)V
    .locals 8

    .line 1603
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1604
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 1605
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void

    .line 1608
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1609
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    add-int/2addr v4, v3

    .line 1612
    new-array v5, v4, [Ljava/lang/String;

    .line 1613
    aput-object v0, v5, v2

    if-eqz v1, :cond_4

    .line 1615
    aput-object v1, v5, v3

    .line 1618
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_9

    move p2, v2

    .line 1621
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_9

    .line 1622
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    .line 1623
    iget-object v3, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    move v3, v2

    :goto_2
    if-ge v3, v4, :cond_8

    .line 1627
    aget-object v6, v5, v3

    .line 1630
    iget-object v7, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 1631
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    goto :goto_3

    :cond_6
    move v6, v2

    :goto_3
    if-eqz v6, :cond_7

    .line 1634
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1641
    :cond_9
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$search$1(Ljava/lang/String;)V
    .locals 4

    .line 1597
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1598
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1599
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1601
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1602
    sget-object v2, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1, v1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Ljava/lang/String;ZLjava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$searchGlobal$2(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/AccountInstance;ZLjava/lang/String;Ljava/util/ArrayList;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p12

    .line 1897
    iget v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->requestIndex:I

    move/from16 v4, p1

    if-eq v4, v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 1900
    iput-boolean v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->isLoading:Z

    const-string v4, "SearchEmptyViewFilteredSubtitle2"

    const-string v5, "SearchEmptyViewTitle2"

    const/4 v6, 0x1

    if-eqz p2, :cond_1

    .line 1902
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->SearchEmptyViewTitle2:I

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1903
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1904
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v2, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1905
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v1

    invoke-virtual {v1, v3, v6}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    return-void

    .line 1909
    :cond_1
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(Z)V

    .line 1911
    move-object/from16 v7, p3

    check-cast v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 1912
    iget v8, v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;->next_rate:I

    iput v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->nextSearchRate:I

    .line 1913
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/AccountInstance;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v8, v9, v10, v6, v6}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 1914
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    invoke-virtual {v8, v9, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1915
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v8, v9, v3}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    if-nez p5, :cond_2

    .line 1917
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1918
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messagesById:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 1919
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1920
    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sectionArrays:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 1922
    :cond_2
    iget v7, v7, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    .line 1923
    iput-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentDataQuery:Ljava/lang/String;

    .line 1924
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v3

    :goto_0
    if-ge v9, v8, :cond_4

    move-object/from16 v10, p7

    .line 1926
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject;

    .line 1927
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sectionArrays:Ljava/util/HashMap;

    iget-object v13, v11, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    if-nez v12, :cond_3

    .line 1929
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1930
    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sectionArrays:Ljava/util/HashMap;

    iget-object v14, v11, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1931
    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    iget-object v14, v11, Lorg/telegram/messenger/MessageObject;->monthKey:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1933
    :cond_3
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1934
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1935
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messagesById:Landroid/util/SparseArray;

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v13

    invoke-virtual {v12, v13, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1937
    :cond_4
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v7, :cond_5

    .line 1938
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1940
    :cond_5
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v9, v7, :cond_6

    move v7, v6

    goto :goto_1

    :cond_6
    move v7, v3

    :goto_1
    iput-boolean v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->endReached:Z

    .line 1942
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1943
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentDataQuery:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-wide/16 v9, 0x0

    cmp-long v7, p8, v9

    if-nez v7, :cond_7

    cmp-long v7, p10, v9

    if-nez v7, :cond_7

    .line 1944
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->SearchEmptyViewTitle:I

    const-string v7, "SearchEmptyViewTitle"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1945
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1946
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v5, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitleFiles:I

    const-string v7, "SearchEmptyViewFilteredSubtitleFiles"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1948
    :cond_7
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v9, Lorg/telegram/messenger/R$string;->SearchEmptyViewTitle2:I

    invoke-static {v5, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1949
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1950
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v7, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    invoke-static {v4, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_2
    if-nez p5, :cond_e

    .line 1955
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-eqz v2, :cond_9

    .line 1957
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1959
    :cond_9
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x3

    if-lt v2, v4, :cond_d

    sget v2, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v4, "SavedMessages"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "saved messages"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_a
    move v1, v3

    .line 1961
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 1962
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_b

    .line 1963
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v9, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v2, v4, v9

    if-nez v2, :cond_b

    move v1, v6

    goto :goto_4

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    move v1, v3

    :goto_4
    if-nez v1, :cond_d

    .line 1969
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipChats:Ljava/util/ArrayList;

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1972
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipDates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1973
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipDates:Ljava/util/ArrayList;

    move-object/from16 v2, p13

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1974
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentDataQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipChats:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipDates:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v4, v6}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    :cond_e
    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_5
    if-ge v3, v8, :cond_10

    .line 1980
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1981
    instance-of v5, v4, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v5, :cond_f

    .line 1983
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    move v2, v1

    move-object v1, v4

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_10
    if-eqz v1, :cond_11

    .line 1988
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1990
    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$3000(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-le v3, v6, :cond_13

    :cond_12
    if-eqz v1, :cond_14

    .line 1992
    :cond_13
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3;

    invoke-direct {v4, p0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Landroid/view/View;I)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2043
    :cond_14
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$searchGlobal$3(Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;IZJJLjava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 16

    .line 1885
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-nez p12, :cond_0

    .line 1887
    move-object/from16 v0, p11

    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 1888
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 1890
    new-instance v4, Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/AccountInstance;->getCurrentAccount()I

    move-result v5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v2, v7}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    move-object/from16 v7, p2

    .line 1891
    invoke-virtual {v4, v7}, Lorg/telegram/messenger/MessageObject;->setQuery(Ljava/lang/String;)V

    .line 1892
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p2

    .line 1896
    new-instance v15, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda0;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p12

    move-object/from16 v4, p11

    move-object/from16 v5, p1

    move/from16 v6, p4

    move-object/from16 v7, p2

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    invoke-direct/range {v0 .. v14}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/AccountInstance;ZLjava/lang/String;Ljava/util/ArrayList;JJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchGlobal$4(JLjava/lang/String;Lorg/telegram/messenger/AccountInstance;JJZLjava/lang/String;I)V
    .locals 21

    move-object/from16 v12, p0

    move-wide/from16 v6, p1

    move-object/from16 v3, p3

    const-wide/16 v0, 0x0

    cmp-long v2, v6, v0

    const/16 v4, 0x14

    const/4 v5, 0x0

    const-wide/16 v8, 0x3e8

    const/4 v10, 0x0

    if-eqz v2, :cond_3

    .line 1821
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 1822
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 1823
    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 1824
    iget-object v4, v12, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget-object v4, v4, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 1825
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    cmp-long v4, p5, v0

    if-lez v4, :cond_0

    .line 1827
    div-long v13, p5, v8

    long-to-int v4, v13

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->min_date:I

    :cond_0
    cmp-long v0, p7, v0

    if-lez v0, :cond_1

    .line 1830
    div-long v0, p7, v8

    long-to-int v0, v0

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_date:I

    :cond_1
    if-eqz p9, :cond_2

    .line 1832
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1833
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 1834
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    goto :goto_0

    .line 1836
    :cond_2
    iput v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    :goto_0
    move-object v13, v2

    goto/16 :goto_3

    .line 1840
    :cond_3
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1841
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1842
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1843
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1844
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/AccountInstance;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    move-object/from16 v15, p3

    move-object/from16 v16, v10

    invoke-virtual/range {v13 .. v20}, Lorg/telegram/messenger/MessagesStorage;->localSearch(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 1847
    :cond_4
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;-><init>()V

    .line 1848
    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->limit:I

    .line 1849
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->q:Ljava/lang/String;

    .line 1850
    iget-object v4, v12, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget-object v4, v4, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    cmp-long v4, p5, v0

    if-lez v4, :cond_5

    .line 1852
    div-long v13, p5, v8

    long-to-int v4, v13

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->min_date:I

    :cond_5
    cmp-long v4, p7, v0

    if-lez v4, :cond_6

    .line 1855
    div-long v8, p7, v8

    long-to-int v4, v8

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->max_date:I

    :cond_6
    if-eqz p9, :cond_9

    .line 1857
    iget-object v4, v12, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v12, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1858
    iget-object v4, v12, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 1859
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 1860
    iget v5, v12, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->nextSearchRate:I

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    .line 1862
    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    cmp-long v5, v8, v0

    if-eqz v5, :cond_7

    :goto_1
    neg-long v0, v8

    goto :goto_2

    .line 1864
    :cond_7
    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v0, v8, v0

    if-eqz v0, :cond_8

    goto :goto_1

    .line 1867
    :cond_8
    iget-wide v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 1869
    :goto_2
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto/16 :goto_0

    .line 1871
    :cond_9
    iput v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_rate:I

    .line 1872
    iput v5, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_id:I

    .line 1873
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_searchGlobal;->offset_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto/16 :goto_0

    .line 1878
    :goto_3
    iput-object v3, v12, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    move-object/from16 v0, p10

    .line 1879
    iput-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lastSearchFilterQueryString:Ljava/lang/String;

    .line 1882
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1883
    iget-object v0, v12, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    invoke-static {v0, v11}, Lorg/telegram/ui/Adapters/FiltersView;->fillTipDates(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1884
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v14

    new-instance v15, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda5;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    move/from16 v4, p11

    move/from16 v5, p9

    move-wide/from16 v6, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Lorg/telegram/messenger/AccountInstance;Ljava/lang/String;IZJJLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v14, v13, v15}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$updateSearchResults$5(Ljava/util/ArrayList;)V
    .locals 2

    .line 2052
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$500(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2053
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2054
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2057
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 2058
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private searchGlobal(JJJLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;Ljava/lang/String;Z)V
    .locals 17

    move-object/from16 v13, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v0, p7

    .line 1767
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v10, 0x0

    aput-object v5, v4, v10

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v11, 0x1

    aput-object v5, v4, v11

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v12, 0x2

    aput-object v5, v4, v12

    iget v5, v0, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v14, 0x3

    aput-object v5, v4, v14

    const/4 v5, 0x4

    aput-object p8, v4, v5

    const-string v5, "%d%d%d%d%s"

    invoke-static {v1, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1768
    iget-object v1, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lastSearchFilterQueryString:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v15, v11

    goto :goto_0

    :cond_0
    move v15, v10

    :goto_0
    if-nez v15, :cond_1

    if-eqz p9, :cond_1

    move v1, v11

    goto :goto_1

    :cond_1
    move v1, v10

    .line 1770
    :goto_1
    iget-wide v4, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchDialogId:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    iget-wide v4, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchMinDate:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    iget-wide v4, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchMaxDate:J

    cmp-long v4, v4, v8

    .line 1771
    :cond_2
    iput-object v0, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    .line 1772
    iput-wide v2, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchDialogId:J

    .line 1773
    iput-wide v6, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchMinDate:J

    .line 1774
    iput-wide v8, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchMaxDate:J

    .line 1775
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 1776
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1778
    :cond_3
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->clearCurrentResultsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz v15, :cond_4

    if-eqz p9, :cond_4

    return-void

    :cond_4
    if-eqz v1, :cond_6

    .line 1783
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1784
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1785
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sectionArrays:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1786
    iput-boolean v11, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->isLoading:Z

    .line 1787
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 1788
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->notifyDataSetChanged()V

    .line 1789
    iget v0, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->requestIndex:I

    add-int/2addr v0, v11

    iput v0, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->requestIndex:I

    .line 1791
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getPinnedHeader()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1792
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getPinnedHeader()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1794
    :cond_5
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1795
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipDates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1797
    :cond_6
    iput-boolean v11, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->isLoading:Z

    .line 1798
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->notifyDataSetChanged()V

    if-nez v15, :cond_7

    .line 1801
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->clearCurrentResultsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1802
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    xor-int/lit8 v1, p9, 0x1

    invoke-virtual {v0, v11, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 1805
    :cond_7
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1806
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipDates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1807
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localTipChats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 1808
    invoke-direct {v13, v10, v0, v0, v11}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void

    .line 1811
    :cond_8
    iget v0, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->requestIndex:I

    add-int/2addr v11, v0

    iput v11, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->requestIndex:I

    .line 1814
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v5

    .line 1816
    new-instance v10, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda1;

    move-object v0, v10

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p8

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object v14, v10

    move v10, v15

    move/from16 v16, v11

    move-object v11, v12

    move/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;JLjava/lang/String;Lorg/telegram/messenger/AccountInstance;JJZLjava/lang/String;I)V

    iput-object v14, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v15, :cond_9

    .line 2046
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/16 v0, 0x0

    goto :goto_2

    :cond_9
    const-wide/16 v0, 0x15e

    .line 1816
    :goto_2
    invoke-static {v14, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2047
    iget-object v0, v13, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$3000(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    return-void
.end method

.method private updateFiltersView(ZLjava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Adapters/FiltersView$DateData;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 1702
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-ge v1, v5, :cond_3

    .line 1703
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    invoke-virtual {v5}, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->isMedia()Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v7

    goto :goto_1

    .line 1705
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget v5, v5, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    if-ne v5, v6, :cond_1

    move v3, v7

    goto :goto_1

    .line 1707
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    iget v5, v5, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    move v4, v7

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 1713
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    move v1, v7

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_2
    const/4 v5, 0x0

    if-nez v2, :cond_7

    if-nez v1, :cond_7

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    if-eqz v1, :cond_b

    if-eqz p2, :cond_8

    .line 1716
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    if-nez v3, :cond_8

    goto :goto_3

    :cond_8
    move-object p2, v5

    :goto_3
    if-eqz p3, :cond_9

    .line 1717
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    if-nez v4, :cond_9

    goto :goto_4

    :cond_9
    move-object p3, v5

    :goto_4
    if-nez p2, :cond_a

    if-eqz p3, :cond_b

    .line 1720
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/ui/Adapters/FiltersView;->setUsersAndDates(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    move p1, v7

    goto :goto_6

    :cond_b
    :goto_5
    move p1, v0

    :goto_6
    if-nez p1, :cond_c

    .line 1724
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object p2

    invoke-virtual {p2, v5, v5, v0}, Lorg/telegram/ui/Adapters/FiltersView;->setUsersAndDates(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 1726
    :cond_c
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-eqz p1, :cond_d

    .line 1727
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_e

    :cond_d
    if-nez p1, :cond_f

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_f

    :cond_e
    return-void

    .line 1730
    :cond_f
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object p2

    if-eqz p1, :cond_10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_10
    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1731
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$2900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Landroid/animation/AnimatorSet;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 1732
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$2900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Landroid/animation/AnimatorSet;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_11
    const/16 p2, 0x2c

    const/4 p3, 0x0

    if-eqz p4, :cond_17

    if-eqz p1, :cond_12

    .line 1736
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object p4

    invoke-virtual {p4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1738
    :cond_12
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {p4, v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$2902(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1739
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$2900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Landroid/animation/AnimatorSet;

    move-result-object p4

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    .line 1740
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v7, [F

    if-eqz p1, :cond_13

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    goto :goto_7

    :cond_13
    move v5, p3

    :goto_7
    aput v5, v4, v0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    .line 1741
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object v2

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v4, v7, [F

    if-eqz p1, :cond_14

    move v5, p3

    goto :goto_8

    :cond_14
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    :goto_8
    aput v5, v4, v0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    .line 1742
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$3000(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object v3

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v7, [F

    if-eqz p1, :cond_15

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    goto :goto_9

    :cond_15
    move v6, p3

    :goto_9
    aput v6, v5, v0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    .line 1743
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v7, [F

    if-eqz p1, :cond_16

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p3, p1

    :cond_16
    aput p3, v5, v0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v1, v2

    .line 1739
    invoke-virtual {p4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1744
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$2900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Landroid/animation/AnimatorSet;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1753
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$2900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Landroid/animation/AnimatorSet;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1754
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$2900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Landroid/animation/AnimatorSet;

    move-result-object p1

    const-wide/16 p2, 0xb4

    invoke-virtual {p1, p2, p3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1755
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$2900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_e

    .line 1757
    :cond_17
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1758
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p4

    if-eqz p1, :cond_18

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    goto :goto_a

    :cond_18
    move v1, p3

    :goto_a
    invoke-virtual {p4, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 1759
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object p4

    if-eqz p1, :cond_19

    move v1, p3

    goto :goto_b

    :cond_19
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    :goto_b
    invoke-virtual {p4, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 1760
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$3000(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object p4

    if-eqz p1, :cond_1a

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    goto :goto_c

    :cond_1a
    move v1, p3

    :goto_c
    invoke-virtual {p4, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1761
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$3100(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p4

    if-eqz p1, :cond_1b

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p3, p2

    :cond_1b
    invoke-virtual {p4, p3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1762
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$2800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Adapters/FiltersView;

    move-result-object p2

    if-eqz p1, :cond_1c

    goto :goto_d

    :cond_1c
    move v0, v6

    :goto_d
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    :goto_e
    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2051
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Ljava/util/ArrayList;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 3

    if-nez p1, :cond_0

    .line 2101
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 2104
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_3

    .line 2105
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sectionArrays:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2107
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    return v0

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    .line 2080
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_2

    .line 2081
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 2085
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 2086
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sectionArrays:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 2088
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    sub-int/2addr p2, p1

    if-ltz p2, :cond_2

    .line 2089
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_2

    .line 2090
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemViewType(II)I
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 2250
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->getSectionCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 2254
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    if-nez p1, :cond_2

    .line 2255
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    const/4 p1, 0x4

    return p1

    :cond_4
    const/4 p1, 0x2

    return p1
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V
    .locals 0

    const/4 p1, 0x0

    .line 2277
    aput p1, p3, p1

    const/4 p2, 0x1

    .line 2278
    aput p1, p3, p2

    return-void
.end method

.method public getSectionCount()I
    .locals 3

    .line 2071
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 2072
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->endReached:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    :cond_0
    return v1
.end method

.method public getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 3

    .line 2117
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/GraySectionCell;

    if-nez v0, :cond_0

    .line 2119
    new-instance v0, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2120
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v1

    const v2, -0xd000001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_0
    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 2122
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 2127
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2128
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2129
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2130
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sectionArrays:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    .line 2132
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    if-nez p1, :cond_2

    .line 2134
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2135
    sget p1, Lorg/telegram/messenger/R$string;->GlobalSearch:I

    const-string v1, "GlobalSearch"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2137
    :cond_2
    iget-object p1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v1, p1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatSectionDate(J)Ljava/lang/String;

    move-result-object p1

    .line 2139
    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-object p2

    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 2123
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-object v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)Z
    .locals 0

    .line 2064
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p3, 0x4

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    return p2
.end method

.method public loadMore()V
    .locals 11

    .line 1669
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->isLoading:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$900(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->endReached:Z

    if-nez v0, :cond_1

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilter:Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    if-nez v8, :cond_0

    goto :goto_0

    .line 1672
    :cond_0
    iget-wide v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchDialogId:J

    iget-wide v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchMinDate:J

    iget-wide v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchMaxDate:J

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->lastMessagesSearchString:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchGlobal(JJJLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 2266
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->notifyDataSetChanged()V

    .line 2267
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$2500(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)V

    return-void
.end method

.method public onBindViewHolder(IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 11

    .line 2175
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    goto/16 :goto_3

    .line 2199
    :cond_1
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-nez p1, :cond_4

    .line 2201
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;

    .line 2202
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 2203
    iget v9, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->icon:I

    if-eqz v9, :cond_2

    .line 2204
    iget-object v5, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    iget-object v6, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v4, p2

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setTextAndValueAndTypeAndThumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 2206
    :cond_2
    iget-object p3, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->ext:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->ext:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2207
    iget-object v5, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->title:Ljava/lang/String;

    iget-object v6, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->subtitle:Ljava/lang/String;

    iget-object v8, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->thumb:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p2

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setTextAndValueAndTypeAndThumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2209
    :goto_0
    iget-object p3, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    if-eqz p3, :cond_3

    .line 2210
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$2400(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Ljava/util/HashMap;

    move-result-object p3

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListItem;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p3}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$1500(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Z

    move-result p3

    xor-int/2addr p3, v3

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto/16 :goto_3

    .line 2212
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$1500(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-virtual {p2, v1, p1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    goto/16 :goto_3

    :cond_4
    add-int/lit8 p1, p1, -0x1

    if-nez p1, :cond_5

    .line 2216
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    :cond_5
    add-int/lit8 p2, p2, -0x1

    .line 2219
    :cond_6
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 2220
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sectionArrays:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    if-nez p3, :cond_7

    return-void

    .line 2224
    :cond_7
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 2225
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-ne v4, v5, :cond_8

    move v4, v3

    goto :goto_1

    :cond_8
    move v4, v1

    .line 2226
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v3

    if-ne p2, p3, :cond_9

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v3

    if-ne p1, p2, :cond_a

    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->isLoading:Z

    if-eqz p1, :cond_a

    :cond_9
    move v1, v3

    :cond_a
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setDocument(Lorg/telegram/messenger/MessageObject;Z)V

    .line 2227
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$4;

    invoke-direct {p2, p0, v0, v2, v4}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Lorg/telegram/ui/Cells/SharedDocumentCell;Lorg/telegram/messenger/MessageObject;Z)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_3

    :cond_b
    add-int/lit8 p1, p1, -0x1

    .line 2182
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 2183
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->sectionArrays:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-nez p2, :cond_c

    return-void

    .line 2187
    :cond_c
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessageObject;

    if-nez p1, :cond_d

    .line 2189
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    .line 2190
    sget p1, Lorg/telegram/messenger/R$string;->GlobalSearch:I

    const-string p2, "GlobalSearch"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 2192
    :cond_d
    iget-object p1, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long p1, p1

    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->formatSectionDate(J)Ljava/lang/String;

    move-result-object p1

    .line 2194
    :goto_2
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/Cells/GraySectionCell;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    if-eqz p2, :cond_3

    const/4 p1, 0x2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    if-eq p2, p1, :cond_0

    const/4 v1, 0x4

    if-eq p2, v1, :cond_1

    .line 2166
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 2159
    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p2, 0x3

    .line 2160
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 2161
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    goto :goto_0

    .line 2154
    :cond_1
    new-instance v1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->mContext:Landroid/content/Context;

    if-ne p2, v0, :cond_2

    move p1, v0

    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, v2, p1, p2}, Lorg/telegram/ui/Cells/SharedDocumentCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p1, 0x0

    .line 2155
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setDrawDownloadIcon(Z)V

    move-object p1, v1

    goto :goto_0

    .line 2150
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2169
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2170
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public removeSearchFilter(Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;)V
    .locals 1

    .line 1676
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public search(Ljava/lang/String;Z)V
    .locals 11

    .line 1583
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localSearchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1584
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1585
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localSearchRunnable:Ljava/lang/Runnable;

    .line 1587
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1588
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1589
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1591
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 1592
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$000(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1594
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1596
    :cond_3
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->localSearchRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1646
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$2700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;->access$800(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;->access$1700(Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$ListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v4, v1

    move-wide v6, v4

    move-wide v2, v6

    .line 1650
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 1651
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->currentSearchFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    .line 1652
    iget v8, v1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->filterType:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_5

    .line 1653
    iget-object v1, v1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->chat:Lorg/telegram/tgnet/TLObject;

    instance-of v8, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v8, :cond_4

    .line 1654
    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    :goto_2
    move-wide v2, v1

    goto :goto_3

    .line 1655
    :cond_4
    instance-of v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v8, :cond_6

    .line 1656
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v1, v1

    goto :goto_2

    :cond_5
    const/4 v9, 0x6

    if-ne v8, v9, :cond_6

    .line 1659
    iget-object v1, v1, Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;->dateData:Lorg/telegram/ui/Adapters/FiltersView$DateData;

    iget-wide v4, v1, Lorg/telegram/ui/Adapters/FiltersView$DateData;->minDate:J

    .line 1660
    iget-wide v6, v1, Lorg/telegram/ui/Adapters/FiltersView$DateData;->maxDate:J

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1664
    :cond_7
    sget-object v0, Lorg/telegram/ui/Adapters/FiltersView;->filters:[Lorg/telegram/ui/Adapters/FiltersView$MediaFilterData;

    const/4 v1, 0x2

    aget-object v8, v0, v1

    move-object v1, p0

    move-object v9, p1

    move v10, p2

    invoke-direct/range {v1 .. v10}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$SearchAdapter;->searchGlobal(JJJLorg/telegram/ui/Adapters/FiltersView$MediaFilterData;Ljava/lang/String;Z)V

    :cond_8
    return-void
.end method
