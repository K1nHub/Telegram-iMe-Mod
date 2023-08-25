.class public final Lcom/iMe/ui/recent_chats/RecentChatsBar$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "RecentChatsBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/recent_chats/RecentChatsBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/recent_chats/RecentChatsBar;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/recent_chats/RecentChatsBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/iMe/ui/recent_chats/RecentChatsBar$ListAdapter;->this$0:Lcom/iMe/ui/recent_chats/RecentChatsBar;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/iMe/ui/recent_chats/RecentChatsBar$ListAdapter;->this$0:Lcom/iMe/ui/recent_chats/RecentChatsBar;

    invoke-static {v0}, Lcom/iMe/ui/recent_chats/RecentChatsBar;->access$getData$p(Lcom/iMe/ui/recent_chats/RecentChatsBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type com.iMe.fork.ui.view.AvatarDrawableCell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/fork/ui/view/AvatarDrawableCell;

    iget-object v0, p0, Lcom/iMe/ui/recent_chats/RecentChatsBar$ListAdapter;->this$0:Lcom/iMe/ui/recent_chats/RecentChatsBar;

    .line 120
    invoke-virtual {p1}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->updateColors()V

    .line 121
    invoke-static {v0}, Lcom/iMe/ui/recent_chats/RecentChatsBar;->access$getData$p(Lcom/iMe/ui/recent_chats/RecentChatsBar;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/model/HistoryDialogModel;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/HistoryDialogModel;->getDialogId()J

    move-result-wide v1

    invoke-static {v0}, Lcom/iMe/ui/recent_chats/RecentChatsBar;->access$getData$p(Lcom/iMe/ui/recent_chats/RecentChatsBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iMe/storage/domain/model/HistoryDialogModel;

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/HistoryDialogModel;->isPinned()Z

    move-result p2

    invoke-virtual {p1, v1, v2, p2}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;->setDialog(JZ)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/recent_chats/RecentChatsBar$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/ui/Components/RecyclerListView$Holder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance p1, Lcom/iMe/fork/ui/view/AvatarDrawableCell;

    iget-object p2, p0, Lcom/iMe/ui/recent_chats/RecentChatsBar$ListAdapter;->this$0:Lcom/iMe/ui/recent_chats/RecentChatsBar;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/ui/recent_chats/RecentChatsBar$ListAdapter;->this$0:Lcom/iMe/ui/recent_chats/RecentChatsBar;

    invoke-virtual {v0}, Lcom/iMe/ui/recent_chats/RecentChatsBar;->getCurrentAccount()I

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/iMe/fork/ui/view/AvatarDrawableCell;-><init>(Landroid/content/Context;I)V

    .line 115
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/16 v0, 0x32

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
