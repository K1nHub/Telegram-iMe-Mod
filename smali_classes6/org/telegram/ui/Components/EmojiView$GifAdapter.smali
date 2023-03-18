.class Lorg/telegram/ui/Components/EmojiView$GifAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GifAdapter"
.end annotation


# instance fields
.field private addSearch:Z

.field private bot:Lorg/telegram/tgnet/TLRPC$User;

.field private final context:Landroid/content/Context;

.field private firstResultItem:I

.field private itemsCount:I

.field private final kikliko:Z

.field private kiklikoResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;",
            ">;"
        }
    .end annotation
.end field

.field private kiklikoResultsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;",
            ">;"
        }
    .end annotation
.end field

.field private lastSearchImageString:Ljava/lang/String;

.field private lastSearchIsEmoji:Z

.field private final maxRecentRowsCount:I

.field private nextSearchOffset:Ljava/lang/String;

.field private final progressEmptyView:Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

.field private recentItemsCount:I

.field private reqId:I

.field private results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$BotInlineResult;",
            ">;"
        }
    .end annotation
.end field

.field private resultsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$BotInlineResult;",
            ">;"
        }
    .end annotation
.end field

.field private searchEndReached:Z

.field private searchRunnable:Ljava/lang/Runnable;

.field private searchingUser:Z

.field private showTrendingWhenSearchEmpty:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;

.field private trendingSectionItem:I

.field private final withRecent:Z


