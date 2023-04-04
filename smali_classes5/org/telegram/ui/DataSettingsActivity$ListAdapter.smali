.class Lorg/telegram/ui/DataSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "DataSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DataSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/DataSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/DataSettingsActivity;Landroid/content/Context;)V
    .locals 0

    .line 741
    iput-object p1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 742
    iput-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 747
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1071
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$4900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$5000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$5100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$5200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$5300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$5400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$5500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto/16 :goto_4

    .line 1073
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$1900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto/16 :goto_3

    .line 1075
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_2

    .line 1077
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    return p1

    .line 1079
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$4000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$4300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$4800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 1081
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$1000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$1200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    return p1

    :cond_6
    :goto_0
    const/4 p1, 0x6

    return p1

    :cond_7
    :goto_1
    const/4 p1, 0x5

    return p1

    :cond_8
    :goto_2
    const/4 p1, 0x3

    return p1

    :cond_9
    :goto_3
    const/4 p1, 0x2

    return p1

    :cond_a
    :goto_4
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 1029
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->isRowEnabled(I)Z

    move-result p1

    return p1
.end method

.method public isRowEnabled(I)Z
    .locals 2

    .line 1018
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto/16 :goto_0

    .line 1022
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$4000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$4800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$4300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$1400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$1000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$1600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$1800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    .line 1023
    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$2800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$1700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    .line 1024
    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$1200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$3800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 753
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 754
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 755
    sget v2, Lorg/telegram/messenger/R$string;->backup_settings_header:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 756
    :cond_0
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_2

    .line 757
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 758
    sget v2, Lorg/telegram/messenger/R$string;->backup_settings_save_auto:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    .line 759
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lcom/iMe/fork/controller/BackupController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/fork/controller/BackupController;->isAutoBackupEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 760
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBackupController()Lcom/iMe/fork/controller/BackupController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/fork/controller/BackupController;->getSelectedAutoBackupInterval()Lcom/iMe/fork/enums/Interval;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/fork/enums/Interval;->getNameResId()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4, v4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_12

    .line 762
    :cond_1
    sget v3, Lorg/telegram/messenger/R$string;->backup_settings_disabled:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5, v4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_12

    .line 764
    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    const-string v6, "windowBackgroundWhiteBlackText"

    if-ne v2, v3, :cond_3

    .line 765
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 766
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setCanDisable(Z)V

    .line 767
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 768
    sget v2, Lorg/telegram/messenger/R$string;->backup_settings_save_manually:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_12

    .line 770
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/4 v7, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_12

    .line 780
    :pswitch_0
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCell;

    .line 781
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 782
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$700(Lorg/telegram/ui/DataSettingsActivity;)Z

    move-result v2

    const/16 v3, 0x2d

    const-string v6, "color_lightblue"

    const-string v7, "StorageUsage"

    if-eqz v2, :cond_4

    .line 783
    sget v2, Lorg/telegram/messenger/R$string;->StorageUsage:I

    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_filled_storageusage:I

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    const-string v11, ""

    move-object v9, v1

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndColorfulIcon(Ljava/lang/String;Ljava/lang/CharSequence;ZIIZ)V

    .line 784
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$800(Lorg/telegram/ui/DataSettingsActivity;)Z

    move-result v2

    invoke-virtual {v1, v4, v3, v2}, Lorg/telegram/ui/Cells/TextCell;->setDrawLoading(ZIZ)V

    goto :goto_1

    .line 786
    :cond_4
    sget v2, Lorg/telegram/messenger/R$string;->StorageUsage:I

    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$900(Lorg/telegram/ui/DataSettingsActivity;)J

    move-result-wide v7

    const-wide/16 v11, 0x0

    cmp-long v2, v7, v11

    if-gtz v2, :cond_5

    const-string v2, ""

    goto :goto_0

    :cond_5
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$900(Lorg/telegram/ui/DataSettingsActivity;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v11, v2

    const/4 v12, 0x1

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_filled_storageusage:I

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x1

    move-object v9, v1

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndColorfulIcon(Ljava/lang/String;Ljava/lang/CharSequence;ZIIZ)V

    .line 787
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$800(Lorg/telegram/ui/DataSettingsActivity;)Z

    move-result v2

    invoke-virtual {v1, v5, v3, v2}, Lorg/telegram/ui/Cells/TextCell;->setDrawLoading(ZIZ)V

    .line 789
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/DataSettingsActivity;->access$802(Lorg/telegram/ui/DataSettingsActivity;Z)Z

    goto/16 :goto_12

    .line 790
    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 791
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$1100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v2

    const/4 v3, 0x6

    .line 793
    invoke-virtual {v2, v5, v3}, Lorg/telegram/messenger/StatsController;->getReceivedBytesCount(II)J

    move-result-wide v9

    .line 794
    invoke-virtual {v2, v4, v3}, Lorg/telegram/messenger/StatsController;->getReceivedBytesCount(II)J

    move-result-wide v11

    add-long/2addr v9, v11

    .line 795
    invoke-virtual {v2, v8, v3}, Lorg/telegram/messenger/StatsController;->getReceivedBytesCount(II)J

    move-result-wide v11

    add-long/2addr v9, v11

    .line 796
    invoke-virtual {v2, v5, v3}, Lorg/telegram/messenger/StatsController;->getSentBytesCount(II)J

    move-result-wide v11

    add-long/2addr v9, v11

    .line 797
    invoke-virtual {v2, v4, v3}, Lorg/telegram/messenger/StatsController;->getSentBytesCount(II)J

    move-result-wide v11

    add-long/2addr v9, v11

    .line 798
    invoke-virtual {v2, v8, v3}, Lorg/telegram/messenger/StatsController;->getSentBytesCount(II)J

    move-result-wide v2

    add-long/2addr v9, v2

    .line 800
    sget v2, Lorg/telegram/messenger/R$string;->NetworkUsage:I

    const-string v3, "NetworkUsage"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v10}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_filled_datausage:I

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    const-string v6, "color_green"

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v14

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-eq v3, v7, :cond_7

    move v15, v4

    goto :goto_2

    :cond_7
    move v15, v5

    :goto_2
    move-object v9, v1

    move-object v10, v2

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndColorfulIcon(Ljava/lang/String;Ljava/lang/CharSequence;ZIIZ)V

    goto/16 :goto_12

    .line 801
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_36

    .line 802
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$1300(Lorg/telegram/ui/DataSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 803
    sget-object v3, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 804
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1300(Lorg/telegram/ui/DataSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_3
    if-ge v5, v3, :cond_a

    .line 805
    iget-object v6, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$1300(Lorg/telegram/ui/DataSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 806
    sget-object v7, Lorg/telegram/messenger/SharedConfig;->storageCacheDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    move-object v2, v6

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    if-eqz v2, :cond_c

    const-string v3, "/storage/emulated/"

    .line 812
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_5

    :cond_b
    sget v2, Lorg/telegram/messenger/R$string;->SdCard:I

    const-string v3, "SdCard"

    goto :goto_6

    :cond_c
    :goto_5
    sget v2, Lorg/telegram/messenger/R$string;->InternalStorage:I

    const-string v3, "InternalStorage"

    :goto_6
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    .line 813
    sget v2, Lorg/telegram/messenger/R$string;->StoragePath:I

    const-string v3, "StoragePath"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x1

    sget v13, Lorg/telegram/messenger/R$drawable;->msg_filled_sdcard:I

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    const-string v3, "color_yellow"

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x0

    move-object v9, v1

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndColorfulIcon(Ljava/lang/String;Ljava/lang/CharSequence;ZIIZ)V

    .line 814
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextCell;->setNeedDivider(Z)V

    goto/16 :goto_12

    .line 907
    :pswitch_1
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v10, v1

    check-cast v10, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 913
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$3400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_d

    .line 914
    sget v1, Lorg/telegram/messenger/R$string;->SaveToGalleryPrivate:I

    const-string v2, "SaveToGalleryPrivate"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 915
    sget-object v2, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->user:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$3500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;->createDescription(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 916
    sget-object v3, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->user:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    invoke-virtual {v3}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->enabled()Z

    move-result v3

    :goto_7
    move-object v11, v1

    move/from16 v16, v4

    goto/16 :goto_b

    .line 917
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$3600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_e

    .line 918
    sget v1, Lorg/telegram/messenger/R$string;->SaveToGalleryGroups:I

    const-string v2, "SaveToGalleryGroups"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 919
    sget-object v2, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->groups:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$3700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;->createDescription(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 920
    sget-object v3, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->groups:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    invoke-virtual {v3}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->enabled()Z

    move-result v3

    goto :goto_7

    .line 921
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$3800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_f

    .line 922
    sget v1, Lorg/telegram/messenger/R$string;->SaveToGalleryChannels:I

    const-string v2, "SaveToGalleryChannels"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 923
    sget-object v2, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->channels:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$3900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;->createDescription(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 924
    sget-object v3, Lorg/telegram/messenger/SaveToGallerySettingsHelper;->channels:Lorg/telegram/messenger/SaveToGallerySettingsHelper$SharedSettings;

    invoke-virtual {v3}, Lorg/telegram/messenger/SaveToGallerySettingsHelper$Settings;->enabled()Z

    move-result v3

    move-object v11, v1

    move/from16 v16, v5

    goto/16 :goto_b

    .line 926
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$4000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_10

    .line 927
    sget v1, Lorg/telegram/messenger/R$string;->WhenUsingMobileData:I

    const-string v2, "WhenUsingMobileData"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 928
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$4100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController;->mobilePreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean v3, v2, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    .line 929
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$4200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/DownloadController;->getCurrentMobilePreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v2

    :goto_8
    move-object v11, v1

    move/from16 v16, v4

    :goto_9
    move-object/from16 v18, v9

    move-object v9, v2

    move-object/from16 v2, v18

    goto :goto_b

    .line 930
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$4300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_11

    .line 931
    sget v1, Lorg/telegram/messenger/R$string;->WhenConnectedOnWiFi:I

    const-string v2, "WhenConnectedOnWiFi"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 932
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$4400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController;->wifiPreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean v3, v2, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    .line 933
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$4500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/DownloadController;->getCurrentWiFiPreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v2

    goto :goto_8

    .line 935
    :cond_11
    sget v1, Lorg/telegram/messenger/R$string;->WhenRoaming:I

    const-string v2, "WhenRoaming"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 936
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$4600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/DownloadController;->roamingPreset:Lorg/telegram/messenger/DownloadController$Preset;

    iget-boolean v3, v2, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    .line 937
    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DataSettingsActivity;->access$4700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/DownloadController;->getCurrentRoamingPreset()Lorg/telegram/messenger/DownloadController$Preset;

    move-result-object v2

    .line 938
    iget-object v6, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-ltz v6, :cond_12

    move v6, v4

    goto :goto_a

    :cond_12
    move v6, v5

    :goto_a
    move-object v11, v1

    move/from16 v16, v6

    goto :goto_9

    :goto_b
    if-eqz v9, :cond_1f

    .line 942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v5

    move v6, v2

    move v7, v6

    move v8, v7

    move v12, v8

    .line 947
    :goto_c
    iget-object v13, v9, Lorg/telegram/messenger/DownloadController$Preset;->mask:[I

    array-length v14, v13

    const/16 v15, 0x8

    const/16 v17, 0x4

    if-ge v2, v14, :cond_16

    if-nez v6, :cond_13

    .line 948
    aget v14, v13, v2

    and-int/2addr v14, v4

    if-eqz v14, :cond_13

    add-int/lit8 v7, v7, 0x1

    move v6, v4

    :cond_13
    if-nez v8, :cond_14

    .line 952
    aget v14, v13, v2

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_14

    add-int/lit8 v7, v7, 0x1

    move v8, v4

    :cond_14
    if-nez v12, :cond_15

    .line 956
    aget v13, v13, v2

    and-int/2addr v13, v15

    if-eqz v13, :cond_15

    add-int/lit8 v7, v7, 0x1

    move v12, v4

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 961
    :cond_16
    iget-boolean v2, v9, Lorg/telegram/messenger/DownloadController$Preset;->enabled:Z

    if-eqz v2, :cond_1b

    if-eqz v7, :cond_1b

    if-eqz v6, :cond_17

    .line 963
    sget v2, Lorg/telegram/messenger/R$string;->AutoDownloadPhotosOn:I

    const-string v7, "AutoDownloadPhotosOn"

    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const-string v2, ", "

    const-string v7, " (%1$s)"

    if-eqz v8, :cond_19

    .line 966
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_18

    .line 967
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    :cond_18
    sget v13, Lorg/telegram/messenger/R$string;->AutoDownloadVideosOn:I

    const-string v14, "AutoDownloadVideosOn"

    invoke-static {v14, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v13, v4, [Ljava/lang/Object;

    .line 970
    iget-object v14, v9, Lorg/telegram/messenger/DownloadController$Preset;->sizes:[J

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/DownloadController;->typeToIndex(I)I

    move-result v17

    move-object/from16 p1, v10

    move-object/from16 p2, v11

    aget-wide v10, v14, v17

    invoke-static {v10, v11, v4}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(JZ)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v13, v5

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_19
    move-object/from16 p1, v10

    move-object/from16 p2, v11

    :goto_d
    if-eqz v12, :cond_1c

    .line 973
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_1a

    .line 974
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    :cond_1a
    sget v2, Lorg/telegram/messenger/R$string;->AutoDownloadFilesOn:I

    const-string v10, "AutoDownloadFilesOn"

    invoke-static {v10, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v4, [Ljava/lang/Object;

    .line 977
    iget-object v9, v9, Lorg/telegram/messenger/DownloadController$Preset;->sizes:[J

    invoke-static {v15}, Lorg/telegram/messenger/DownloadController;->typeToIndex(I)I

    move-result v10

    aget-wide v10, v9, v10

    invoke-static {v10, v11, v4}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(JZ)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v5

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_1b
    move-object/from16 p1, v10

    move-object/from16 p2, v11

    .line 980
    sget v2, Lorg/telegram/messenger/R$string;->NoMediaAutoDownload:I

    const-string v7, "NoMediaAutoDownload"

    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    :goto_e
    if-nez v6, :cond_1d

    if-nez v8, :cond_1d

    if-eqz v12, :cond_1e

    :cond_1d
    if-eqz v3, :cond_1e

    move v5, v4

    :cond_1e
    move-object v12, v1

    move v13, v5

    move-object/from16 v1, p1

    goto :goto_f

    :cond_1f
    move-object/from16 p2, v11

    move-object v12, v2

    move v13, v3

    move-object v1, v10

    .line 987
    :goto_f
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setAnimationsEnabled(Z)V

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v10, v1

    move-object/from16 v11, p2

    .line 988
    invoke-virtual/range {v10 .. v16}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZIZZ)V

    goto/16 :goto_12

    .line 900
    :pswitch_2
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 901
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$3300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_36

    .line 902
    sget v2, Lorg/telegram/messenger/R$string;->EnableAllStreamingInfo:I

    const-string v3, "EnableAllStreamingInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 879
    :pswitch_3
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 881
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$2600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_20

    .line 882
    sget v2, Lorg/telegram/messenger/R$string;->message_document_file_save_original_name:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->isFilesOriginalNameSavingEnabled:Z

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_12

    .line 884
    :cond_20
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$2700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_22

    .line 885
    sget v2, Lorg/telegram/messenger/R$string;->EnableStreaming:I

    const-string v3, "EnableStreaming"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    iget-object v6, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DataSettingsActivity;->access$2800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v6

    if-eq v6, v7, :cond_21

    goto :goto_10

    :cond_21
    move v4, v5

    :goto_10
    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_12

    .line 886
    :cond_22
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$2900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_23

    goto/16 :goto_12

    .line 888
    :cond_23
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$3000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_24

    .line 889
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    const-string v3, "(beta only) Show MKV as Video"

    invoke-virtual {v1, v3, v2, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_12

    .line 890
    :cond_24
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$2800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_25

    .line 891
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    const-string v3, "(beta only) Stream All Videos"

    invoke-virtual {v1, v3, v2, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_12

    .line 892
    :cond_25
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$3100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_26

    .line 893
    sget v2, Lorg/telegram/messenger/R$string;->AutoplayGIF:I

    const-string v3, "AutoplayGIF"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayGifs()Z

    move-result v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_12

    .line 894
    :cond_26
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$3200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_36

    .line 895
    sget v2, Lorg/telegram/messenger/R$string;->AutoplayVideo:I

    const-string v3, "AutoplayVideo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayVideo()Z

    move-result v3

    invoke-virtual {v1, v2, v3, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_12

    .line 860
    :pswitch_4
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 861
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_27

    .line 862
    sget v2, Lorg/telegram/messenger/R$string;->AutomaticMediaDownload:I

    const-string v3, "AutomaticMediaDownload"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 863
    :cond_27
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$2000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_28

    .line 864
    sget v2, Lorg/telegram/messenger/R$string;->DataUsage:I

    const-string v3, "DataUsage"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 865
    :cond_28
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$2100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_29

    .line 866
    sget v2, Lorg/telegram/messenger/R$string;->Calls:I

    const-string v3, "Calls"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 867
    :cond_29
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$2200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2a

    .line 868
    sget v2, Lorg/telegram/messenger/R$string;->Proxy:I

    const-string v3, "Proxy"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 869
    :cond_2a
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$2300(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2b

    .line 870
    sget v2, Lorg/telegram/messenger/R$string;->Streaming:I

    const-string v3, "Streaming"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 871
    :cond_2b
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$2400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2c

    .line 872
    sget v2, Lorg/telegram/messenger/R$string;->AutoplayMedia:I

    const-string v3, "AutoplayMedia"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 873
    :cond_2c
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$2500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_36

    .line 874
    sget v2, Lorg/telegram/messenger/R$string;->SaveToGallerySettings:I

    const-string v3, "SaveToGallerySettings"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12

    .line 819
    :pswitch_5
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 820
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setCanDisable(Z)V

    .line 821
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 822
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1400(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_31

    .line 823
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setIcon(I)V

    .line 824
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 826
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getDataSavingDefault()I

    move-result v3

    const-string v6, "VoipDataSaving"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_30

    if-eq v2, v4, :cond_2f

    if-eq v2, v8, :cond_2e

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2d

    goto :goto_11

    .line 834
    :cond_2d
    sget v2, Lorg/telegram/messenger/R$string;->UseLessDataOnRoaming:I

    const-string v3, "UseLessDataOnRoaming"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_11

    .line 837
    :cond_2e
    sget v2, Lorg/telegram/messenger/R$string;->UseLessDataAlways:I

    const-string v3, "UseLessDataAlways"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_11

    .line 831
    :cond_2f
    sget v2, Lorg/telegram/messenger/R$string;->UseLessDataOnMobile:I

    const-string v3, "UseLessDataOnMobile"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_11

    .line 828
    :cond_30
    sget v2, Lorg/telegram/messenger/R$string;->UseLessDataNever:I

    const-string v3, "UseLessDataNever"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 840
    :goto_11
    sget v2, Lorg/telegram/messenger/R$string;->VoipUseLessData:I

    const-string v3, "VoipUseLessData"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1500(Lorg/telegram/ui/DataSettingsActivity;)Z

    move-result v3

    invoke-virtual {v1, v2, v9, v3, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 841
    iget-object v1, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/DataSettingsActivity;->access$1502(Lorg/telegram/ui/DataSettingsActivity;Z)Z

    goto/16 :goto_12

    .line 842
    :cond_31
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1600(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_32

    .line 843
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setIcon(I)V

    .line 844
    sget v2, Lorg/telegram/messenger/R$string;->ProxySettings:I

    const-string v3, "ProxySettings"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_12

    .line 845
    :cond_32
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_33

    .line 846
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setIcon(I)V

    .line 847
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setCanDisable(Z)V

    const-string v2, "windowBackgroundWhiteRedText"

    .line 848
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 849
    sget v2, Lorg/telegram/messenger/R$string;->ResetAutomaticMediaDownload:I

    const-string v3, "ResetAutomaticMediaDownload"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_12

    .line 850
    :cond_33
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_34

    .line 851
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setIcon(I)V

    .line 852
    sget v2, Lorg/telegram/messenger/R$string;->VoipQuickReplies:I

    const-string v3, "VoipQuickReplies"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_12

    .line 853
    :cond_34
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$1800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_36

    .line 854
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setIcon(I)V

    .line 855
    sget v2, Lorg/telegram/messenger/R$string;->PrivacyDeleteCloudDrafts:I

    const-string v3, "PrivacyDeleteCloudDrafts"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_12

    .line 772
    :pswitch_6
    iget-object v3, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DataSettingsActivity;->access$500(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v3

    const-string v4, "windowBackgroundGrayShadow"

    if-ne v2, v3, :cond_35

    .line 773
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_12

    .line 775
    :cond_35
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, v0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_36
    :goto_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-eqz p2, :cond_5

    const/4 p1, 0x1

    const-string v0, "windowBackgroundWhite"

    if-eq p2, p1, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    .line 1061
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 1062
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1056
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;)V

    .line 1057
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1052
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 1053
    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    const-string v1, "windowBackgroundGrayShadow"

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1048
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 1049
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1044
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x16

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;I)V

    .line 1045
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1040
    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 1041
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1037
    :cond_5
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 1065
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1066
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 996
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 998
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 999
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 1000
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$2900(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 1001
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->saveStreamMedia:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_0

    .line 1002
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$2700(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1003
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_0

    .line 1004
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$2800(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 1005
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->streamAllVideo:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_0

    .line 1006
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$3000(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 1007
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->streamMkv:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_0

    .line 1008
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$3100(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 1009
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayGifs()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_0

    .line 1010
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/DataSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/DataSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DataSettingsActivity;->access$3200(Lorg/telegram/ui/DataSettingsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 1011
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->isAutoplayVideo()Z

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    :cond_5
    :goto_0
    return-void
.end method
