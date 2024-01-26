.class Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "PrivacyControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PrivacyControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PrivacyControlActivity;


# direct methods
.method public static synthetic $r8$lambda$xh17LtUGJGlm_If23qPdCRwAMVI(Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->lambda$onBindViewHolder$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/PrivacyControlActivity;Landroid/content/Context;)V
    .locals 0

    .line 1351
    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1352
    iput-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getUsersCount(Ljava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1463
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1464
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1468
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1470
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    add-int/2addr v1, v2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private synthetic lambda$onBindViewHolder$0()V
    .locals 3

    .line 1536
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v2, "noncontacts"

    invoke-direct {v1, v2}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1370
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$2700(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1735
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1800(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$2000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$2600(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto/16 :goto_3

    .line 1737
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$4200(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$700(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$4300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$4700(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$2300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$4800(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$4900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto/16 :goto_2

    .line 1739
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$5000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$5100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$600(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$5200(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$5300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto/16 :goto_1

    .line 1741
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1400(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1600(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1700(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$5600(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$5500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_0

    .line 1743
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$5800(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    const/4 p1, 0x4

    return p1

    .line 1745
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$5900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    const/4 p1, 0x5

    return p1

    .line 1747
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$2400(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    const/4 p1, 0x6

    return p1

    .line 1749
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$2200(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    const/4 p1, 0x7

    return p1

    .line 1751
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$2500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p1, v0, :cond_8

    const/16 p1, 0x8

    return p1

    :cond_8
    return v1

    :cond_9
    :goto_0
    const/4 p1, 0x3

    return p1

    :cond_a
    :goto_1
    const/4 p1, 0x2

    return p1

    :cond_b
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_c
    :goto_3
    return v1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    .line 1357
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 1359
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1400(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1363
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1600(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1700(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1800(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    .line 1364
    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$2000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$2100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    .line 1365
    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$2200(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$2300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$2400(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$2500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$2600(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .line 1479
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x4

    const/4 v3, -0x1

    const/16 v4, 0x65

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_4d

    const/4 v8, 0x5

    const/4 v9, 0x6

    const/16 v10, 0xa

    const/16 v11, 0x8

    const/4 v12, 0x2

    if-eq v0, v7, :cond_2b

    if-eq v0, v12, :cond_1c

    if-eq v0, v5, :cond_1

    if-eq v0, v11, :cond_0

    goto/16 :goto_11

    .line 1725
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1726
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$2500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_59

    .line 1727
    sget p2, Lorg/telegram/messenger/R$string;->HideReadTime:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$5700(Lorg/telegram/ui/PrivacyControlActivity;)Z

    move-result v0

    invoke-virtual {p1, p2, v0, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_11

    .line 1683
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/RadioCell;

    const/4 v0, 0x0

    .line 1684
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/RadioCell;->setRadioIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1686
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1400(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    const-string v1, "LastSeenEverybody"

    if-ne p2, v0, :cond_3

    .line 1687
    sget p2, Lorg/telegram/messenger/R$string;->LastSeenEverybody:I

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$5400(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-nez v0, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p1, p2, v6, v7}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_11

    .line 1688
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    const-string v2, "LastSeenNobody"

    if-ne p2, v0, :cond_5

    .line 1689
    sget p2, Lorg/telegram/messenger/R$string;->LastSeenNobody:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$5400(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne v0, v7, :cond_4

    goto :goto_0

    :cond_4
    move v7, v6

    :goto_0
    invoke-virtual {p1, p2, v7, v6}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_11

    .line 1691
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1600(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    const-string v4, "LastSeenContacts"

    if-eq p2, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1700(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq p2, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_6

    goto :goto_2

    .line 1717
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$5500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_8

    .line 1718
    sget p2, Lorg/telegram/messenger/R$string;->LastSeenContacts:I

    invoke-static {v4, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$4600(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne v0, v7, :cond_7

    goto :goto_1

    :cond_7
    move v7, v6

    :goto_1
    invoke-virtual {p1, p2, v7, v6}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_11

    .line 1719
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$5600(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_59

    .line 1720
    sget p2, Lorg/telegram/messenger/R$string;->LastSeenEverybody:I

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$4600(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-nez v0, :cond_9

    move v6, v7

    :cond_9
    invoke-virtual {p1, p2, v6, v7}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_11

    .line 1692
    :cond_a
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1600(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_e

    .line 1693
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v5, :cond_c

    .line 1694
    sget p2, Lorg/telegram/messenger/R$string;->P2PEverybody:I

    const-string v0, "P2PEverybody"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$4500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-nez v0, :cond_b

    move v6, v7

    :cond_b
    invoke-virtual {p1, p2, v6, v7}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_11

    .line 1696
    :cond_c
    sget p2, Lorg/telegram/messenger/R$string;->LastSeenEverybody:I

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$4500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-nez v0, :cond_d

    move v6, v7

    :cond_d
    invoke-virtual {p1, p2, v6, v7}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_11

    .line 1698
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1700(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_18

    .line 1699
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v5, :cond_11

    .line 1700
    sget p2, Lorg/telegram/messenger/R$string;->P2PContacts:I

    const-string v0, "P2PContacts"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$4500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne v0, v12, :cond_f

    move v0, v7

    goto :goto_3

    :cond_f
    move v0, v6

    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-eq v1, v3, :cond_10

    move v6, v7

    :cond_10
    invoke-virtual {p1, p2, v0, v6}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_11

    .line 1701
    :cond_11
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v10, :cond_15

    .line 1702
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_12

    .line 1703
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->mini_switch_lock:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/RadioCell;->setRadioIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1705
    :cond_12
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyMessagesContactsAndPremium:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$4500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne v0, v12, :cond_13

    move v0, v7

    goto :goto_4

    :cond_13
    move v0, v6

    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-eq v1, v3, :cond_14

    move v6, v7

    :cond_14
    invoke-virtual {p1, p2, v0, v6}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_11

    .line 1707
    :cond_15
    sget p2, Lorg/telegram/messenger/R$string;->LastSeenContacts:I

    invoke-static {v4, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$4500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne v0, v12, :cond_16

    move v0, v7

    goto :goto_5

    :cond_16
    move v0, v6

    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-eq v1, v3, :cond_17

    move v6, v7

    :cond_17
    invoke-virtual {p1, p2, v0, v6}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_11

    .line 1710
    :cond_18
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v5, :cond_1a

    .line 1711
    sget p2, Lorg/telegram/messenger/R$string;->P2PNobody:I

    const-string v0, "P2PNobody"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$4500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne v0, v7, :cond_19

    goto :goto_6

    :cond_19
    move v7, v6

    :goto_6
    invoke-virtual {p1, p2, v7, v6}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_11

    .line 1713
    :cond_1a
    sget p2, Lorg/telegram/messenger/R$string;->LastSeenNobody:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$4500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne v0, v7, :cond_1b

    goto :goto_7

    :cond_1b
    move v7, v6

    :goto_7
    invoke-virtual {p1, p2, v7, v6}, Lorg/telegram/ui/Cells/RadioCell;->setText(Ljava/lang/String;ZZ)V

    goto/16 :goto_11

    .line 1641
    :cond_1c
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 1643
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$5000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1d

    .line 1644
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v4, :cond_59

    .line 1645
    sget p2, Lorg/telegram/messenger/R$string;->wallet_crypto_privacy_who_can_see_account_rank_section_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 1648
    :cond_1d
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$5100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_28

    .line 1650
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v4, :cond_1e

    .line 1651
    sget p2, Lorg/telegram/messenger/R$string;->wallet_crypto_privacy_who_can_ask_section_title:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 1653
    :cond_1e
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v9, :cond_1f

    .line 1654
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyPhoneTitle:I

    const-string v0, "PrivacyPhoneTitle"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 1655
    :cond_1f
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v8, :cond_20

    .line 1656
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyForwardsTitle:I

    const-string v0, "PrivacyForwardsTitle"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 1657
    :cond_20
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v2, :cond_21

    .line 1658
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyProfilePhotoTitle:I

    const-string v0, "PrivacyProfilePhotoTitle"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 1659
    :cond_21
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v1, :cond_22

    .line 1660
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyBioTitle:I

    const-string v0, "PrivacyBioTitle"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 1661
    :cond_22
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v5, :cond_23

    .line 1662
    sget p2, Lorg/telegram/messenger/R$string;->P2PEnabledWith:I

    const-string v0, "P2PEnabledWith"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 1663
    :cond_23
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v12, :cond_24

    .line 1664
    sget p2, Lorg/telegram/messenger/R$string;->WhoCanCallMe:I

    const-string v0, "WhoCanCallMe"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 1665
    :cond_24
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v7, :cond_25

    .line 1666
    sget p2, Lorg/telegram/messenger/R$string;->WhoCanAddMe:I

    const-string v0, "WhoCanAddMe"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 1667
    :cond_25
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v11, :cond_26

    .line 1668
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyVoiceMessagesTitle:I

    const-string v0, "PrivacyVoiceMessagesTitle"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 1669
    :cond_26
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v10, :cond_27

    .line 1670
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyMessagesTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 1672
    :cond_27
    sget p2, Lorg/telegram/messenger/R$string;->LastSeenTitle:I

    const-string v0, "LastSeenTitle"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 1674
    :cond_28
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$600(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_29

    .line 1675
    sget p2, Lorg/telegram/messenger/R$string;->AddExceptions:I

    const-string v0, "AddExceptions"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 1676
    :cond_29
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$5200(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2a

    .line 1677
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyP2PHeader:I

    const-string v0, "PrivacyP2PHeader"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 1678
    :cond_2a
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$5300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_59

    .line 1679
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyPhoneTitle2:I

    const-string v0, "PrivacyPhoneTitle2"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    .line 1526
    :cond_2b
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1529
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$4200(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2c

    .line 1530
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v4, :cond_4c

    .line 1531
    sget p2, Lorg/telegram/messenger/R$string;->wallet_crypto_privacy_who_can_see_account_rank_section_description:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 1534
    :cond_2c
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$4300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2d

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne v0, v10, :cond_2d

    .line 1535
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyMessagesInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;)V

    invoke-static {p2, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1538
    sget v6, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    goto/16 :goto_d

    .line 1539
    :cond_2d
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$4300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    const-string v10, "PrivacyBioInfo"

    if-ne p2, v0, :cond_39

    .line 1541
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v4, :cond_2e

    .line 1542
    sget p2, Lorg/telegram/messenger/R$string;->wallet_crypto_privacy_who_can_ask_section_description:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 1544
    :cond_2e
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v9, :cond_31

    .line 1545
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$4500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne v0, v7, :cond_2f

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$4600(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne v0, v7, :cond_2f

    move v0, v7

    goto :goto_8

    :cond_2f
    move v0, v6

    :goto_8
    invoke-static {p2, v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$4402(Lorg/telegram/ui/PrivacyControlActivity;Z)Z

    move-result p2

    if-eqz p2, :cond_30

    .line 1546
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyPhoneInfo3:I

    const-string v0, "PrivacyPhoneInfo3"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 1548
    :cond_30
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1549
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientPhone()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "https://t.me/+%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1550
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1551
    new-instance v2, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter$2;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter$2;-><init>(Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;Ljava/lang/String;)V

    .line 1559
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x21

    .line 1551
    invoke-virtual {v1, v2, v6, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1561
    sget v0, Lorg/telegram/messenger/R$string;->PrivacyPhoneInfo:I

    const-string v2, "PrivacyPhoneInfo"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    .line 1562
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->PrivacyPhoneInfo4:I

    const-string v3, "PrivacyPhoneInfo4"

    .line 1563
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v2, "\n"

    .line 1564
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 1565
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1567
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 1569
    :cond_31
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v8, :cond_32

    .line 1570
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyForwardsInfo:I

    const-string v0, "PrivacyForwardsInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 1571
    :cond_32
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v2, :cond_33

    .line 1572
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyProfilePhotoInfo:I

    const-string v0, "PrivacyProfilePhotoInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1573
    :cond_33
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v1, :cond_34

    .line 1574
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyBioInfo:I

    invoke-static {v10, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1575
    :cond_34
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v5, :cond_35

    .line 1576
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyCallsP2PHelp:I

    const-string v0, "PrivacyCallsP2PHelp"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1577
    :cond_35
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v12, :cond_36

    .line 1578
    sget p2, Lorg/telegram/messenger/R$string;->WhoCanCallMeInfo:I

    const-string v0, "WhoCanCallMeInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1579
    :cond_36
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v7, :cond_37

    .line 1580
    sget p2, Lorg/telegram/messenger/R$string;->WhoCanAddMeInfo:I

    const-string v0, "WhoCanAddMeInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1581
    :cond_37
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v11, :cond_38

    .line 1582
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyVoiceMessagesInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1584
    :cond_38
    sget p2, Lorg/telegram/messenger/R$string;->CustomHelp:I

    const-string v0, "CustomHelp"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1586
    :goto_9
    sget v6, Lorg/telegram/messenger/R$drawable;->greydivider:I

    goto/16 :goto_d

    .line 1587
    :cond_39
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$700(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_47

    .line 1589
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v4, :cond_3a

    .line 1590
    sget p2, Lorg/telegram/messenger/R$string;->wallet_crypto_privacy_add_exception_section_description:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1592
    :cond_3a
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v9, :cond_3b

    .line 1593
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyPhoneInfo2:I

    const-string v0, "PrivacyPhoneInfo2"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1594
    :cond_3b
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v8, :cond_3c

    .line 1595
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyForwardsInfo2:I

    const-string v0, "PrivacyForwardsInfo2"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1596
    :cond_3c
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v2, :cond_3f

    .line 1597
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$4500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v12, :cond_3d

    .line 1598
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyProfilePhotoInfo5:I

    const-string v0, "PrivacyProfilePhotoInfo5"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1599
    :cond_3d
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$4500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-nez p2, :cond_3e

    .line 1600
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyProfilePhotoInfo3:I

    const-string v0, "PrivacyProfilePhotoInfo3"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1602
    :cond_3e
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyProfilePhotoInfo4:I

    const-string v0, "PrivacyProfilePhotoInfo4"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 1604
    :cond_3f
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v5, :cond_40

    .line 1605
    sget p2, Lorg/telegram/messenger/R$string;->CustomP2PInfo:I

    const-string v0, "CustomP2PInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 1606
    :cond_40
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v1, :cond_41

    .line 1607
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyBioInfo:I

    invoke-static {v10, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 1608
    :cond_41
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v12, :cond_42

    .line 1609
    sget p2, Lorg/telegram/messenger/R$string;->CustomCallInfo:I

    const-string v0, "CustomCallInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 1610
    :cond_42
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v7, :cond_43

    .line 1611
    sget p2, Lorg/telegram/messenger/R$string;->CustomShareInfo:I

    const-string v0, "CustomShareInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 1612
    :cond_43
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v11, :cond_44

    .line 1613
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyVoiceMessagesInfo2:I

    const-string v0, "PrivacyVoiceMessagesInfo2"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 1615
    :cond_44
    sget p2, Lorg/telegram/messenger/R$string;->CustomShareSettingsHelp:I

    const-string v0, "CustomShareSettingsHelp"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1617
    :goto_a
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-eq p2, v12, :cond_46

    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-nez p2, :cond_45

    goto :goto_b

    .line 1620
    :cond_45
    sget v6, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    goto :goto_d

    .line 1618
    :cond_46
    :goto_b
    sget v6, Lorg/telegram/messenger/R$drawable;->greydivider:I

    goto :goto_d

    .line 1622
    :cond_47
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$4700(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_48

    .line 1623
    sget v6, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    goto :goto_d

    .line 1624
    :cond_48
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$2300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_49

    .line 1625
    sget p2, Lorg/telegram/messenger/R$string;->PhotoForRestDescription:I

    const-string v0, "PhotoForRestDescription"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 1626
    :cond_49
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$4800(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_4b

    .line 1627
    sget p2, Lorg/telegram/messenger/R$string;->HideReadTimeInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1628
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$4900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    if-ne p2, v3, :cond_4a

    sget p2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    goto :goto_c

    :cond_4a
    sget p2, Lorg/telegram/messenger/R$drawable;->greydivider:I

    :goto_c
    move v6, p2

    goto :goto_d

    .line 1629
    :cond_4b
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$4900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_4c

    .line 1630
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyLastSeenPremiumInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 1631
    sget v6, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    :cond_4c
    :goto_d
    if-eqz v6, :cond_59

    .line 1634
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v6, v0}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1635
    new-instance v0, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v0, v1, p2}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1636
    invoke-virtual {v0, v7}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 1637
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_11

    .line 1481
    :cond_4d
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1482
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 1483
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    const-string v8, "Users"

    const-string v9, "EmpryUsersPlaceholder"

    if-ne p2, v0, :cond_53

    .line 1485
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3800(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eqz p2, :cond_4e

    .line 1486
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3800(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->getUsersCount(Ljava/util/ArrayList;)I

    move-result p2

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v8, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_e

    .line 1488
    :cond_4e
    sget p2, Lorg/telegram/messenger/R$string;->EmpryUsersPlaceholder:I

    invoke-static {v9, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 1491
    :goto_e
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    const-string v5, "AlwaysAllow"

    if-ne v0, v4, :cond_4f

    .line 1492
    sget v0, Lorg/telegram/messenger/R$string;->AlwaysAllow:I

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_11

    .line 1494
    :cond_4f
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq v0, v2, :cond_51

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq v0, v1, :cond_51

    .line 1495
    sget v0, Lorg/telegram/messenger/R$string;->AlwaysAllow:I

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1800(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-eq v1, v3, :cond_50

    move v6, v7

    :cond_50
    invoke-virtual {p1, v0, p2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_11

    .line 1497
    :cond_51
    sget v0, Lorg/telegram/messenger/R$string;->AlwaysShareWith:I

    const-string v1, "AlwaysShareWith"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$1800(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v1

    if-eq v1, v3, :cond_52

    move v6, v7

    :cond_52
    invoke-virtual {p1, v0, p2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_11

    .line 1499
    :cond_53
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$1800(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_56

    .line 1502
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$4000(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eqz p2, :cond_54

    .line 1503
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$4000(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->getUsersCount(Ljava/util/ArrayList;)I

    move-result p2

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v8, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_f

    .line 1505
    :cond_54
    sget p2, Lorg/telegram/messenger/R$string;->EmpryUsersPlaceholder:I

    invoke-static {v9, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 1507
    :goto_f
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq v0, v2, :cond_55

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$3900(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-eq v0, v1, :cond_55

    .line 1508
    sget v0, Lorg/telegram/messenger/R$string;->NeverAllow:I

    const-string v1, "NeverAllow"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_11

    .line 1510
    :cond_55
    sget v0, Lorg/telegram/messenger/R$string;->NeverShareWith:I

    const-string v1, "NeverShareWith"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_11

    .line 1512
    :cond_56
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$2000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_58

    .line 1514
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$4100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p2

    invoke-virtual {p2, v5}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result p2

    if-eqz p2, :cond_57

    .line 1515
    sget p2, Lorg/telegram/messenger/R$string;->Loading:I

    const-string v0, "Loading"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_10

    .line 1517
    :cond_57
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    invoke-static {p2, v5}, Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(Lorg/telegram/messenger/AccountInstance;I)Ljava/lang/String;

    move-result-object p2

    .line 1519
    :goto_10
    sget v0, Lorg/telegram/messenger/R$string;->PrivacyP2P2:I

    const-string v1, "PrivacyP2P2"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_11

    .line 1520
    :cond_58
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$2600(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v0

    if-ne p2, v0, :cond_59

    .line 1521
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyLastSeenPremium:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 1522
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-virtual {p2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    :cond_59
    :goto_11
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 8

    const/4 p1, 0x1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    .line 1397
    :pswitch_0
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 1398
    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1399
    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v1, v2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1400
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    .line 1401
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object p1, p2

    goto/16 :goto_2

    .line 1453
    :pswitch_1
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacyControlActivity;->access$3700(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1454
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 1419
    :pswitch_2
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    new-instance p2, Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3202(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/ui/Components/BackupImageView;)Lorg/telegram/ui/Components/BackupImageView;

    .line 1420
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    new-instance p2, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter$1;

    iget-object v1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, p0, v1}, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;Landroid/content/Context;)V

    invoke-static {p1, p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3302(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/ui/Cells/TextCell;)Lorg/telegram/ui/Cells/TextCell;

    .line 1437
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacyControlActivity;->access$3000(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1438
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacyControlActivity;->access$3400(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object p1

    const/4 p2, 0x0

    const-string v1, "50_50"

    if-eqz p1, :cond_0

    .line 1439
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacyControlActivity;->access$3200(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3000(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$3400(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$3500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-virtual {p1, v2, v1, p2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    goto :goto_0

    .line 1441
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacyControlActivity;->access$3200(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3000(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForLocal(Lorg/telegram/tgnet/TLRPC$FileLocation;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$3600(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-virtual {p1, v2, v1, p2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 1444
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacyControlActivity;->access$3300(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Cells/TextCell;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3200(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p2

    const/16 v1, 0x1e

    const/16 v2, 0x1e

    const/16 v3, 0x10

    const/16 v4, 0x15

    const/4 v5, 0x0

    const/16 v6, 0x15

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1445
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacyControlActivity;->access$3300(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Cells/TextCell;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->RemovePublicPhoto:I

    const-string v1, "RemovePublicPhoto"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/TextCell;->setText(Ljava/lang/String;Z)V

    .line 1446
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacyControlActivity;->access$3300(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Cells/TextCell;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCell;->getImageView()Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1447
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacyControlActivity;->access$3300(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Cells/TextCell;

    move-result-object p1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1448
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacyControlActivity;->access$3300(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Cells/TextCell;

    move-result-object p1

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 1449
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacyControlActivity;->access$3300(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Cells/TextCell;

    move-result-object p1

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1450
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacyControlActivity;->access$3300(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Cells/TextCell;

    move-result-object p1

    goto/16 :goto_2

    .line 1404
    :pswitch_3
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    new-instance v1, Lorg/telegram/ui/Cells/TextCell;

    iget-object v2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v1}, Lorg/telegram/ui/PrivacyControlActivity;->access$2902(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/ui/Cells/TextCell;)Lorg/telegram/ui/Cells/TextCell;

    .line 1405
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3000(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p2

    if-nez p2, :cond_2

    .line 1406
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacyControlActivity;->access$2900(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Cells/TextCell;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->SetPhotoForRest:I

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SetPhotoForRest"

    invoke-static {v2, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_addphoto:I

    invoke-virtual {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    goto :goto_1

    .line 1408
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$2900(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Cells/TextCell;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/R$string;->UpdatePhotoForRest:I

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "UpdatePhotoForRest"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_addphoto:I

    invoke-virtual {p2, v1, v2, p1}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;IZ)V

    .line 1410
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacyControlActivity;->access$2900(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Cells/TextCell;

    move-result-object p1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1411
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacyControlActivity;->access$2900(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Cells/TextCell;

    move-result-object p1

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 1412
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    new-instance p2, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v1, Lorg/telegram/messenger/R$raw;->camera_outline:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x32

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    invoke-static {p1, p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3102(Lorg/telegram/ui/PrivacyControlActivity;Lorg/telegram/ui/Components/RLottieDrawable;)Lorg/telegram/ui/Components/RLottieDrawable;

    .line 1413
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacyControlActivity;->access$2900(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Cells/TextCell;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 p2, 0x8

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1414
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacyControlActivity;->access$2900(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Cells/TextCell;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Cells/TextCell;->imageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacyControlActivity;->access$3100(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 1415
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacyControlActivity;->access$2900(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Cells/TextCell;

    move-result-object p1

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1416
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacyControlActivity;->access$2900(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/Cells/TextCell;

    move-result-object p1

    goto :goto_2

    .line 1393
    :pswitch_4
    iget-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacyControlActivity;->access$2800(Lorg/telegram/ui/PrivacyControlActivity;)Lorg/telegram/ui/PrivacyControlActivity$MessageCell;

    move-result-object p1

    goto :goto_2

    .line 1389
    :pswitch_5
    new-instance p1, Lorg/telegram/ui/Cells/RadioCell;

    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/RadioCell;-><init>(Landroid/content/Context;)V

    .line 1390
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    .line 1385
    :pswitch_6
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 1386
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    .line 1382
    :pswitch_7
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_2

    .line 1378
    :pswitch_8
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/PrivacyControlActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 1379
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1458
    :goto_2
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