# direct methods
.method public static synthetic $r8$lambda$1Xa9shaoc8JE3Hzo-oRq7kIm4Zs(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lambda$search$3(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZtwRtjJhsQudOh4P3G0L4BmXk3A(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lambda$search$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h38tnvDFrOFJtZM3xsq0Nlz4hY4(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lambda$searchBotUser$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p0XqQ0tEu8kBslqLJdcBEuU5IYg(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lambda$searchBotUser$0(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vAOvEzEHI3RTHz2B2UfWn21ja5w(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lambda$search$4(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 8903
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;ZIZ)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Z)V
    .locals 7

    if-eqz p3, :cond_0

    const v0, 0x7fffffff

    const v5, 0x7fffffff

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    .line 8907
    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;ZIZ)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;ZIZ)V
    .locals 1

    .line 8910
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 8825
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResults:Ljava/util/ArrayList;

    .line 8826
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResultsMap:Ljava/util/HashMap;

    .line 8887
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    .line 8888
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->resultsMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 8895
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->trendingSectionItem:I

    .line 8896
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->firstResultItem:I

    .line 8912
    iput-boolean p5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kikliko:Z

    .line 8913
    iput-boolean p5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->addSearch:Z

    .line 8915
    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->context:Landroid/content/Context;

    .line 8916
    iput-boolean p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    .line 8917
    iput p4, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->maxRecentRowsCount:I

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 8918
    :cond_0
    new-instance p3, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    invoke-direct {p3, p1, p2, p5}, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;Z)V

    move-object p1, p3

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->progressEmptyView:Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    return-void
.end method

.method static synthetic access$12200(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z
    .locals 0

    .line 8819
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->addSearch:Z

    return p0
.end method

.method static synthetic access$15402(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Z)Z
    .locals 0

    .line 8819
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->showTrendingWhenSearchEmpty:Z

    return p1
.end method

.method static synthetic access$15500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 8819
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$16200(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z
    .locals 0

    .line 8819
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchEndReached:Z

    return p0
.end method

.method static synthetic access$16300(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I
    .locals 0

    .line 8819
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    return p0
.end method

.method static synthetic access$16400(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 8819
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResults:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$16500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/lang/String;
    .locals 0

    .line 8819
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->nextSearchOffset:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$16600(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z
    .locals 0

    .line 8819
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchIsEmoji:Z

    return p0
.end method

.method static synthetic access$17400(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;
    .locals 0

    .line 8819
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->progressEmptyView:Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/lang/String;
    .locals 0

    .line 8819
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$21300(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;)V
    .locals 0

    .line 8819
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->processResponse(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;)V

    return-void
.end method

.method static synthetic access$21500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I
    .locals 0

    .line 8819
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    return p0
.end method

.method static synthetic access$23000(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 0

    .line 8819
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->bot:Lorg/telegram/tgnet/TLRPC$User;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I
    .locals 0

    .line 8819
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->trendingSectionItem:I

    return p0
.end method

.method private synthetic lambda$search$2(Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x1

    .line 9162
    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$search$3(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 9246
    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->processResponse(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;)V

    return-void
.end method

.method private synthetic lambda$search$4(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    .line 9246
    new-instance v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter$$ExternalSyntheticLambda1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/EmojiView$GifAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchBotUser$0(Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    .line 9100
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 9101
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 9102
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 9103
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v3, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 9104
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 9105
    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    const-string v0, ""

    .line 9106
    invoke-virtual {p0, p1, v0, v2}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$searchBotUser$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 9099
    new-instance p2, Lorg/telegram/ui/Components/EmojiView$GifAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private processResponse(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;)V
    .locals 7

    if-eqz p1, :cond_13

    .line 9282
    iget-object p8, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    invoke-virtual {p1, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p8

    if-nez p8, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 p8, 0x0

    .line 9285
    iput p8, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    if-eqz p5, :cond_2

    .line 9286
    instance-of v0, p7, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    if-eqz v0, :cond_1

    move-object v0, p7

    check-cast v0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 9287
    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void

    .line 9291
    :cond_2
    iget-boolean p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-nez p3, :cond_3

    .line 9292
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 9293
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 9294
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->resultsMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 9296
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->access$2400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 9297
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->access$3800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p3

    invoke-virtual {p3, p8}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showProgress(Z)V

    .line 9301
    :cond_3
    instance-of p3, p7, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    if-eqz p3, :cond_10

    .line 9303
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 9304
    check-cast p7, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    .line 9305
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$21200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 9306
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$21200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p6, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-nez p5, :cond_5

    .line 9308
    iget p5, p7, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->cache_time:I

    if-eqz p5, :cond_5

    .line 9309
    iget-object p5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p5, p5, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p5

    invoke-virtual {p5, p6, p7}, Lorg/telegram/messenger/MessagesStorage;->saveBotCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    .line 9311
    :cond_5
    iget-object p5, p7, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->next_offset:Ljava/lang/String;

    iput-object p5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->nextSearchOffset:Ljava/lang/String;

    const/4 p5, 0x0

    const/4 p6, 0x0

    .line 9312
    :goto_0
    iget-object v0, p7, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p5, v0, :cond_7

    .line 9313
    iget-object v0, p7, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 9314
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->resultsMap:Ljava/util/HashMap;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    .line 9317
    :cond_6
    iget-wide v1, p7, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->query_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->query_id:J

    .line 9318
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9319
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->resultsMap:Ljava/util/HashMap;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p6, p6, 0x1

    :goto_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 9322
    :cond_7
    iget-object p5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    const/4 p7, 0x1

    if-eq p3, p5, :cond_8

    iget-object p5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->nextSearchOffset:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_9

    :cond_8
    const/4 p8, 0x1

    :cond_9
    iput-boolean p8, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchEndReached:Z

    if-eqz p6, :cond_f

    if-eqz p4, :cond_b

    if-eqz p3, :cond_a

    goto :goto_2

    .line 9340
    :cond_a
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 9325
    :cond_b
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->updateItems()V

    .line 9326
    iget-boolean p5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-eqz p5, :cond_d

    if-eqz p3, :cond_c

    .line 9328
    iget p5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    iget-object p8, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p8}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object p8

    iget-boolean p8, p8, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->addSearch:Z

    add-int/2addr p5, p8

    add-int/2addr p5, p3

    invoke-virtual {p0, p5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 9329
    iget p5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    iget-object p8, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p8}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object p8

    iget-boolean p8, p8, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->addSearch:Z

    add-int/2addr p5, p8

    add-int/2addr p5, p3

    add-int/2addr p5, p7

    invoke-virtual {p0, p5, p6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_3

    .line 9331
    :cond_c
    iget p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    iget-object p5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p5}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object p5

    iget-boolean p5, p5, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->addSearch:Z

    add-int/2addr p3, p5

    add-int/2addr p6, p7

    invoke-virtual {p0, p3, p6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_3

    :cond_d
    if-eqz p3, :cond_e

    .line 9335
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 9337
    :cond_e
    iget-object p5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p5}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object p5

    iget-boolean p5, p5, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->addSearch:Z

    add-int/2addr p3, p5

    invoke-virtual {p0, p3, p6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_3

    .line 9342
    :cond_f
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_11

    .line 9343
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 9346
    :cond_10
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    .line 9349
    :cond_11
    :goto_3
    iget-boolean p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-nez p3, :cond_13

    .line 9350
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    if-eq p3, p0, :cond_12

    .line 9351
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p3

    invoke-virtual {p3, p0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_12
    if-eqz p4, :cond_13

    .line 9353
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_13

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 9354
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$21100(Lorg/telegram/ui/Components/EmojiView;)V

    :cond_13
    :goto_4
    return-void
.end method

.method private searchBotUser()V
    .locals 3

    .line 9091
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchingUser:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 9094
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchingUser:Z

    .line 9095
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 9096
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->gifSearchBot:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 9097
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$GifAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private updateItems()V
    .locals 3

    .line 9015
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kikliko:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResults:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, -0x1

    .line 9016
    iput v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->trendingSectionItem:I

    .line 9017
    iput v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->firstResultItem:I

    const/4 v1, 0x0

    .line 9019
    iput v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    .line 9020
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->addSearch:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$2400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9021
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    .line 9024
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-eqz v1, :cond_2

    .line 9025
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    .line 9028
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 9029
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    if-lez v1, :cond_3

    .line 9030
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    iput v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->trendingSectionItem:I

    .line 9032
    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    iput v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->firstResultItem:I

    .line 9033
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    goto :goto_1

    .line 9034
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-nez v0, :cond_5

    .line 9035
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    :cond_5
    :goto_1
    return-void
.end method

.method private updateRecentItemsCount()V
    .locals 13

    .line 9041
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kikliko:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$12100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    .line 9042
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kikliko:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$11900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$3900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    move-result-object v1

    .line 9044
    :goto_1
    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->maxRecentRowsCount:I

    if-nez v2, :cond_2

    goto/16 :goto_4

    :cond_2
    const v3, 0x7fffffff

    if-ne v2, v3, :cond_3

    .line 9049
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$20500(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    return-void

    .line 9053
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    if-nez v2, :cond_4

    return-void

    .line 9057
    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    .line 9058
    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    const/16 v3, 0x64

    .line 9059
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/4 v4, 0x0

    .line 9064
    iput v4, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    .line 9066
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiView;->access$20500(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v7, v2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v6, v5, :cond_7

    .line 9067
    iget-object v10, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v10}, Lorg/telegram/ui/Components/EmojiView;->access$20500(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;->getSizeForItem(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/Size;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->fixSize(Lorg/telegram/ui/Components/Size;)Lorg/telegram/ui/Components/Size;

    move-result-object v10

    int-to-float v11, v2

    .line 9068
    iget v12, v10, Lorg/telegram/ui/Components/Size;->width:F

    iget v10, v10, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v12, v10

    int-to-float v10, v3

    mul-float v12, v12, v10

    int-to-float v10, v0

    div-float/2addr v12, v10

    mul-float v11, v11, v12

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-ge v7, v10, :cond_6

    .line 9070
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    add-int/2addr v7, v8

    iput v7, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    add-int/lit8 v9, v9, 0x1

    .line 9071
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->maxRecentRowsCount:I

    if-ne v9, v7, :cond_5

    goto :goto_3

    :cond_5
    move v7, v2

    const/4 v8, 0x0

    :cond_6
    add-int/lit8 v8, v8, 0x1

    sub-int/2addr v7, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 9081
    :cond_7
    :goto_3
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->maxRecentRowsCount:I

    if-ge v9, v0, :cond_8

    .line 9082
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    add-int/2addr v0, v8

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    :cond_8
    :goto_4
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 8928
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 8933
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kikliko:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResults:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    :goto_0
    if-nez p1, :cond_1

    .line 8934
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->addSearch:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$2400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 8936
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-eqz v1, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->trendingSectionItem:I

    if-ne p1, v2, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    if-nez v1, :cond_3

    .line 8938
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    return p1

    .line 8942
    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kikliko:Z

    if-eqz p1, :cond_4

    const/16 p1, 0x64

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 8923
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public loadTrendingGifs()V
    .locals 6

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    .line 9087
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 9009
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->updateRecentItemsCount()V

    .line 9010
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->updateItems()V

    .line 9011
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 8990
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 8991
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/fork/ui/view/KiklikoGifView;

    .line 8992
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResults:Ljava/util/ArrayList;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;

    invoke-virtual {p1, p2}, Lorg/fork/ui/view/KiklikoGifView;->setGif(Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;)V

    goto :goto_1

    .line 8994
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 8996
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 8997
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->firstResultItem:I

    if-ltz p1, :cond_2

    if-lt p2, p1, :cond_2

    .line 8998
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    sub-int/2addr p2, p1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->bot:Lorg/telegram/tgnet/TLRPC$User;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Cells/ContextLinkCell;->setLink(Lorg/telegram/tgnet/TLRPC$BotInlineResult;Lorg/telegram/tgnet/TLRPC$User;ZZZZ)V

    goto :goto_1

    .line 9000
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$20500(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$2400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->addSearch:Z

    sub-int/2addr p2, v1

    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Cells/ContextLinkCell;->setGif(Lorg/telegram/tgnet/TLRPC$Document;Z)V

    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const/4 p1, -0x2

    const/4 v0, -0x1

    const/16 v1, 0x64

    if-ne p2, v1, :cond_0

    .line 8954
    new-instance p2, Lorg/fork/ui/view/KiklikoGifView;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v1}, Lorg/fork/ui/view/KiklikoGifView;-><init>(Landroid/content/Context;)V

    .line 8955
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    .line 8980
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->progressEmptyView:Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    .line 8981
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 8970
    :cond_1
    new-instance p2, Lorg/telegram/ui/Cells/StickerSetNameCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p2, v1, v3, v2}, Lorg/telegram/ui/Cells/StickerSetNameCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 8971
    sget v1, Lorg/telegram/messenger/R$string;->FeaturedGifs:I

    const-string v2, "FeaturedGifs"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v3}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V

    .line 8973
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/high16 p1, 0x40200000    # 2.5f

    .line 8974
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/high16 p1, 0x40b00000    # 5.5f

    .line 8975
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 8976
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 8966
    :cond_2
    new-instance p2, Landroid/view/View;

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 8967
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$2500(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 8960
    :cond_3
    new-instance p2, Lorg/telegram/ui/Cells/ContextLinkCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/ContextLinkCell;-><init>(Landroid/content/Context;)V

    .line 8961
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Cells/ContextLinkCell;->setIsKeyboard(Z)V

    .line 8962
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Cells/ContextLinkCell;->setCanPreviewGif(Z)V

    .line 8984
    :goto_0
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public processKiklikoResponse(Ljava/lang/String;Ljava/lang/String;ZLcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;)V
    .locals 7

    .line 8832
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8833
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8834
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResultsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 8835
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$13300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showProgress(Z)V

    .line 8838
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8839
    invoke-virtual {p4}, Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;->getCurrentPage()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->nextSearchOffset:Ljava/lang/String;

    .line 8840
    invoke-virtual {p4}, Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;->getHasNext()Z

    move-result v2

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchEndReached:Z

    const/4 v2, 0x0

    .line 8841
    :goto_0
    invoke-virtual {p4}, Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 8842
    invoke-virtual {p4}, Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;

    .line 8843
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResultsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;->getSlug()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 8846
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResults:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8847
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResultsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;->getSlug()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_6

    if-eqz p3, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    .line 8858
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 8852
    :cond_4
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->updateItems()V

    if-eqz v0, :cond_5

    .line 8854
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_5
    add-int/2addr v0, v3

    .line 8856
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_3

    .line 8860
    :cond_6
    iget-object p4, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResults:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_7

    .line 8861
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    .line 8864
    :cond_7
    :goto_3
    iget-object p4, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p4}, Lorg/telegram/ui/Components/EmojiView;->access$12100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-eq p4, p0, :cond_8

    .line 8865
    iget-object p4, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p4}, Lorg/telegram/ui/Components/EmojiView;->access$12100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p4

    invoke-virtual {p4, p0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_8
    if-eqz p3, :cond_9

    .line 8867
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 8868
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/EmojiView;->access$20400(Lorg/telegram/ui/Components/EmojiView;Z)V

    :cond_9
    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 9113
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Z)V

    return-void
.end method

.method protected search(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 9180
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method protected search(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 14

    move-object v9, p0

    move-object v8, p1

    move-object/from16 v10, p2

    move/from16 v11, p4

    .line 9184
    iget v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ltz v0, :cond_0

    .line 9186
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_0
    const/4 v0, 0x0

    .line 9188
    iput v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    .line 9191
    :cond_1
    iput-object v8, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    .line 9192
    iput-boolean v11, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchIsEmoji:Z

    .line 9195
    iget-boolean v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kikliko:Z

    if-eqz v0, :cond_8

    .line 9196
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->progressEmptyView:Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    if-eqz v0, :cond_2

    .line 9197
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->setLoadingState(Z)V

    .line 9199
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9200
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$13300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showProgress(Z)V

    :cond_3
    if-nez p5, :cond_5

    if-eqz v11, :cond_5

    .line 9202
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9203
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9204
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResultsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 9205
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$12100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eq v0, v9, :cond_4

    .line 9206
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$12100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9208
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    .line 9209
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$20400(Lorg/telegram/ui/Components/EmojiView;Z)V

    .line 9211
    :cond_5
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, p0}, Lorg/telegram/ui/Components/EmojiView;->access$21002(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    .line 9212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9213
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->presenter:Lcom/smedialink/ui/kikliko/EmojiViewPresenter;

    invoke-virtual {v0, v10}, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->getTrending(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-eqz v11, :cond_7

    .line 9215
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->presenter:Lcom/smedialink/ui/kikliko/EmojiViewPresenter;

    invoke-virtual {v0, p1, v10}, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->searchByTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9217
    :cond_7
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->presenter:Lcom/smedialink/ui/kikliko/EmojiViewPresenter;

    invoke-virtual {v0, p1, v10}, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->searchByKeyword(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 9222
    :cond_8
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->progressEmptyView:Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    if-eqz v0, :cond_9

    .line 9223
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->setLoadingState(Z)V

    .line 9226
    :cond_9
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v2, v2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->gifSearchBot:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUserOrChat(Ljava/lang/String;)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 9227
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v2, :cond_b

    if-eqz p3, :cond_a

    .line 9229
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchBotUser()V

    .line 9230
    iget-boolean v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-nez v0, :cond_a

    .line 9232
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$2400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 9233
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$3800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showProgress(Z)V

    :cond_a
    return-void

    .line 9238
    :cond_b
    iget-boolean v2, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-nez v2, :cond_c

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 9240
    iget-object v2, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$2400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 9241
    iget-object v2, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$3800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showProgress(Z)V

    .line 9244
    :cond_c
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->bot:Lorg/telegram/tgnet/TLRPC$User;

    .line 9245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gif_search_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 9246
    new-instance v13, Lorg/telegram/ui/Components/EmojiView$GifAdapter$$ExternalSyntheticLambda4;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/EmojiView$GifAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    if-nez p5, :cond_e

    .line 9248
    iget-boolean v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-nez v0, :cond_e

    if-eqz v11, :cond_e

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 9249
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9250
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->resultsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 9251
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eq v0, v9, :cond_d

    .line 9252
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9254
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    .line 9255
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$21100(Lorg/telegram/ui/Components/EmojiView;)V

    :cond_e
    if-eqz p5, :cond_f

    .line 9258
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$21200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v5, 0x1

    .line 9259
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$21200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/telegram/tgnet/TLObject;

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v6, v12

    move-object v8, v13

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->processResponse(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;)V

    return-void

    .line 9263
    :cond_f
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$4100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;

    move-result-object v0

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/EmojiView$GifSearchPreloader;->isLoading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    if-eqz p5, :cond_11

    const/4 v0, -0x1

    .line 9268
    iput v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    .line 9269
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Lorg/telegram/messenger/MessagesStorage;->getBotCache(Ljava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V

    goto :goto_2

    .line 9271
    :cond_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;-><init>()V

    if-nez v8, :cond_12

    const-string v1, ""

    goto :goto_1

    :cond_12
    move-object v1, v8

    .line 9272
    :goto_1
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->query:Ljava/lang/String;

    .line 9273
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->bot:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 9274
    iput-object v10, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->offset:Ljava/lang/String;

    .line 9275
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 9276
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v0, v13}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    :goto_2
    return-void
.end method

.method public search(Ljava/lang/String;Z)V
    .locals 7

    .line 9118
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kikliko:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$12100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    .line 9119
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kikliko:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$11800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object v1

    .line 9120
    :goto_1
    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kikliko:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-result-object v2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$9900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    move-result-object v2

    .line 9122
    :goto_2
    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-eqz v3, :cond_3

    return-void

    .line 9125
    :cond_3
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    if-ltz v3, :cond_4

    .line 9127
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v3, v3, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v6, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    invoke-virtual {v3, v6, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 9129
    :cond_4
    iput v5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    .line 9131
    :cond_5
    iput-boolean v5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchIsEmoji:Z

    .line 9132
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->progressEmptyView:Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    if-eqz v3, :cond_6

    .line 9133
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->setLoadingState(Z)V

    .line 9135
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_7

    .line 9136
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 9138
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 p1, 0x0

    .line 9139
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    .line 9140
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->showTrendingWhenSearchEmpty:Z

    if-eqz p1, :cond_8

    .line 9141
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->loadTrendingGifs()V

    goto :goto_3

    .line 9143
    :cond_8
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getCurrentPosition()I

    move-result p1

    .line 9144
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kikliko:Z

    if-eqz p2, :cond_9

    if-eqz p1, :cond_a

    :cond_9
    if-nez p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$20600(Lorg/telegram/ui/Components/EmojiView;)I

    move-result p2

    if-eq p1, p2, :cond_a

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$20700(Lorg/telegram/ui/Components/EmojiView;)I

    move-result p2

    if-ne p1, p2, :cond_b

    .line 9145
    :cond_a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eq p1, v1, :cond_d

    .line 9146
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_3

    .line 9150
    :cond_b
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kikliko:Z

    if-eqz p2, :cond_c

    .line 9151
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiView;->access$20800(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/List;

    move-result-object p2

    sub-int/2addr p1, v4

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/data/network/model/response/kikliko/TagResponse;

    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/kikliko/TagResponse;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchEmoji(Ljava/lang/String;)V

    goto :goto_3

    .line 9153
    :cond_c
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p2, p2, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->gifSearchEmojies:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$20900(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchEmoji(Ljava/lang/String;)V

    :cond_d
    :goto_3
    return-void

    .line 9158
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    .line 9160
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 9161
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$GifAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_f

    const-wide/16 p1, 0x12c

    goto :goto_4

    :cond_f
    const-wide/16 p1, 0x0

    :goto_4
    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_10
    return-void
.end method

.method public searchEmoji(Ljava/lang/String;)V
    .locals 8

    .line 9169
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kikliko:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 9170
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$11900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 9172
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchIsEmoji:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9173
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$3900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void

    :cond_1
    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v4, ""

    move-object v2, p0

    move-object v3, p1

    .line 9176
    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method
