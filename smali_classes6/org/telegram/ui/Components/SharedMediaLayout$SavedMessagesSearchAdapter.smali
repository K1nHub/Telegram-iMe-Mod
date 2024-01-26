.class Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SavedMessagesSearchAdapter"
.end annotation


# instance fields
.field private count:I

.field private final currentAccount:I

.field public final dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/SavedMessagesController$SavedDialog;",
            ">;"
        }
    .end annotation
.end field

.field private endReached:Z

.field private lastQuery:Ljava/lang/String;

.field private loading:Z

.field private final mContext:Landroid/content/Context;

.field public final messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private reqId:I

.field private searchRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method public static synthetic $r8$lambda$KwagLA2QLWYIUCtkMCWdkcz-WIk(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->sendRequest()V

    return-void
.end method

.method public static synthetic $r8$lambda$akE6JFtBRAOztz-YwOWcoTka3BI(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lambda$sendRequest$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f-auis1_YysDihTWOK11nZxPacw(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lambda$sendRequest$0(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V
    .locals 1

    .line 8304
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 8302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->dialogs:Ljava/util/ArrayList;

    .line 8303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 8311
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->endReached:Z

    .line 8313
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->count:I

    const/4 v0, -0x1

    .line 8316
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->reqId:I

    .line 8350
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 8305
    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->mContext:Landroid/content/Context;

    .line 8306
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    const/4 p1, 0x1

    .line 8307
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method private synthetic lambda$sendRequest$0(Lorg/telegram/tgnet/TLObject;)V
    .locals 7

    .line 8367
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    if-nez v0, :cond_0

    return-void

    .line 8370
    :cond_0
    check-cast p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    .line 8371
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 8372
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 8373
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->users:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->chats:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4, v4}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    move v0, v2

    .line 8374
    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 8375
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Message;

    .line 8376
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/messenger/MessageObject;

    iget v6, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    invoke-direct {v5, v6, v1, v2, v2}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8378
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messagesSlice;

    if-eqz v0, :cond_3

    .line 8379
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->count:I

    .line 8380
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->count:I

    if-lt p1, v0, :cond_2

    move p1, v4

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->endReached:Z

    goto :goto_2

    .line 8381
    :cond_3
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messages;

    if-eqz p1, :cond_4

    .line 8382
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->count:I

    .line 8383
    iput-boolean v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->endReached:Z

    :cond_4
    :goto_2
    move p1, v2

    .line 8386
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_6

    .line 8387
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_5

    .line 8388
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->count:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8389
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->NoResultFoundFor:I

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastQuery:Ljava/lang/String;

    aput-object v5, v3, v2

    const-string v5, "NoResultFoundFor"

    invoke-static {v5, v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8390
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    const/4 p1, -0x1

    .line 8395
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->reqId:I

    .line 8397
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8398
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->loading:Z

    return-void
.end method

.method private synthetic lambda$sendRequest$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 8366
    new-instance p2, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendRequest()V
    .locals 5

    .line 8352
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8353
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->loading:Z

    return-void

    .line 8356
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 8357
    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 8358
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 8359
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastQuery:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 8360
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 8361
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 8362
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    :cond_1
    const/16 v2, 0xa

    .line 8364
    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 8365
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->endReached:Z

    .line 8366
    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->reqId:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 8455
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 6

    if-gez p1, :cond_0

    int-to-long v0, p1

    return-wide v0

    .line 8405
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ge p1, v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    .line 8406
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    iget-wide v3, p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    :goto_0
    int-to-long v0, p1

    return-wide v0

    .line 8408
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 8409
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 8410
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_2
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/16 p1, 0x17

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public loadMore()V
    .locals 1

    .line 8346
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->endReached:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->loading:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8347
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->sendRequest()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    if-gez p2, :cond_0

    return-void

    .line 8433
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/DialogCell;

    if-nez v0, :cond_1

    return-void

    .line 8434
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/telegram/ui/Cells/DialogCell;

    add-int/lit8 p1, p2, 0x1

    .line 8435
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v1, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    .line 8436
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_3

    .line 8437
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;

    .line 8438
    iget-wide v2, p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->dialogId:J

    iget-object v4, p1, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p1}, Lorg/telegram/messenger/SavedMessagesController$SavedDialog;->getDate()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V

    goto :goto_1

    .line 8440
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p2, p1

    .line 8441
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_4

    .line 8442
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 8443
    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J

    move-result-wide v2

    iget-object p1, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(JLorg/telegram/messenger/MessageObject;IZZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    .line 8418
    new-instance p1, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter$1;

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter$1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;ZZ)V

    .line 8424
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/DialogCell;->setDialogCellDelegate(Lorg/telegram/ui/Cells/DialogCell$DialogCellDelegate;)V

    const/4 p2, 0x1

    .line 8425
    iput-boolean p2, p1, Lorg/telegram/ui/Cells/DialogCell;->isSavedDialog:Z

    .line 8426
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6900(Lorg/telegram/ui/Components/SharedMediaLayout;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 8427
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public search(Ljava/lang/String;)V
    .locals 4

    .line 8318
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastQuery:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8321
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->lastQuery:Ljava/lang/String;

    .line 8322
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->reqId:I

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    .line 8323
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->reqId:I

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    const/4 v0, -0x1

    .line 8324
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->reqId:I

    .line 8327
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 8328
    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->count:I

    .line 8329
    iput-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->endReached:Z

    .line 8330
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->loading:Z

    .line 8332
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8333
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->dialogs:Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getSavedMessagesController()Lorg/telegram/messenger/SavedMessagesController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/SavedMessagesController;->searchDialogs(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8334
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    array-length p1, p1

    if-ge v0, p1, :cond_3

    .line 8335
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p1

    const/16 v2, 0xb

    if-ne p1, v2, :cond_2

    .line 8336
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$4400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8339
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8341
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 8342
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SavedMessagesSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x258

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
