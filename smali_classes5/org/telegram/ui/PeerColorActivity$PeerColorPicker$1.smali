.class Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$1;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "PeerColorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$currentAccount:I

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 0

    .line 782
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$1;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;

    iput-object p2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$1;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iput p4, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$1;->val$currentAccount:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 814
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$1;->val$currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 815
    :cond_0
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 796
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$ColorCell;

    .line 797
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$1;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$ColorCell;->setBackgroundColor(I)V

    .line 798
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$1;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->access$800(Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;)I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$ColorCell;->setSelected(ZZ)V

    if-ltz p2, :cond_1

    .line 799
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    array-length v1, v0

    if-ge p2, v1, :cond_1

    .line 801
    invoke-static {}, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker;->access$1500()[I

    move-result-object v1

    aget p2, v1, p2

    aget p2, v0, p2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$1;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    .line 800
    invoke-virtual {p1, p2}, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$ColorCell;->set(I)V

    goto :goto_1

    .line 804
    :cond_1
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    array-length v0, v0

    sub-int/2addr p2, v0

    .line 805
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$1;->val$currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    if-eqz v0, :cond_2

    if-ltz p2, :cond_2

    .line 806
    iget-object v1, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 807
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessagesController$PeerColor;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$ColorCell;->set(Lorg/telegram/messenger/MessagesController$PeerColor;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .line 791
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    new-instance p2, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$ColorCell;

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$1;->val$context:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/PeerColorActivity$PeerColorPicker$ColorCell;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
