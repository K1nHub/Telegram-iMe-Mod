.class public Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "InviteContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/InviteContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InviteAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private searchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/ContactsController$Contact;",
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

.field private searchTimer:Ljava/util/Timer;

.field private searching:Z

.field final synthetic this$0:Lorg/telegram/ui/InviteContactsActivity;


# direct methods
.method public static synthetic $r8$lambda$eiOK2SS2YmV7U1pGBF-AyRLHb1w(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->lambda$updateSearchResults$0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/InviteContactsActivity;Landroid/content/Context;)V
    .locals 0

    .line 723
    iput-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 718
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchResult:Ljava/util/ArrayList;

    .line 719
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 724
    iput-object p2, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$2500(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;)Ljava/util/Timer;
    .locals 0

    .line 715
    iget-object p0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 715
    iput-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 715
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$updateSearchResults$0(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 876
    iget-boolean v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searching:Z

    if-nez v0, :cond_0

    return-void

    .line 879
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchResult:Ljava/util/ArrayList;

    .line 880
    iput-object p2, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 881
    invoke-virtual {p0}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/ContactsController$Contact;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 875
    new-instance v0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 737
    iget-boolean v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searching:Z

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 740
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/InviteContactsActivity;->access$2400(Lorg/telegram/ui/InviteContactsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 781
    iget-boolean v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searching:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 5

    .line 887
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 888
    invoke-virtual {p0}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->getItemCount()I

    move-result v0

    .line 889
    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/InviteContactsActivity;->access$1400(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 890
    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v1}, Lorg/telegram/ui/InviteContactsActivity;->access$2700(Lorg/telegram/ui/InviteContactsActivity;)Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;

    move-result-object v1

    if-ne v0, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/GroupCreateDividerItemDecoration;->setSingle(Z)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 760
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 762
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/InviteUserCell;

    .line 765
    iget-boolean v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searching:Z

    if-eqz v0, :cond_1

    .line 766
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/ContactsController$Contact;

    .line 767
    iget-object v1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_0

    .line 769
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/InviteContactsActivity;->access$2400(Lorg/telegram/ui/InviteContactsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lorg/telegram/messenger/ContactsController$Contact;

    const/4 p2, 0x0

    .line 772
    :goto_0
    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Cells/InviteUserCell;->setUser(Lorg/telegram/messenger/ContactsController$Contact;Ljava/lang/CharSequence;)V

    .line 773
    iget-object p2, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->this$0:Lorg/telegram/ui/InviteContactsActivity;

    invoke-static {p2}, Lorg/telegram/ui/InviteContactsActivity;->access$500(Lorg/telegram/ui/InviteContactsActivity;)Ljava/util/HashMap;

    move-result-object p2

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$Contact;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/InviteUserCell;->setChecked(ZZ)V

    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    .line 752
    new-instance p2, Lorg/telegram/ui/Cells/InviteUserCell;

    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lorg/telegram/ui/Cells/InviteUserCell;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    .line 748
    :cond_0
    new-instance p2, Lorg/telegram/ui/Cells/InviteTextCell;

    iget-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/InviteTextCell;-><init>(Landroid/content/Context;)V

    .line 749
    sget p1, Lorg/telegram/messenger/R$string;->ShareTelegram:I

    const-string v0, "ShareTelegram"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->share:I

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Cells/InviteTextCell;->setTextAndIcon(Ljava/lang/String;I)V

    .line 755
    :goto_0
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 791
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/InviteUserCell;

    if-eqz v0, :cond_0

    .line 792
    check-cast p1, Lorg/telegram/ui/Cells/InviteUserCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/InviteUserCell;->recycle()V

    :cond_0
    return-void
.end method

.method public searchDialogs(Ljava/lang/String;)V
    .locals 6

    .line 803
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 807
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 810
    iget-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 811
    iget-object p1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 812
    invoke-virtual {p0}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 814
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searchTimer:Ljava/util/Timer;

    .line 815
    new-instance v1, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter$1;-><init>(Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :goto_1
    return-void
.end method

.method public setSearching(Z)V
    .locals 1

    .line 728
    iget-boolean v0, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searching:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 731
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->searching:Z

    .line 732
    invoke-virtual {p0}, Lorg/telegram/ui/InviteContactsActivity$InviteAdapter;->notifyDataSetChanged()V

    return-void
.end method
