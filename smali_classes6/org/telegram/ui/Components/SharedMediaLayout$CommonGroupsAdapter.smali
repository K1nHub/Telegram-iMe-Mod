.class Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommonGroupsAdapter"
.end annotation


# instance fields
.field private chats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;"
        }
    .end annotation
.end field

.field private endReached:Z

.field private firstLoaded:Z

.field private loading:Z

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method public static synthetic $r8$lambda$rp9GvIHXZtLkWeo4UrrqsQm0dro(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->lambda$getChats$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$trXmC84_fvMtkTP4xzNqlKJUfhg(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->lambda$getChats$1(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V
    .locals 0

    .line 8673
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 8668
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->chats:Ljava/util/ArrayList;

    .line 8674
    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$7900(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;)Z
    .locals 0

    .line 8665
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->endReached:Z

    return p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;)Z
    .locals 0

    .line 8665
    iget-boolean p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->loading:Z

    return p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 8665
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->chats:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;JI)V
    .locals 0

    .line 8665
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->getChats(JI)V

    return-void
.end method

.method private getChats(JI)V
    .locals 4

    .line 8678
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->loading:Z

    if-eqz v0, :cond_0

    return-void

    .line 8681
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getCommonChats;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getCommonChats;-><init>()V

    .line 8683
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3100(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8684
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3100(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    .line 8685
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    goto :goto_0

    .line 8687
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3100(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v1

    .line 8689
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getCommonChats;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 8690
    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_inputUserEmpty;

    if-eqz v1, :cond_2

    return-void

    .line 8693
    :cond_2
    iput p3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getCommonChats;->limit:I

    .line 8694
    iput-wide p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getCommonChats;->max_id:J

    const/4 p1, 0x1

    .line 8695
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->loading:Z

    .line 8696
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8697
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;I)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    .line 8722
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void
.end method

.method private synthetic lambda$getChats$0(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V
    .locals 4

    .line 8698
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 8700
    check-cast p2, Lorg/telegram/tgnet/TLRPC$messages_Chats;

    .line 8701
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 8702
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->endReached:Z

    .line 8703
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->chats:Ljava/util/ArrayList;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_Chats;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 8705
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->endReached:Z

    :goto_2
    move p1, v2

    .line 8708
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p2

    array-length p2, p2

    if-ge p1, p2, :cond_5

    .line 8709
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p2

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p2

    const/4 p3, 0x6

    if-ne p2, p3, :cond_4

    .line 8710
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p2

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 8711
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$500(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object p2

    aget-object p2, p2, p1

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object p2

    .line 8712
    iget-boolean p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->firstLoaded:Z

    if-nez p3, :cond_3

    if-nez v0, :cond_4

    .line 8713
    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v3, 0x0

    invoke-static {p3, p2, v2, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$11000(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 8718
    :cond_5
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->loading:Z

    .line 8719
    iput-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->firstLoaded:Z

    .line 8720
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$getChats$1(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 8697
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 8732
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->loading:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 8735
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8736
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8737
    iget-boolean v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->endReached:Z

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 8781
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->loading:Z

    if-nez v0, :cond_0

    const/16 p1, 0xf

    return p1

    .line 8784
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    const/16 p1, 0xe

    return p1

    :cond_1
    const/16 p1, 0x10

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 8727
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 8

    .line 8770
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_3

    .line 8771
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    if-nez v0, :cond_0

    return-void

    .line 8772
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    .line 8773
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    .line 8774
    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Cells/ProfileSearchCell;->setData(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 8775
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_2

    iget-boolean p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->endReached:Z

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    iput-boolean v1, p1, Lorg/telegram/ui/Cells/ProfileSearchCell;->useSeparator:Z

    :cond_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const/16 p1, 0xe

    const/4 v0, -0x1

    if-eq p2, p1, :cond_1

    const/16 p1, 0xf

    if-eq p2, p1, :cond_0

    .line 8757
    new-instance p1, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$10100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p2, 0x1

    .line 8758
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    const/4 v1, 0x0

    .line 8759
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    .line 8760
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    goto :goto_0

    .line 8752
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->mContext:Landroid/content/Context;

    const/4 p2, 0x6

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3100(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$10100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {p1, p2, v1, v2, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->createEmptyStubView(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;

    move-result-object p1

    .line 8753
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8754
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 8749
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/ProfileSearchCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$CommonGroupsAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$10100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/Cells/ProfileSearchCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 8764
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8765
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
