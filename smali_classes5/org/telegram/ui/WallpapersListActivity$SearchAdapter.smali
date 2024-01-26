.class Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "WallpapersListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/WallpapersListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$CategoryAdapterRecycler;
    }
.end annotation


# instance fields
.field private bingSearchEndReached:Z

.field private imageReqId:I

.field private lastSearchImageString:Ljava/lang/String;

.field private lastSearchString:Ljava/lang/String;

.field private lastSearchToken:I

.field private mContext:Landroid/content/Context;

.field private nextImagesSearchOffset:Ljava/lang/String;

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private searchResultKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private searchRunnable:Ljava/lang/Runnable;

.field private searchingUser:Z

.field private selectedColor:Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/WallpapersListActivity;


# direct methods
.method public static synthetic $r8$lambda$0yT5KXCpSGmcmhYUgAj-SCqbzkQ(Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->lambda$searchBotUser$1(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Luj0rNHrrbWtSDBpu2OdCtBbm2Y(Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->lambda$searchBotUser$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZdMcH81k0mtzq8Kx7hw9Vbadyec(Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;ILorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->lambda$searchImages$3(ILorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kRHVmPLf5CZBGV5FeQxJ4CEvktk(Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->lambda$onCreateViewHolder$5(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$keQ1BV03yVeWLReymrObIKVEKBo(Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->lambda$searchImages$4(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tH_Q6Ne2Ngk3N2DP-g7-EI65w3U(Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->lambda$processSearch$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/WallpapersListActivity;Landroid/content/Context;)V
    .locals 0

    .line 1539
    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1503
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 1504
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchResultKeys:Ljava/util/HashMap;

    const/4 p1, 0x1

    .line 1505
    iput-boolean p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->bingSearchEndReached:Z

    .line 1540
    iput-object p2, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;Ljava/lang/String;Z)V
    .locals 0

    .line 1498
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->processSearch(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3200(Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;)Landroid/content/Context;
    .locals 0

    .line 1498
    iget-object p0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private doSearch(Ljava/lang/String;)V
    .locals 2

    .line 1594
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1595
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchResultKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x1

    .line 1596
    iput-boolean v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->bingSearchEndReached:Z

    const-string v1, ""

    .line 1597
    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchImages(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1598
    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->lastSearchString:Ljava/lang/String;

    .line 1599
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$5(Landroid/view/View;I)V
    .locals 4

    .line 1778
    sget p1, Lorg/telegram/messenger/R$string;->BackgroundSearchColor:I

    const-string v0, "BackgroundSearchColor"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1779
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/telegram/ui/WallpapersListActivity;->access$4900()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-static {}, Lorg/telegram/ui/WallpapersListActivity;->access$5000()[I

    move-result-object v3

    aget v3, v3, p2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1780
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-interface {v0, v1, p1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1781
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {p1}, Lorg/telegram/ui/WallpapersListActivity;->access$2500(Lorg/telegram/ui/WallpapersListActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldCaption(Ljava/lang/CharSequence;)V

    .line 1782
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {p1}, Lorg/telegram/ui/WallpapersListActivity;->access$2500(Lorg/telegram/ui/WallpapersListActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 1783
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {p1}, Lorg/telegram/ui/WallpapersListActivity;->access$2500(Lorg/telegram/ui/WallpapersListActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldText(Ljava/lang/CharSequence;Z)V

    .line 1784
    invoke-static {}, Lorg/telegram/ui/WallpapersListActivity;->access$4900()[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, p2

    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->selectedColor:Ljava/lang/String;

    .line 1785
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->processSearch(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$processSearch$0(Ljava/lang/String;)V
    .locals 0

    .line 1584
    invoke-direct {p0, p1}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->doSearch(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1585
    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$searchBotUser$1(Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    .line 1612
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 1613
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$5100(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1614
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$5200(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1615
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v3, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 1616
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->lastSearchImageString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1617
    iput-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->lastSearchImageString:Ljava/lang/String;

    const-string v0, ""

    .line 1618
    invoke-direct {p0, p1, v0, v2}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchImages(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$searchBotUser$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1611
    new-instance p2, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$searchImages$3(ILorg/telegram/tgnet/TLObject;)V
    .locals 9

    .line 1655
    iget v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->lastSearchToken:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1658
    iput p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->imageReqId:I

    .line 1659
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eqz p2, :cond_c

    .line 1661
    check-cast p2, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    .line 1662
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->next_offset:Ljava/lang/String;

    iput-object v2, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->nextImagesSearchOffset:Ljava/lang/String;

    .line 1664
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p1

    :goto_0
    if-ge v3, v2, :cond_9

    .line 1665
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 1666
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string v6, "photo"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_5

    .line 1669
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchResultKeys:Ljava/util/HashMap;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_5

    .line 1673
    :cond_2
    new-instance v5, Lorg/telegram/messenger/MediaController$SearchImage;

    invoke-direct {v5}, Lorg/telegram/messenger/MediaController$SearchImage;-><init>()V

    .line 1674
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v6, :cond_4

    .line 1675
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v7

    invoke-static {v6, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v6

    .line 1676
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v8, 0x140

    invoke-static {v7, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v7

    if-nez v6, :cond_3

    goto :goto_5

    .line 1680
    :cond_3
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v8, v5, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    .line 1681
    iget v8, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v8, v5, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    .line 1682
    iput-object v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->photoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1683
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iput-object v8, v5, Lorg/telegram/messenger/MediaController$SearchImage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 1684
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    .line 1685
    iput-object v7, v5, Lorg/telegram/messenger/MediaController$SearchImage;->thumbPhotoSize:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto :goto_4

    .line 1687
    :cond_4
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-nez v6, :cond_5

    goto :goto_5

    :cond_5
    move v6, p1

    .line 1690
    :goto_1
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$WebDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 1691
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$WebDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1692
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-eqz v8, :cond_6

    .line 1693
    iget v6, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->width:I

    .line 1694
    iget v6, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->height:I

    goto :goto_2

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1698
    :cond_7
    :goto_2
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-eqz v6, :cond_8

    .line 1699
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    .line 1701
    iput-object v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->thumbUrl:Ljava/lang/String;

    .line 1703
    :goto_3
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$WebDocument;->url:Ljava/lang/String;

    iput-object v7, v5, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    .line 1704
    iget v6, v6, Lorg/telegram/tgnet/TLRPC$WebDocument;->size:I

    iput v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    .line 1707
    :goto_4
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    iput-object v4, v5, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    .line 1708
    iput p1, v5, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    .line 1710
    iget-object v4, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1711
    iget-object v4, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchResultKeys:Ljava/util/HashMap;

    iget-object v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1713
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eq v0, p2, :cond_a

    iget-object p2, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->nextImagesSearchOffset:Ljava/lang/String;

    if-nez p2, :cond_b

    :cond_a
    move p1, v1

    :cond_b
    iput-boolean p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->bingSearchEndReached:Z

    .line 1715
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq v0, p1, :cond_e

    .line 1716
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {p1}, Lorg/telegram/ui/WallpapersListActivity;->access$4600(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result p1

    rem-int p1, v0, p1

    int-to-float p2, v0

    .line 1717
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$4600(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v0

    int-to-float v0, v0

    div-float v0, p2, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    if-eqz p1, :cond_d

    .line 1719
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {p1}, Lorg/telegram/ui/WallpapersListActivity;->access$4600(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1721
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {p2}, Lorg/telegram/ui/WallpapersListActivity;->access$4600(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 1722
    iget-object p2, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {p2}, Lorg/telegram/ui/WallpapersListActivity;->access$2100(Lorg/telegram/ui/WallpapersListActivity;)Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;

    move-result-object p2

    sub-int/2addr p1, v0

    invoke-virtual {p2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 1724
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {p1}, Lorg/telegram/ui/WallpapersListActivity;->access$3600(Lorg/telegram/ui/WallpapersListActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    return-void
.end method

.method private synthetic lambda$searchImages$4(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1654
    new-instance p3, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;ILorg/telegram/tgnet/TLObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private processSearch(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1560
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->selectedColor:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#color"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->selectedColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1563
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1564
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1565
    iput-object v1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 1567
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1568
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1569
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchResultKeys:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    const/4 p1, 0x1

    .line 1570
    iput-boolean p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->bingSearchEndReached:Z

    .line 1571
    iput-object v1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->lastSearchString:Ljava/lang/String;

    .line 1572
    iget p2, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->imageReqId:I

    if-eqz p2, :cond_2

    .line 1573
    iget-object p2, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {p2}, Lorg/telegram/ui/WallpapersListActivity;->access$3500(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    iget v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->imageReqId:I

    invoke-virtual {p2, v0, p1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 p1, 0x0

    .line 1574
    iput p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->imageReqId:I

    .line 1576
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {p1}, Lorg/telegram/ui/WallpapersListActivity;->access$3600(Lorg/telegram/ui/WallpapersListActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto :goto_0

    .line 1578
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$3600(Lorg/telegram/ui/WallpapersListActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    if-eqz p2, :cond_4

    .line 1581
    invoke-direct {p0, p1}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->doSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 1583
    :cond_4
    new-instance p2, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    .line 1587
    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1590
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private searchBotUser()V
    .locals 3

    .line 1603
    iget-boolean v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchingUser:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1606
    iput-boolean v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchingUser:Z

    .line 1607
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 1608
    iget-object v1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v1}, Lorg/telegram/ui/WallpapersListActivity;->access$3700(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->imageSearchBot:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 1609
    iget-object v1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v1}, Lorg/telegram/ui/WallpapersListActivity;->access$3800(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private searchImages(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 1632
    iget v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->imageReqId:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1633
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$3900(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->imageReqId:I

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, 0x0

    .line 1634
    iput v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->imageReqId:I

    .line 1636
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->lastSearchImageString:Ljava/lang/String;

    .line 1638
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$4100(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v2}, Lorg/telegram/ui/WallpapersListActivity;->access$4000(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->imageSearchBot:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 1639
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v2, :cond_2

    if-eqz p3, :cond_1

    .line 1641
    invoke-direct {p0}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchBotUser()V

    :cond_1
    return-void

    .line 1645
    :cond_2
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 1647
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;-><init>()V

    .line 1648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#wallpaper "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->query:Ljava/lang/String;

    .line 1649
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {p1}, Lorg/telegram/ui/WallpapersListActivity;->access$4200(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p1

    iput-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1650
    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->offset:Ljava/lang/String;

    .line 1651
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1653
    iget p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->lastSearchToken:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->lastSearchToken:I

    .line 1654
    iget-object p2, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {p2}, Lorg/telegram/ui/WallpapersListActivity;->access$4300(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;I)V

    invoke-virtual {p2, p3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->imageReqId:I

    .line 1726
    iget-object p1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {p1}, Lorg/telegram/ui/WallpapersListActivity;->access$4500(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->imageReqId:I

    iget-object p3, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {p3}, Lorg/telegram/ui/WallpapersListActivity;->access$4400(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void
.end method


# virtual methods
.method public clearColor()V
    .locals 2

    const/4 v0, 0x0

    .line 1555
    iput-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->selectedColor:Ljava/lang/String;

    const/4 v1, 0x1

    .line 1556
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->processSearch(Ljava/lang/String;Z)V

    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 1731
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->lastSearchString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    .line 1734
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v1}, Lorg/telegram/ui/WallpapersListActivity;->access$4600(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1827
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->lastSearchString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 1739
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loadMoreResults()V
    .locals 3

    .line 1625
    iget-boolean v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->bingSearchEndReached:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->imageReqId:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1628
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->lastSearchString:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->nextImagesSearchOffset:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchImages(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 1804
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 p2, 0x2

    if-eq v0, p2, :cond_0

    goto/16 :goto_4

    .line 1818
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 1819
    sget p2, Lorg/telegram/messenger/R$string;->SearchByColor:I

    const-string v0, "SearchByColor"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 1806
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/WallpaperCell;

    .line 1807
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$4600(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v0

    mul-int/2addr p2, v0

    .line 1808
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v1}, Lorg/telegram/ui/WallpapersListActivity;->access$4600(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1809
    iget-object v1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v1}, Lorg/telegram/ui/WallpapersListActivity;->access$4600(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v5}, Lorg/telegram/ui/WallpapersListActivity;->access$4600(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v5

    div-int v5, p2, v5

    sub-int/2addr v0, v3

    if-ne v5, v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    invoke-virtual {p1, v1, v4, v3}, Lorg/telegram/ui/Cells/WallpaperCell;->setParams(IZZ)V

    move v7, v2

    .line 1810
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$4600(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v0

    if-ge v7, v0, :cond_5

    add-int v0, p2, v7

    .line 1812
    iget-object v1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    move-object v3, v0

    .line 1813
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$4800(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, ""

    move-object v0, p1

    move v2, v7

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/WallpaperCell;->setWallpaper(IILjava/lang/Object;Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-eq p2, p1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 1791
    :cond_0
    new-instance v0, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1755
    :cond_1
    new-instance v1, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$2;

    iget-object v2, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$2;-><init>(Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;Landroid/content/Context;)V

    .line 1764
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1765
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1766
    new-instance v2, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$3;

    iget-object v3, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$3;-><init>(Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;Landroid/content/Context;)V

    const/4 v3, 0x7

    .line 1772
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1773
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1774
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1775
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1776
    new-instance v2, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$CategoryAdapterRecycler;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$CategoryAdapterRecycler;-><init>(Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;Lorg/telegram/ui/WallpapersListActivity$1;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1777
    new-instance v0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    move-object v0, v1

    goto :goto_0

    .line 1747
    :cond_2
    new-instance v0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$1;

    iget-object v1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter$1;-><init>(Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;Landroid/content/Context;)V

    :goto_0
    const/4 v1, -0x1

    if-ne p2, p1, :cond_3

    .line 1795
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/16 p2, 0x3c

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-direct {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 1797
    :cond_3
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1799
    :goto_1
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 1548
    iget v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->imageReqId:I

    if-eqz v0, :cond_0

    .line 1549
    iget-object v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->this$0:Lorg/telegram/ui/WallpapersListActivity;

    invoke-static {v0}, Lorg/telegram/ui/WallpapersListActivity;->access$3400(Lorg/telegram/ui/WallpapersListActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->imageReqId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, 0x0

    .line 1550
    iput v0, p0, Lorg/telegram/ui/WallpapersListActivity$SearchAdapter;->imageReqId:I

    :cond_0
    return-void
.end method
