.class Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "PrivacySettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PrivacySettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PrivacySettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PrivacySettingsActivity;Landroid/content/Context;)V
    .locals 0

    .line 934
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 935
    iput-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 958
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1273
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 1274
    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 1275
    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto/16 :goto_4

    .line 1277
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto/16 :goto_3

    .line 1279
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto/16 :goto_2

    .line 1281
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 1283
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    const/4 p1, 0x4

    return p1

    .line 1285
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    const/4 p1, 0x5

    return p1

    :cond_7
    :goto_1
    const/4 p1, 0x3

    return p1

    :cond_8
    :goto_2
    const/4 p1, 0x2

    return p1

    :cond_9
    :goto_3
    const/4 p1, 0x1

    return p1

    :cond_a
    :goto_4
    return v1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .line 940
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 941
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 942
    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$900(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 943
    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1100(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 944
    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1300(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 945
    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1500(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 946
    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1700(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 947
    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1900(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 948
    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2100(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 949
    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2300(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 950
    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2500(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->getLoadingDeleteInfo()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 951
    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2700(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->getLoadingGlobalSettings()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 952
    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 953
    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_b

    :cond_a
    move v1, v2

    :cond_b
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .line 994
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_2d

    if-eq v0, v6, :cond_24

    if-eq v0, v4, :cond_1d

    const/4 v4, 0x3

    if-eq v0, v4, :cond_18

    if-eq v0, v3, :cond_0

    goto/16 :goto_21

    .line 1177
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v3, v0

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 1178
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v5

    .line 1179
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1183
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/TextCell;->setPrioritizeTitleOverValue(Z)V

    .line 1185
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result p1

    const-string v4, "PasswordOn"

    const-string v7, "PasswordOff"

    if-eq p2, p1, :cond_13

    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result p1

    if-ne p2, p1, :cond_2

    goto/16 :goto_b

    .line 1192
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result p1

    const/4 v8, -0x1

    if-ne p2, p1, :cond_5

    .line 1193
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getGlobalTTl()I

    move-result p1

    if-ne p1, v8, :cond_3

    move-object v9, v2

    move v5, v6

    goto :goto_2

    :cond_3
    if-lez p1, :cond_4

    mul-int/lit8 p1, p1, 0x3c

    .line 1197
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1199
    :cond_4
    sget p1, Lorg/telegram/messenger/R$string;->PasswordOff:I

    invoke-static {v7, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v9, v2

    .line 1201
    :goto_2
    sget p1, Lorg/telegram/messenger/R$string;->AutoDeleteMessages:I

    const-string p2, "AutoDeleteMessages"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_autodelete:I

    const/4 v12, 0x1

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    goto/16 :goto_f

    .line 1202
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result p1

    const-string v2, "%d"

    const-string v9, ""

    if-ne p2, p1, :cond_8

    .line 1204
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    iget-object p1, p1, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsActivityPreload:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/SessionsActivity;->getSessionsCount()I

    move-result p1

    if-nez p1, :cond_7

    .line 1205
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->lastKnownSessionsCount:I

    if-nez p1, :cond_6

    move v5, v6

    goto :goto_4

    .line 1208
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->lastKnownSessionsCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p2, v5

    invoke-static {p1, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 1211
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    iget-object v4, v4, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsActivityPreload:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/SessionsActivity;->getSessionsCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p2, v5

    invoke-static {p1, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    move-object v9, p1

    .line 1213
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    iget-object p2, p2, Lorg/telegram/ui/PrivacySettingsActivity;->sessionsActivityPreload:Lorg/telegram/ui/SessionsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/SessionsActivity;->getSessionsCount()I

    move-result p2

    iput p2, p1, Lorg/telegram/messenger/MessagesController;->lastKnownSessionsCount:I

    .line 1214
    sget p1, Lorg/telegram/messenger/R$string;->SessionsTitle:I

    const-string p2, "SessionsTitle"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_devices:I

    const/4 v12, 0x0

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    goto/16 :goto_f

    .line 1215
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result p1

    if-ne p2, p1, :cond_b

    .line 1217
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6600(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object p1

    if-nez p1, :cond_9

    move v5, v6

    goto :goto_5

    .line 1220
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6600(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->login_email_pattern:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    .line 1221
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6600(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->login_email_pattern:Ljava/lang/String;

    const/16 p2, 0x2a

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    .line 1222
    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6600(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$account_Password;->login_email_pattern:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    if-eq p1, p2, :cond_a

    if-eq p1, v8, :cond_a

    if-eq p2, v8, :cond_a

    .line 1224
    new-instance v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v2}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 1225
    iget v4, v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 1226
    iput p1, v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    add-int/2addr p2, v6

    .line 1227
    iput p2, v2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    .line 1228
    new-instance v4, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v4, v2}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-virtual {v9, v4, p1, p2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1232
    :cond_a
    :goto_5
    invoke-virtual {v3, v6}, Lorg/telegram/ui/Cells/TextCell;->setPrioritizeTitleOverValue(Z)V

    .line 1233
    sget p1, Lorg/telegram/messenger/R$string;->EmailLogin:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg2_email:I

    invoke-virtual {v3, p1, v9, p2, v6}, Lorg/telegram/ui/Cells/TextCell;->setTextAndSpoilersValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_f

    .line 1234
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result p1

    if-ne p2, p1, :cond_e

    .line 1236
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6600(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object p1

    if-nez p1, :cond_c

    move v5, v6

    goto :goto_7

    .line 1238
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6600(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$account_Password;->has_password:Z

    if-eqz p1, :cond_d

    .line 1239
    sget p1, Lorg/telegram/messenger/R$string;->PasswordOn:I

    invoke-static {v4, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    .line 1241
    :cond_d
    sget p1, Lorg/telegram/messenger/R$string;->PasswordOff:I

    invoke-static {v7, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_6
    move-object v9, p1

    .line 1243
    :goto_7
    sget p1, Lorg/telegram/messenger/R$string;->TwoStepVerification:I

    const-string p2, "TwoStepVerification"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_permissions:I

    const/4 v12, 0x1

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    goto/16 :goto_f

    .line 1244
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result p1

    if-ne p2, p1, :cond_10

    .line 1246
    sget-object p1, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_f

    .line 1247
    sget p1, Lorg/telegram/messenger/R$string;->PasswordOn:I

    invoke-static {v4, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1248
    sget p2, Lorg/telegram/messenger/R$drawable;->msg2_secret:I

    goto :goto_8

    .line 1250
    :cond_f
    sget p1, Lorg/telegram/messenger/R$string;->PasswordOff:I

    invoke-static {v7, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1251
    sget p2, Lorg/telegram/messenger/R$drawable;->msg2_secret:I

    :goto_8
    move-object v9, p1

    move v11, p2

    .line 1253
    sget p1, Lorg/telegram/messenger/R$string;->Passcode:I

    const-string p2, "Passcode"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v12, 0x1

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    goto/16 :goto_f

    .line 1254
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result p1

    if-ne p2, p1, :cond_17

    .line 1255
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/MessagesController;->totalBlockedCount:I

    if-nez p1, :cond_11

    .line 1257
    sget p1, Lorg/telegram/messenger/R$string;->BlockedEmpty:I

    const-string p2, "BlockedEmpty"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_9
    move-object v9, p1

    goto :goto_a

    :cond_11
    if-lez p1, :cond_12

    .line 1259
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object p2

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-static {p2, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_12
    move v5, v6

    .line 1264
    :goto_a
    sget p1, Lorg/telegram/messenger/R$string;->BlockedUsers:I

    const-string p2, "BlockedUsers"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    sget v11, Lorg/telegram/messenger/R$drawable;->msg2_block2:I

    const/4 v12, 0x1

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    goto :goto_f

    .line 1186
    :cond_13
    :goto_b
    iget-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result p1

    if-ne p2, p1, :cond_14

    goto :goto_c

    :cond_14
    move v6, v5

    :goto_c
    if-eqz v6, :cond_15

    .line 1187
    sget-object p1, Lcom/iMe/fork/enums/LockedSection;->CLOUD:Lcom/iMe/fork/enums/LockedSection;

    goto :goto_d

    :cond_15
    sget-object p1, Lcom/iMe/fork/enums/LockedSection;->ARCHIVE:Lcom/iMe/fork/enums/LockedSection;

    .line 1188
    :goto_d
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/iMe/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lcom/iMe/fork/enums/LockedSection;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 1189
    invoke-virtual {p2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_16

    sget p2, Lorg/telegram/messenger/R$string;->PasswordOn:I

    invoke-static {v4, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_e

    :cond_16
    sget p2, Lorg/telegram/messenger/R$string;->PasswordOff:I

    invoke-static {v7, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    :goto_e
    move-object v9, p2

    .line 1190
    invoke-virtual {p1}, Lcom/iMe/fork/enums/LockedSection;->getNameResId()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {p1}, Lcom/iMe/fork/enums/LockedSection;->getIconResId()I

    move-result v11

    const/4 v12, 0x1

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    .line 1266
    :cond_17
    :goto_f
    invoke-virtual {v3, v5, v1, v0}, Lorg/telegram/ui/Cells/TextCell;->setDrawLoading(ZIZ)V

    goto/16 :goto_21

    .line 1165
    :cond_18
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1166
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1a

    .line 1167
    sget p2, Lorg/telegram/messenger/R$string;->SecretWebPage:I

    const-string v0, "SecretWebPage"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    if-ne v0, v6, :cond_19

    goto :goto_10

    :cond_19
    move v6, v5

    :goto_10
    invoke-virtual {p1, p2, v6, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_21

    .line 1168
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1b

    .line 1169
    sget p2, Lorg/telegram/messenger/R$string;->SyncContacts:I

    const-string v0, "SyncContacts"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6300(Lorg/telegram/ui/PrivacySettingsActivity;)Z

    move-result v0

    invoke-virtual {p1, p2, v0, v6}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_21

    .line 1170
    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1c

    .line 1171
    sget p2, Lorg/telegram/messenger/R$string;->SuggestContacts:I

    const-string v0, "SuggestContacts"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6400(Lorg/telegram/ui/PrivacySettingsActivity;)Z

    move-result v0

    invoke-virtual {p1, p2, v0, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_21

    .line 1172
    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_4d

    .line 1173
    sget p2, Lorg/telegram/messenger/R$string;->ArchiveAndMute:I

    const-string v0, "ArchiveAndMute"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6500(Lorg/telegram/ui/PrivacySettingsActivity;)Z

    move-result v0

    invoke-virtual {p1, p2, v0, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_21

    .line 1147
    :cond_1d
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 1148
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1e

    .line 1149
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyTitle:I

    const-string v0, "PrivacyTitle"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_21

    .line 1150
    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1f

    .line 1151
    sget p2, Lorg/telegram/messenger/R$string;->SecurityTitle:I

    const-string v0, "SecurityTitle"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_21

    .line 1152
    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_20

    .line 1153
    sget p2, Lorg/telegram/messenger/R$string;->DeleteMyAccount:I

    const-string v0, "DeleteMyAccount"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_21

    .line 1154
    :cond_20
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_21

    .line 1155
    sget p2, Lorg/telegram/messenger/R$string;->SecretChat:I

    const-string v0, "SecretChat"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_21

    .line 1156
    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_22

    .line 1157
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyBots:I

    const-string v0, "PrivacyBots"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_21

    .line 1158
    :cond_22
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_23

    .line 1159
    sget p2, Lorg/telegram/messenger/R$string;->Contacts:I

    const-string v0, "Contacts"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_21

    .line 1160
    :cond_23
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_4d

    .line 1161
    sget p2, Lorg/telegram/messenger/R$string;->NewChatsFromNonContacts:I

    const-string v0, "NewChatsFromNonContacts"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_21

    .line 1122
    :cond_24
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1123
    invoke-virtual {p0}, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v6

    if-ne p2, v0, :cond_25

    move v5, v6

    .line 1124
    :cond_25
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_26

    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    goto :goto_11

    :cond_26
    sget v1, Lorg/telegram/messenger/R$drawable;->greydivider:I

    :goto_11
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1125
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_27

    .line 1126
    sget p2, Lorg/telegram/messenger/R$string;->DeleteAccountHelp:I

    const-string v0, "DeleteAccountHelp"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_21

    .line 1127
    :cond_27
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_28

    .line 1128
    sget p2, Lorg/telegram/messenger/R$string;->GroupsAndChannelsHelp:I

    const-string v0, "GroupsAndChannelsHelp"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_21

    .line 1129
    :cond_28
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_29

    .line 1130
    sget p2, Lorg/telegram/messenger/R$string;->SessionsSettingsInfo:I

    const-string v0, "SessionsSettingsInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_21

    .line 1131
    :cond_29
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2a

    .line 1132
    sget p2, Lorg/telegram/messenger/R$string;->SecretWebPageInfo:I

    const-string v0, "SecretWebPageInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_21

    .line 1133
    :cond_2a
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2b

    .line 1134
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyBotsInfo:I

    const-string v0, "PrivacyBotsInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_21

    .line 1135
    :cond_2b
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2c

    .line 1141
    sget p2, Lorg/telegram/messenger/R$string;->SuggestContactsInfo:I

    const-string v0, "SuggestContactsInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_21

    .line 1142
    :cond_2c
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_4d

    .line 1143
    sget p2, Lorg/telegram/messenger/R$string;->ArchiveAndMuteInfo:I

    const-string v0, "ArchiveAndMuteInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_21

    .line 999
    :cond_2d
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_2e

    move v0, v6

    goto :goto_12

    :cond_2e
    move v0, v5

    .line 1000
    :goto_12
    iget-object v7, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1001
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1002
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_2f

    .line 1003
    sget p2, Lorg/telegram/messenger/R$string;->WebSessionsTitle:I

    const-string v2, "WebSessionsTitle"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_20

    .line 1004
    :cond_2f
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    const/16 v8, 0x1e

    if-ne p2, v7, :cond_31

    .line 1005
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3700(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object p2

    const/4 v3, 0x6

    invoke-virtual {p2, v3}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result p2

    if-eqz p2, :cond_30

    move v5, v6

    move v1, v8

    goto :goto_13

    .line 1009
    :cond_30
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    invoke-static {p2, v3}, Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(Lorg/telegram/messenger/AccountInstance;I)Ljava/lang/String;

    move-result-object v2

    .line 1011
    :goto_13
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyPhone:I

    const-string v3, "PrivacyPhone"

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_20

    .line 1012
    :cond_31
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_33

    .line 1013
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3800(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object p2

    invoke-virtual {p2, v5}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result p2

    if-eqz p2, :cond_32

    move v5, v6

    move v1, v8

    goto :goto_14

    .line 1017
    :cond_32
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    invoke-static {p2, v5}, Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(Lorg/telegram/messenger/AccountInstance;I)Ljava/lang/String;

    move-result-object v2

    .line 1019
    :goto_14
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyLastSeen:I

    const-string v3, "PrivacyLastSeen"

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_20

    .line 1020
    :cond_33
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_35

    .line 1021
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3900(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object p2

    invoke-virtual {p2, v6}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result p2

    if-eqz p2, :cond_34

    move v5, v6

    move v1, v8

    goto :goto_15

    .line 1025
    :cond_34
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    invoke-static {p2, v6}, Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(Lorg/telegram/messenger/AccountInstance;I)Ljava/lang/String;

    move-result-object v2

    .line 1027
    :goto_15
    sget p2, Lorg/telegram/messenger/R$string;->GroupsAndChannels:I

    const-string v3, "GroupsAndChannels"

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_20

    .line 1028
    :cond_35
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_37

    .line 1029
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4000(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object p2

    invoke-virtual {p2, v4}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result p2

    if-eqz p2, :cond_36

    move v5, v6

    move v1, v8

    goto :goto_16

    .line 1033
    :cond_36
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    invoke-static {p2, v4}, Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(Lorg/telegram/messenger/AccountInstance;I)Ljava/lang/String;

    move-result-object v2

    .line 1035
    :goto_16
    sget p2, Lorg/telegram/messenger/R$string;->Calls:I

    const-string v3, "Calls"

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_20

    .line 1036
    :cond_37
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_39

    .line 1037
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4100(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object p2

    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result p2

    if-eqz p2, :cond_38

    move v5, v6

    move v1, v8

    goto :goto_17

    .line 1041
    :cond_38
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    invoke-static {p2, v3}, Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(Lorg/telegram/messenger/AccountInstance;I)Ljava/lang/String;

    move-result-object v2

    .line 1043
    :goto_17
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyProfilePhoto:I

    const-string v3, "PrivacyProfilePhoto"

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_20

    .line 1044
    :cond_39
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_3b

    .line 1045
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4200(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object p2

    const/16 v3, 0x9

    invoke-virtual {p2, v3}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result p2

    if-eqz p2, :cond_3a

    move v5, v6

    move v1, v8

    goto :goto_18

    .line 1049
    :cond_3a
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    invoke-static {p2, v3}, Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(Lorg/telegram/messenger/AccountInstance;I)Ljava/lang/String;

    move-result-object v2

    .line 1051
    :goto_18
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyBio:I

    const-string v3, "PrivacyBio"

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_20

    .line 1052
    :cond_3b
    iget-object v7, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v7

    if-ne p2, v7, :cond_3d

    .line 1053
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4300(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result p2

    if-eqz p2, :cond_3c

    move v5, v6

    move v1, v8

    goto :goto_19

    .line 1057
    :cond_3c
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    invoke-static {p2, v3}, Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(Lorg/telegram/messenger/AccountInstance;I)Ljava/lang/String;

    move-result-object v2

    .line 1059
    :goto_19
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyForwards:I

    const-string v3, "PrivacyForwards"

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_20

    .line 1060
    :cond_3d
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne p2, v3, :cond_41

    .line 1061
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4400(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object p2

    const/16 v3, 0x8

    invoke-virtual {p2, v3}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result p2

    if-eqz p2, :cond_3e

    move p2, v6

    move v1, v8

    goto :goto_1b

    .line 1064
    :cond_3e
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_3f

    .line 1065
    sget p2, Lorg/telegram/messenger/R$string;->P2PEverybody:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1a

    .line 1067
    :cond_3f
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    invoke-static {p2, v3}, Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(Lorg/telegram/messenger/AccountInstance;I)Ljava/lang/String;

    move-result-object v2

    :goto_1a
    move p2, v5

    .line 1069
    :goto_1b
    sget v3, Lorg/telegram/messenger/R$string;->PrivacyVoiceMessages:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 1070
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSettingsCell;->getValueImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 1071
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v3

    if-nez v3, :cond_40

    .line 1072
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1073
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_mini_premiumlock:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1074
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1075
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1c

    .line 1077
    :cond_40
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_1c
    move v5, p2

    goto/16 :goto_20

    .line 1079
    :cond_41
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne p2, v3, :cond_42

    .line 1080
    sget p2, Lorg/telegram/messenger/R$string;->TelegramPassport:I

    const-string v2, "TelegramPassport"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_20

    .line 1081
    :cond_42
    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne p2, v3, :cond_46

    .line 1082
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4500(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/ContactsController;->getLoadingDeleteInfo()Z

    move-result p2

    if-eqz p2, :cond_43

    goto :goto_1e

    .line 1085
    :cond_43
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4600(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/ContactsController;->getDeleteAccountTTL()I

    move-result p2

    const/16 v2, 0xb6

    if-gt p2, v2, :cond_44

    .line 1087
    div-int/2addr p2, v8

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Months"

    invoke-static {v3, p2, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1d
    move v6, v5

    goto :goto_1e

    :cond_44
    const/16 v2, 0x16d

    if-ne p2, v2, :cond_45

    .line 1089
    div-int/2addr p2, v2

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Years"

    invoke-static {v3, p2, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1d

    :cond_45
    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Days"

    .line 1091
    invoke-static {v3, p2, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1d

    .line 1094
    :goto_1e
    sget p2, Lorg/telegram/messenger/R$string;->DeleteAccountIfAwayFor3:I

    const-string v3, "DeleteAccountIfAwayFor3"

    invoke-static {v3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4700(Lorg/telegram/ui/PrivacySettingsActivity;)Z

    move-result v3

    invoke-virtual {p1, p2, v2, v3, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 1095
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p2, v5}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4702(Lorg/telegram/ui/PrivacySettingsActivity;Z)Z

    move v5, v6

    goto/16 :goto_20

    .line 1096
    :cond_46
    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_47

    .line 1097
    sget p2, Lorg/telegram/messenger/R$string;->PrivacyPaymentsClear:I

    const-string v2, "PrivacyPaymentsClear"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_20

    .line 1098
    :cond_47
    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_4b

    .line 1099
    sget p2, Lorg/telegram/messenger/SharedConfig;->mapPreviewType:I

    if-eqz p2, :cond_4a

    if-eq p2, v6, :cond_49

    if-eq p2, v4, :cond_48

    .line 1111
    sget p2, Lorg/telegram/messenger/R$string;->MapPreviewProviderYandex:I

    const-string v2, "MapPreviewProviderYandex"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1f

    .line 1107
    :cond_48
    sget p2, Lorg/telegram/messenger/R$string;->MapPreviewProviderNobody:I

    const-string v2, "MapPreviewProviderNobody"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1f

    .line 1104
    :cond_49
    sget p2, Lorg/telegram/messenger/R$string;->MapPreviewProviderGoogle:I

    const-string v2, "MapPreviewProviderGoogle"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1f

    .line 1101
    :cond_4a
    sget p2, Lorg/telegram/messenger/R$string;->MapPreviewProviderTelegram:I

    const-string v2, "MapPreviewProviderTelegram"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 1114
    :goto_1f
    sget v2, Lorg/telegram/messenger/R$string;->MapPreviewProvider:I

    const-string v3, "MapPreviewProvider"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4800(Lorg/telegram/ui/PrivacySettingsActivity;)Z

    move-result v3

    invoke-virtual {p1, v2, p2, v3, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 1115
    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {p2, v5}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4802(Lorg/telegram/ui/PrivacySettingsActivity;Z)Z

    goto :goto_20

    .line 1116
    :cond_4b
    iget-object v2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_4c

    .line 1117
    sget p2, Lorg/telegram/messenger/R$string;->SyncContactsDelete:I

    const-string v2, "SyncContactsDelete"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 1119
    :cond_4c
    :goto_20
    invoke-virtual {p1, v5, v1, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setDrawLoading(ZIZ)V

    :cond_4d
    :goto_21
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    .line 985
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 986
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 980
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 981
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 977
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 973
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 974
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 970
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 966
    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 967
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 989
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
