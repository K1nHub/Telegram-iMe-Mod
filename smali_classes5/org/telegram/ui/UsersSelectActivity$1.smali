.class Lorg/telegram/ui/UsersSelectActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "UsersSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/UsersSelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/UsersSelectActivity;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/telegram/ui/UsersSelectActivity;Landroid/content/Context;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$1;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    iput-object p2, p0, Lorg/telegram/ui/UsersSelectActivity$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3

    .line 533
    invoke-static {p1}, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->getCategoriesCreatedFolderOrTopic(I)Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 536
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$1;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$1100(Lorg/telegram/ui/UsersSelectActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 539
    :cond_0
    invoke-virtual {v0}, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->getHasSelectedItem()Z

    move-result p1

    if-nez p1, :cond_3

    .line 540
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$1;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$1200(Lorg/telegram/ui/UsersSelectActivity;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/UsersSelectActivity$1;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    iget-object v2, v2, Lorg/telegram/ui/UsersSelectActivity;->selectedChatsGroupCreationFilter:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    invoke-virtual {v2}, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->getFabricId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setRightIcon(I)V

    .line 541
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$1;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    iget-object p1, p1, Lorg/telegram/ui/UsersSelectActivity;->selectedChatsGroupCreationFilter:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    invoke-virtual {p1, v2}, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->setHasSelectedItem(Z)V

    .line 542
    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->setHasSelectedItem(Z)V

    .line 543
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$1;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    iput-object v0, p1, Lorg/telegram/ui/UsersSelectActivity;->selectedChatsGroupCreationFilter:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    .line 544
    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$1200(Lorg/telegram/ui/UsersSelectActivity;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0}, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->getFabricId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v0, Lorg/telegram/messenger/R$drawable;->list_check:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setRightIcon(I)V

    .line 545
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$1;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/UsersSelectActivity;->access$1400(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity$1;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    new-instance v1, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;

    iget-object v2, p0, Lorg/telegram/ui/UsersSelectActivity$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;-><init>(Lorg/telegram/ui/UsersSelectActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/UsersSelectActivity;->access$1302(Lorg/telegram/ui/UsersSelectActivity;Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;)Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 549
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$1;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 551
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity$1;->this$0:Lorg/telegram/ui/UsersSelectActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/UsersSelectActivity;->access$1500(Lorg/telegram/ui/UsersSelectActivity;Z)Z

    :cond_3
    :goto_0
    return-void
.end method
