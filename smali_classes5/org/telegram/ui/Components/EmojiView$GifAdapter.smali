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

    .line 8880
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

    .line 8884
    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;ZIZ)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;ZIZ)V
    .locals 1

    .line 8887
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 8802
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResults:Ljava/util/ArrayList;

    .line 8803
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResultsMap:Ljava/util/HashMap;

    .line 8864
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    .line 8865
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->resultsMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    .line 8872
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->trendingSectionItem:I

    .line 8873
    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->firstResultItem:I

    .line 8889
    iput-boolean p5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kikliko:Z

    .line 8890
    iput-boolean p5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->addSearch:Z

    .line 8892
    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->context:Landroid/content/Context;

    .line 8893
    iput-boolean p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    .line 8894
    iput p4, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->maxRecentRowsCount:I

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 8895
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

    .line 8796
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->addSearch:Z

    return p0
.end method

.method static synthetic access$15402(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Z)Z
    .locals 0

    .line 8796
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->showTrendingWhenSearchEmpty:Z

    return p1
.end method

.method static synthetic access$15500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 8796
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$16200(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z
    .locals 0

    .line 8796
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchEndReached:Z

    return p0
.end method

.method static synthetic access$16300(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I
    .locals 0

    .line 8796
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    return p0
.end method

.method static synthetic access$16400(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 8796
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResults:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$16500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/lang/String;
    .locals 0

    .line 8796
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->nextSearchOffset:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$16600(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Z
    .locals 0

    .line 8796
    iget-boolean p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchIsEmoji:Z

    return p0
.end method

.method static synthetic access$17400(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;
    .locals 0

    .line 8796
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->progressEmptyView:Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Ljava/lang/String;
    .locals 0

    .line 8796
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$21300(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;)V
    .locals 0

    .line 8796
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->processResponse(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;)V

    return-void
.end method

.method static synthetic access$21500(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I
    .locals 0

    .line 8796
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    return p0
.end method

.method static synthetic access$23000(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 0

    .line 8796
    iget-object p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->bot:Lorg/telegram/tgnet/TLRPC$User;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/EmojiView$GifAdapter;)I
    .locals 0

    .line 8796
    iget p0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->trendingSectionItem:I

    return p0
.end method

.method private synthetic lambda$search$2(Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x1

    .line 9138
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

    .line 9222
    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->processResponse(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;)V

    return-void
.end method

.method private synthetic lambda$search$4(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    .line 9222
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

    .line 9076
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 9077
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 9078
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 9079
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v3, v3}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 9080
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 9081
    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    const-string v0, ""

    .line 9082
    invoke-virtual {p0, p1, v0, v2}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$searchBotUser$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 9075
    new-instance p2, Lorg/telegram/ui/Components/EmojiView$GifAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/EmojiView$GifAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EmojiView$GifAdapter;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private processResponse(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;)V
    .locals 7

    if-eqz p1, :cond_13

    .line 9258
    iget-object p8, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    invoke-virtual {p1, p8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p8

    if-nez p8, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 p8, 0x0

    .line 9261
    iput p8, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    if-eqz p5, :cond_2

    .line 9262
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

    .line 9263
    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void

    .line 9267
    :cond_2
    iget-boolean p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-nez p3, :cond_3

    .line 9268
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 9269
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 9270
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->resultsMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 9272
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->access$2400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 9273
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->access$3800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object p3

    invoke-virtual {p3, p8}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showProgress(Z)V

    .line 9277
    :cond_3
    instance-of p3, p7, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    if-eqz p3, :cond_10

    .line 9279
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 9280
    check-cast p7, Lorg/telegram/tgnet/TLRPC$messages_BotResults;

    .line 9281
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$21200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 9282
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$21200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p6, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-nez p5, :cond_5

    .line 9284
    iget p5, p7, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->cache_time:I

    if-eqz p5, :cond_5

    .line 9285
    iget-object p5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget p5, p5, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p5

    invoke-virtual {p5, p6, p7}, Lorg/telegram/messenger/MessagesStorage;->saveBotCache(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    .line 9287
    :cond_5
    iget-object p5, p7, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->next_offset:Ljava/lang/String;

    iput-object p5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->nextSearchOffset:Ljava/lang/String;

    const/4 p5, 0x0

    const/4 p6, 0x0

    .line 9288
    :goto_0
    iget-object v0, p7, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p5, v0, :cond_7

    .line 9289
    iget-object v0, p7, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 9290
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->resultsMap:Ljava/util/HashMap;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    .line 9293
    :cond_6
    iget-wide v1, p7, Lorg/telegram/tgnet/TLRPC$messages_BotResults;->query_id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->query_id:J

    .line 9294
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9295
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->resultsMap:Ljava/util/HashMap;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p6, p6, 0x1

    :goto_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 9298
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

    .line 9316
    :cond_a
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 9301
    :cond_b
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->updateItems()V

    .line 9302
    iget-boolean p5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-eqz p5, :cond_d

    if-eqz p3, :cond_c

    .line 9304
    iget p5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    iget-object p8, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p8}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object p8

    iget-boolean p8, p8, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->addSearch:Z

    add-int/2addr p5, p8

    add-int/2addr p5, p3

    invoke-virtual {p0, p5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 9305
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

    .line 9307
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

    .line 9311
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 9313
    :cond_e
    iget-object p5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p5}, Lorg/telegram/ui/Components/EmojiView;->access$1600(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    move-result-object p5

    iget-boolean p5, p5, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->addSearch:Z

    add-int/2addr p3, p5

    invoke-virtual {p0, p3, p6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_3

    .line 9318
    :cond_f
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_11

    .line 9319
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 9322
    :cond_10
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    .line 9325
    :cond_11
    :goto_3
    iget-boolean p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-nez p3, :cond_13

    .line 9326
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    if-eq p3, p0, :cond_12

    .line 9327
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p3

    invoke-virtual {p3, p0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_12
    if-eqz p4, :cond_13

    .line 9329
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_13

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 9330
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiView;->access$21100(Lorg/telegram/ui/Components/EmojiView;)V

    :cond_13
    :goto_4
    return-void
.end method

.method private searchBotUser()V
    .locals 3

    .line 9067
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchingUser:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 9070
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchingUser:Z

    .line 9071
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;-><init>()V

    .line 9072
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/MessagesController;->gifSearchBot:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolveUsername;->username:Ljava/lang/String;

    .line 9073
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

    .line 8991
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kikliko:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResults:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, -0x1

    .line 8992
    iput v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->trendingSectionItem:I

    .line 8993
    iput v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->firstResultItem:I

    const/4 v1, 0x0

    .line 8995
    iput v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    .line 8996
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->addSearch:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$2400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8997
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    .line 9000
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-eqz v1, :cond_2

    .line 9001
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    .line 9004
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 9005
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    if-lez v1, :cond_3

    .line 9006
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    iput v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->trendingSectionItem:I

    .line 9008
    :cond_3
    iget v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    iput v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->firstResultItem:I

    .line 9009
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    goto :goto_1

    .line 9010
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-nez v0, :cond_5

    .line 9011
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    :cond_5
    :goto_1
    return-void
.end method

.method private updateRecentItemsCount()V
    .locals 13

    .line 9017
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

    .line 9018
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

    .line 9020
    :goto_1
    iget-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->maxRecentRowsCount:I

    if-nez v2, :cond_2

    goto/16 :goto_4

    :cond_2
    const v3, 0x7fffffff

    if-ne v2, v3, :cond_3

    .line 9025
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$20500(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    return-void

    .line 9029
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    if-nez v2, :cond_4

    return-void

    .line 9033
    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    .line 9034
    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    const/16 v3, 0x64

    .line 9035
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/4 v4, 0x0

    .line 9040
    iput v4, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    .line 9042
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

    .line 9043
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

    .line 9044
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

    .line 9046
    iget v7, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    add-int/2addr v7, v8

    iput v7, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->recentItemsCount:I

    add-int/lit8 v9, v9, 0x1

    .line 9047
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

    .line 9057
    :cond_7
    :goto_3
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->maxRecentRowsCount:I

    if-ge v9, v0, :cond_8

    .line 9058
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

    .line 8905
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->itemsCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 8910
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kikliko:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResults:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    :goto_0
    if-nez p1, :cond_1

    .line 8911
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->addSearch:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$2400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 8913
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-eqz v1, :cond_2

    iget v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->trendingSectionItem:I

    if-ne p1, v2, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    if-nez v1, :cond_3

    .line 8915
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    return p1

    .line 8919
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

    .line 8900
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

    .line 9063
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 8985
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->updateRecentItemsCount()V

    .line 8986
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->updateItems()V

    .line 8987
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 8966
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 8967
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/fork/ui/view/KiklikoGifView;

    .line 8968
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResults:Ljava/util/ArrayList;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;

    invoke-virtual {p1, p2}, Lorg/fork/ui/view/KiklikoGifView;->setGif(Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;)V

    goto :goto_1

    .line 8970
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 8972
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 8973
    iget p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->firstResultItem:I

    if-ltz p1, :cond_2

    if-lt p2, p1, :cond_2

    .line 8974
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

    .line 8976
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

    .line 8931
    new-instance p2, Lorg/fork/ui/view/KiklikoGifView;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v1}, Lorg/fork/ui/view/KiklikoGifView;-><init>(Landroid/content/Context;)V

    .line 8932
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

    .line 8956
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->progressEmptyView:Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    .line 8957
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 8946
    :cond_1
    new-instance p2, Lorg/telegram/ui/Cells/StickerSetNameCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$1200(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p2, v1, v3, v2}, Lorg/telegram/ui/Cells/StickerSetNameCell;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 8947
    sget v1, Lorg/telegram/messenger/R$string;->FeaturedGifs:I

    const-string v2, "FeaturedGifs"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v3}, Lorg/telegram/ui/Cells/StickerSetNameCell;->setText(Ljava/lang/CharSequence;I)V

    .line 8949
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    const/high16 p1, 0x40200000    # 2.5f

    .line 8950
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/high16 p1, 0x40b00000    # 5.5f

    .line 8951
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 8952
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 8942
    :cond_2
    new-instance p2, Landroid/view/View;

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 8943
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$2500(Lorg/telegram/ui/Components/EmojiView;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 8937
    :cond_3
    new-instance p2, Lorg/telegram/ui/Cells/ContextLinkCell;

    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/ContextLinkCell;-><init>(Landroid/content/Context;)V

    .line 8938
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Cells/ContextLinkCell;->setCanPreviewGif(Z)V

    .line 8960
    :goto_0
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public processKiklikoResponse(Ljava/lang/String;Ljava/lang/String;ZLcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;)V
    .locals 7

    .line 8809
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8810
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8811
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResultsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 8812
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$13300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showProgress(Z)V

    .line 8815
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8816
    invoke-virtual {p4}, Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;->getCurrentPage()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->nextSearchOffset:Ljava/lang/String;

    .line 8817
    invoke-virtual {p4}, Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;->getHasNext()Z

    move-result v2

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchEndReached:Z

    const/4 v2, 0x0

    .line 8818
    :goto_0
    invoke-virtual {p4}, Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 8819
    invoke-virtual {p4}, Lcom/smedialink/storage/data/network/model/response/kikliko/SearchResponse;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;

    .line 8820
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResultsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;->getSlug()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 8823
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResults:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8824
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

    .line 8835
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 8829
    :cond_4
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->updateItems()V

    if-eqz v0, :cond_5

    .line 8831
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_5
    add-int/2addr v0, v3

    .line 8833
    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_3

    .line 8837
    :cond_6
    iget-object p4, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResults:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_7

    .line 8838
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    .line 8841
    :cond_7
    :goto_3
    iget-object p4, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p4}, Lorg/telegram/ui/Components/EmojiView;->access$12100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-eq p4, p0, :cond_8

    .line 8842
    iget-object p4, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p4}, Lorg/telegram/ui/Components/EmojiView;->access$12100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p4

    invoke-virtual {p4, p0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_8
    if-eqz p3, :cond_9

    .line 8844
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 8845
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {p1, v3}, Lorg/telegram/ui/Components/EmojiView;->access$20400(Lorg/telegram/ui/Components/EmojiView;Z)V

    :cond_9
    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 9089
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

    .line 9156
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method protected search(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 14

    move-object v9, p0

    move-object v8, p1

    move-object/from16 v10, p2

    move/from16 v11, p4

    .line 9160
    iget v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ltz v0, :cond_0

    .line 9162
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    :cond_0
    const/4 v0, 0x0

    .line 9164
    iput v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    .line 9167
    :cond_1
    iput-object v8, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    .line 9168
    iput-boolean v11, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchIsEmoji:Z

    .line 9171
    iget-boolean v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kikliko:Z

    if-eqz v0, :cond_8

    .line 9172
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->progressEmptyView:Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    if-eqz v0, :cond_2

    .line 9173
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->setLoadingState(Z)V

    .line 9175
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9176
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$13300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showProgress(Z)V

    :cond_3
    if-nez p5, :cond_5

    if-eqz v11, :cond_5

    .line 9178
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9179
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9180
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kiklikoResultsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 9181
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$12100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eq v0, v9, :cond_4

    .line 9182
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$12100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9184
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    .line 9185
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->access$20400(Lorg/telegram/ui/Components/EmojiView;Z)V

    .line 9187
    :cond_5
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0, p0}, Lorg/telegram/ui/Components/EmojiView;->access$21002(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$GifAdapter;)Lorg/telegram/ui/Components/EmojiView$GifAdapter;

    .line 9188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9189
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->presenter:Lcom/smedialink/ui/kikliko/EmojiViewPresenter;

    invoke-virtual {v0, v10}, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->getTrending(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-eqz v11, :cond_7

    .line 9191
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->presenter:Lcom/smedialink/ui/kikliko/EmojiViewPresenter;

    invoke-virtual {v0, p1, v10}, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->searchByTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9193
    :cond_7
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->presenter:Lcom/smedialink/ui/kikliko/EmojiViewPresenter;

    invoke-virtual {v0, p1, v10}, Lcom/smedialink/ui/kikliko/EmojiViewPresenter;->searchByKeyword(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 9198
    :cond_8
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->progressEmptyView:Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    if-eqz v0, :cond_9

    .line 9199
    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->setLoadingState(Z)V

    .line 9202
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

    .line 9203
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v2, :cond_b

    if-eqz p3, :cond_a

    .line 9205
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchBotUser()V

    .line 9206
    iget-boolean v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-nez v0, :cond_a

    .line 9208
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$2400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 9209
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$3800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showProgress(Z)V

    :cond_a
    return-void

    .line 9214
    :cond_b
    iget-boolean v2, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-nez v2, :cond_c

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 9216
    iget-object v2, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$2400(Lorg/telegram/ui/Components/EmojiView;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 9217
    iget-object v2, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$3800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$SearchField;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EmojiView$SearchField;->showProgress(Z)V

    .line 9220
    :cond_c
    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iput-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->bot:Lorg/telegram/tgnet/TLRPC$User;

    .line 9221
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

    .line 9222
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

    .line 9224
    iget-boolean v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-nez v0, :cond_e

    if-eqz v11, :cond_e

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 9225
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9226
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->resultsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 9227
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eq v0, v9, :cond_d

    .line 9228
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$1500(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9230
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->notifyDataSetChanged()V

    .line 9231
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$21100(Lorg/telegram/ui/Components/EmojiView;)V

    :cond_e
    if-eqz p5, :cond_f

    .line 9234
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$21200(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v5, 0x1

    .line 9235
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

    .line 9239
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

    .line 9244
    iput v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    .line 9245
    iget-object v0, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v0, v0, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Lorg/telegram/messenger/MessagesStorage;->getBotCache(Ljava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V

    goto :goto_2

    .line 9247
    :cond_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;-><init>()V

    if-nez v8, :cond_12

    const-string v1, ""

    goto :goto_1

    :cond_12
    move-object v1, v8

    .line 9248
    :goto_1
    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->query:Ljava/lang/String;

    .line 9249
    iget-object v1, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v1, v1, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v9, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->bot:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 9250
    iput-object v10, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->offset:Ljava/lang/String;

    .line 9251
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getInlineBotResults;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 9252
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

    .line 9094
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

    .line 9095
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

    .line 9096
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

    .line 9098
    :goto_2
    iget-boolean v3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->withRecent:Z

    if-eqz v3, :cond_3

    return-void

    .line 9101
    :cond_3
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    if-ltz v3, :cond_4

    .line 9103
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    iget v3, v3, Lorg/telegram/ui/Components/EmojiView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    iget v6, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    invoke-virtual {v3, v6, v4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 9105
    :cond_4
    iput v5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->reqId:I

    .line 9107
    :cond_5
    iput-boolean v5, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchIsEmoji:Z

    .line 9108
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->progressEmptyView:Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;

    if-eqz v3, :cond_6

    .line 9109
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/EmojiView$GifProgressEmptyView;->setLoadingState(Z)V

    .line 9111
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_7

    .line 9112
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 9114
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 p1, 0x0

    .line 9115
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    .line 9116
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->showTrendingWhenSearchEmpty:Z

    if-eqz p1, :cond_8

    .line 9117
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->loadTrendingGifs()V

    goto :goto_3

    .line 9119
    :cond_8
    invoke-virtual {v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getCurrentPosition()I

    move-result p1

    .line 9120
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

    .line 9121
    :cond_a
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eq p1, v1, :cond_d

    .line 9122
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_3

    .line 9126
    :cond_b
    iget-boolean p2, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kikliko:Z

    if-eqz p2, :cond_c

    .line 9127
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

    .line 9129
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

    .line 9134
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    .line 9136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 9137
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

    .line 9145
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->kikliko:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 9146
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$11900(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifLayoutManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 9148
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchIsEmoji:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->lastSearchImageString:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9149
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

    .line 9152
    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/EmojiView$GifAdapter;->search(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method
