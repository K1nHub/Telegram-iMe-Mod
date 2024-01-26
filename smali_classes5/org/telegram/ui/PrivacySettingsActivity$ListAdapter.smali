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

    .line 970
    iput-object p1, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 971
    iput-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 995
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1313
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 1314
    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 1315
    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto/16 :goto_5

    .line 1317
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto/16 :goto_4

    .line 1319
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto/16 :goto_3

    .line 1321
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_2

    .line 1323
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$7000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$7100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 1325
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2900(Lorg/telegram/ui/PrivacySettingsActivity;)I

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
    const/4 p1, 0x4

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
    const/4 p1, 0x1

    return p1

    :cond_b
    :goto_5
    return v1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .line 976
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 977
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

    .line 978
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

    .line 979
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

    .line 980
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

    .line 981
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

    .line 982
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

    .line 983
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

    .line 984
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

    .line 985
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

    .line 986
    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 987
    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2600(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->getLoadingDeleteInfo()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 988
    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2800(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ContactsController;->getLoadingGlobalSettings()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 989
    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    .line 990
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

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_b

    :cond_a
    move v1, v2

    :cond_b
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1031
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v3, :cond_2d

    if-eq v3, v10, :cond_24

    if-eq v3, v8, :cond_1d

    const/4 v8, 0x3

    if-eq v3, v8, :cond_18

    if-eq v3, v6, :cond_0

    goto/16 :goto_23

    .line 1217
    :cond_0
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v6, v3

    check-cast v6, Lorg/telegram/ui/Cells/TextCell;

    .line 1218
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v10

    goto :goto_0

    :cond_1
    move v3, v9

    .line 1219
    :goto_0
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1223
    invoke-virtual {v6, v9}, Lorg/telegram/ui/Cells/TextCell;->setPrioritizeTitleOverValue(Z)V

    .line 1225
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    const-string v8, "PasswordOn"

    const-string v11, "PasswordOff"

    if-eq v2, v1, :cond_13

    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_2

    goto/16 :goto_b

    .line 1232
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_5

    .line 1233
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getGlobalTTl()I

    move-result v1

    if-ne v1, v7, :cond_3

    move-object v13, v5

    move v9, v10

    goto :goto_2

    :cond_3
    if-lez v1, :cond_4

    mul-int/lit8 v1, v1, 0x3c

    .line 1237
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->formatTTLString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1239
    :cond_4
    sget v1, Lorg/telegram/messenger/R$string;->PasswordOff:I

    invoke-static {v11, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v13, v5

    .line 1241
    :goto_2
    sget v1, Lorg/telegram/messenger/R$string;->AutoDeleteMessages:I

    const-string v2, "AutoDeleteMessages"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x1

    sget v15, Lorg/telegram/messenger/R$drawable;->msg2_autodelete:I

    const/16 v16, 0x1

    move-object v11, v6

    invoke-virtual/range {v11 .. v16}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/String;ZIZ)V

    goto/16 :goto_f

    .line 1242
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    const-string v5, "%d"

    const-string v12, ""

    if-ne v2, v1, :cond_8

    .line 1244
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6800(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/ui/SessionsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/SessionsActivity;->getSessionsCount()I

    move-result v1

    if-nez v1, :cond_7

    .line 1245
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->lastKnownSessionsCount:I

    if-nez v1, :cond_6

    move v9, v10

    move-object v13, v12

    goto :goto_4

    .line 1248
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v7, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget v7, v7, Lorg/telegram/messenger/MessagesController;->lastKnownSessionsCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v9

    invoke-static {v1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1251
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v7, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v7}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6800(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/ui/SessionsActivity;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/ui/SessionsActivity;->getSessionsCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v9

    invoke-static {v1, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object v13, v1

    .line 1253
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6800(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/ui/SessionsActivity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/SessionsActivity;->getSessionsCount()I

    move-result v2

    iput v2, v1, Lorg/telegram/messenger/MessagesController;->lastKnownSessionsCount:I

    .line 1254
    sget v1, Lorg/telegram/messenger/R$string;->SessionsTitle:I

    const-string v2, "SessionsTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x1

    sget v15, Lorg/telegram/messenger/R$drawable;->msg2_devices:I

    const/16 v16, 0x0

    move-object v11, v6

    invoke-virtual/range {v11 .. v16}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/String;ZIZ)V

    goto/16 :goto_f

    .line 1255
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_b

    .line 1257
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6900(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v1

    if-nez v1, :cond_9

    move v9, v10

    goto :goto_5

    .line 1260
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6900(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$account_Password;->login_email_pattern:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v12

    .line 1261
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6900(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$account_Password;->login_email_pattern:Ljava/lang/String;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1262
    iget-object v5, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v5}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6900(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$account_Password;->login_email_pattern:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-eq v1, v2, :cond_a

    if-eq v1, v7, :cond_a

    if-eq v2, v7, :cond_a

    .line 1264
    new-instance v5, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v5}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 1265
    iget v7, v5, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit16 v7, v7, 0x100

    iput v7, v5, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 1266
    iput v1, v5, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    add-int/2addr v2, v10

    .line 1267
    iput v2, v5, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    .line 1268
    new-instance v7, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v7, v5}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-virtual {v12, v7, v1, v2, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1272
    :cond_a
    :goto_5
    invoke-virtual {v6, v10}, Lorg/telegram/ui/Cells/TextCell;->setPrioritizeTitleOverValue(Z)V

    .line 1273
    sget v1, Lorg/telegram/messenger/R$string;->EmailLogin:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->msg2_email:I

    invoke-virtual {v6, v1, v12, v2, v10}, Lorg/telegram/ui/Cells/TextCell;->setTextAndSpoilersValueAndIcon(Ljava/lang/String;Ljava/lang/CharSequence;IZ)V

    goto/16 :goto_f

    .line 1274
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_e

    .line 1276
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6900(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v1

    if-nez v1, :cond_c

    move v9, v10

    move-object v13, v12

    goto :goto_7

    .line 1278
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6900(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/tgnet/TLRPC$account_Password;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$account_Password;->has_password:Z

    if-eqz v1, :cond_d

    .line 1279
    sget v1, Lorg/telegram/messenger/R$string;->PasswordOn:I

    invoke-static {v8, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 1281
    :cond_d
    sget v1, Lorg/telegram/messenger/R$string;->PasswordOff:I

    invoke-static {v11, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_6
    move-object v13, v1

    .line 1283
    :goto_7
    sget v1, Lorg/telegram/messenger/R$string;->TwoStepVerification:I

    const-string v2, "TwoStepVerification"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x1

    sget v15, Lorg/telegram/messenger/R$drawable;->msg2_permissions:I

    const/16 v16, 0x1

    move-object v11, v6

    invoke-virtual/range {v11 .. v16}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/String;ZIZ)V

    goto/16 :goto_f

    .line 1284
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_10

    .line 1286
    sget-object v1, Lorg/telegram/messenger/SharedConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_f

    .line 1287
    sget v1, Lorg/telegram/messenger/R$string;->PasswordOn:I

    invoke-static {v8, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1288
    sget v2, Lorg/telegram/messenger/R$drawable;->msg2_secret:I

    goto :goto_8

    .line 1290
    :cond_f
    sget v1, Lorg/telegram/messenger/R$string;->PasswordOff:I

    invoke-static {v11, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1291
    sget v2, Lorg/telegram/messenger/R$drawable;->msg2_secret:I

    :goto_8
    move-object v13, v1

    move v15, v2

    .line 1293
    sget v1, Lorg/telegram/messenger/R$string;->Passcode:I

    const-string v2, "Passcode"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x1

    const/16 v16, 0x1

    move-object v11, v6

    invoke-virtual/range {v11 .. v16}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/String;ZIZ)V

    goto/16 :goto_f

    .line 1294
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_17

    .line 1295
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget v1, v1, Lorg/telegram/messenger/MessagesController;->totalBlockedCount:I

    if-nez v1, :cond_11

    .line 1297
    sget v1, Lorg/telegram/messenger/R$string;->BlockedEmpty:I

    const-string v2, "BlockedEmpty"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_9
    move-object v13, v1

    goto :goto_a

    :cond_11
    if-lez v1, :cond_12

    .line 1299
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v2

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v9

    invoke-static {v2, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_12
    move v9, v10

    move-object v13, v12

    .line 1304
    :goto_a
    sget v1, Lorg/telegram/messenger/R$string;->BlockedUsers:I

    const-string v2, "BlockedUsers"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x1

    sget v15, Lorg/telegram/messenger/R$drawable;->msg2_block2:I

    const/16 v16, 0x1

    move-object v11, v6

    invoke-virtual/range {v11 .. v16}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/String;ZIZ)V

    goto :goto_f

    .line 1226
    :cond_13
    :goto_b
    iget-object v1, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/PrivacySettingsActivity;->access$100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v1

    if-ne v2, v1, :cond_14

    goto :goto_c

    :cond_14
    move v10, v9

    :goto_c
    if-eqz v10, :cond_15

    .line 1227
    sget-object v1, Lcom/iMe/fork/enums/LockedSection;->CLOUD:Lcom/iMe/fork/enums/LockedSection;

    goto :goto_d

    :cond_15
    sget-object v1, Lcom/iMe/fork/enums/LockedSection;->ARCHIVE:Lcom/iMe/fork/enums/LockedSection;

    .line 1228
    :goto_d
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLockedSectionsController()Lcom/iMe/fork/controller/LockedSectionsController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iMe/fork/controller/LockedSectionsController;->getSectionsPasscodeData(Lcom/iMe/fork/enums/LockedSection;)Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 1229
    invoke-virtual {v2}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->getPasscodeHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    sget v2, Lorg/telegram/messenger/R$string;->PasswordOn:I

    invoke-static {v8, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_16
    sget v2, Lorg/telegram/messenger/R$string;->PasswordOff:I

    invoke-static {v11, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :goto_e
    move-object v13, v2

    .line 1230
    invoke-virtual {v1}, Lcom/iMe/fork/enums/LockedSection;->getNameResId()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x1

    invoke-virtual {v1}, Lcom/iMe/fork/enums/LockedSection;->getIconResId()I

    move-result v15

    const/16 v16, 0x1

    move-object v11, v6

    invoke-virtual/range {v11 .. v16}, Lorg/telegram/ui/Cells/TextCell;->setTextAndValueAndIcon(Ljava/lang/CharSequence;Ljava/lang/String;ZIZ)V

    .line 1306
    :cond_17
    :goto_f
    invoke-virtual {v6, v9, v4, v3}, Lorg/telegram/ui/Cells/TextCell;->setDrawLoading(ZIZ)V

    goto/16 :goto_23

    .line 1205
    :cond_18
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1206
    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1a

    .line 1207
    sget v2, Lorg/telegram/messenger/R$string;->SecretWebPage:I

    const-string v3, "SecretWebPage"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->secretWebpagePreview:I

    if-ne v3, v10, :cond_19

    goto :goto_10

    :cond_19
    move v10, v9

    :goto_10
    invoke-virtual {v1, v2, v10, v9}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_23

    .line 1208
    :cond_1a
    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1b

    .line 1209
    sget v2, Lorg/telegram/messenger/R$string;->SyncContacts:I

    const-string v3, "SyncContacts"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6500(Lorg/telegram/ui/PrivacySettingsActivity;)Z

    move-result v3

    invoke-virtual {v1, v2, v3, v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_23

    .line 1210
    :cond_1b
    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1c

    .line 1211
    sget v2, Lorg/telegram/messenger/R$string;->SuggestContacts:I

    const-string v3, "SuggestContacts"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6600(Lorg/telegram/ui/PrivacySettingsActivity;)Z

    move-result v3

    invoke-virtual {v1, v2, v3, v9}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_23

    .line 1212
    :cond_1c
    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_50

    .line 1213
    sget v2, Lorg/telegram/messenger/R$string;->ArchiveAndMute:I

    const-string v3, "ArchiveAndMute"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6700(Lorg/telegram/ui/PrivacySettingsActivity;)Z

    move-result v3

    invoke-virtual {v1, v2, v3, v9}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_23

    .line 1187
    :cond_1d
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 1188
    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1e

    .line 1189
    sget v2, Lorg/telegram/messenger/R$string;->PrivacyTitle:I

    const-string v3, "PrivacyTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 1190
    :cond_1e
    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5900(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1f

    .line 1191
    sget v2, Lorg/telegram/messenger/R$string;->SecurityTitle:I

    const-string v3, "SecurityTitle"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 1192
    :cond_1f
    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_20

    .line 1193
    sget v2, Lorg/telegram/messenger/R$string;->DeleteMyAccount:I

    const-string v3, "DeleteMyAccount"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 1194
    :cond_20
    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_21

    .line 1195
    sget v2, Lorg/telegram/messenger/R$string;->SecretChat:I

    const-string v3, "SecretChat"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 1196
    :cond_21
    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_22

    .line 1197
    sget v2, Lorg/telegram/messenger/R$string;->PrivacyBots:I

    const-string v3, "PrivacyBots"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 1198
    :cond_22
    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_23

    .line 1199
    sget v2, Lorg/telegram/messenger/R$string;->Contacts:I

    const-string v3, "Contacts"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 1200
    :cond_23
    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$6400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_50

    .line 1201
    sget v2, Lorg/telegram/messenger/R$string;->NewChatsFromNonContacts:I

    const-string v3, "NewChatsFromNonContacts"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 1162
    :cond_24
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1163
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v10

    if-ne v2, v3, :cond_25

    move v9, v10

    .line 1164
    :cond_25
    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_26

    sget v4, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    goto :goto_11

    :cond_26
    sget v4, Lorg/telegram/messenger/R$drawable;->greydivider:I

    :goto_11
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1165
    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_27

    .line 1166
    sget v2, Lorg/telegram/messenger/R$string;->DeleteAccountHelp:I

    const-string v3, "DeleteAccountHelp"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 1167
    :cond_27
    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_28

    .line 1168
    sget v2, Lorg/telegram/messenger/R$string;->GroupsAndChannelsHelp:I

    const-string v3, "GroupsAndChannelsHelp"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 1169
    :cond_28
    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_29

    .line 1170
    sget v2, Lorg/telegram/messenger/R$string;->SessionsSettingsInfo:I

    const-string v3, "SessionsSettingsInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 1171
    :cond_29
    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2a

    .line 1172
    sget v2, Lorg/telegram/messenger/R$string;->SecretWebPageInfo:I

    const-string v3, "SecretWebPageInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 1173
    :cond_2a
    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2b

    .line 1174
    sget v2, Lorg/telegram/messenger/R$string;->PrivacyBotsInfo:I

    const-string v3, "PrivacyBotsInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 1175
    :cond_2b
    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2c

    .line 1181
    sget v2, Lorg/telegram/messenger/R$string;->SuggestContactsInfo:I

    const-string v3, "SuggestContactsInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 1182
    :cond_2c
    iget-object v3, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v3

    if-ne v2, v3, :cond_50

    .line 1183
    sget v2, Lorg/telegram/messenger/R$string;->ArchiveAndMuteInfo:I

    const-string v3, "ArchiveAndMuteInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 1036
    :cond_2d
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2e

    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_2e

    move v3, v10

    goto :goto_12

    :cond_2e
    move v3, v9

    .line 1037
    :goto_12
    iget-object v11, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1038
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1039
    iget-object v11, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PrivacySettingsActivity;->access$700(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v11

    if-ne v2, v11, :cond_2f

    .line 1040
    sget v2, Lorg/telegram/messenger/R$string;->WebSessionsTitle:I

    const-string v5, "WebSessionsTitle"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_22

    .line 1041
    :cond_2f
    iget-object v11, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v11

    const/16 v12, 0x1e

    if-ne v2, v11, :cond_31

    .line 1042
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3800(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result v2

    if-eqz v2, :cond_30

    move v9, v10

    move v4, v12

    goto :goto_13

    .line 1046
    :cond_30
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-static {v2, v6}, Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(Lorg/telegram/messenger/AccountInstance;I)Ljava/lang/String;

    move-result-object v5

    .line 1048
    :goto_13
    sget v2, Lorg/telegram/messenger/R$string;->PrivacyPhone:I

    const-string v6, "PrivacyPhone"

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_22

    .line 1049
    :cond_31
    iget-object v11, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v11

    if-ne v2, v11, :cond_33

    .line 1050
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3900(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    invoke-virtual {v2, v9}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result v2

    if-eqz v2, :cond_32

    move v9, v10

    move v4, v12

    goto :goto_14

    .line 1054
    :cond_32
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-static {v2, v9}, Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(Lorg/telegram/messenger/AccountInstance;I)Ljava/lang/String;

    move-result-object v5

    .line 1056
    :goto_14
    sget v2, Lorg/telegram/messenger/R$string;->PrivacyLastSeen:I

    const-string v6, "PrivacyLastSeen"

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_22

    .line 1057
    :cond_33
    iget-object v11, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PrivacySettingsActivity;->access$800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v11

    if-ne v2, v11, :cond_35

    .line 1058
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4000(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    invoke-virtual {v2, v10}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result v2

    if-eqz v2, :cond_34

    move v9, v10

    move v4, v12

    goto :goto_15

    .line 1062
    :cond_34
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-static {v2, v10}, Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(Lorg/telegram/messenger/AccountInstance;I)Ljava/lang/String;

    move-result-object v5

    .line 1064
    :goto_15
    sget v2, Lorg/telegram/messenger/R$string;->GroupsAndChannels:I

    const-string v6, "GroupsAndChannels"

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_22

    .line 1065
    :cond_35
    iget-object v11, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v11

    if-ne v2, v11, :cond_37

    .line 1066
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4100(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    invoke-virtual {v2, v8}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result v2

    if-eqz v2, :cond_36

    move v9, v10

    move v4, v12

    goto :goto_16

    .line 1070
    :cond_36
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-static {v2, v8}, Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(Lorg/telegram/messenger/AccountInstance;I)Ljava/lang/String;

    move-result-object v5

    .line 1072
    :goto_16
    sget v2, Lorg/telegram/messenger/R$string;->Calls:I

    const-string v6, "Calls"

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_22

    .line 1073
    :cond_37
    iget-object v11, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v11

    if-ne v2, v11, :cond_39

    .line 1074
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4200(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result v2

    if-eqz v2, :cond_38

    move v9, v10

    move v4, v12

    goto :goto_17

    .line 1078
    :cond_38
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-static {v2, v6}, Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(Lorg/telegram/messenger/AccountInstance;I)Ljava/lang/String;

    move-result-object v5

    .line 1080
    :goto_17
    sget v2, Lorg/telegram/messenger/R$string;->PrivacyProfilePhoto:I

    const-string v6, "PrivacyProfilePhoto"

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_22

    .line 1081
    :cond_39
    iget-object v11, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1600(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v11

    if-ne v2, v11, :cond_3b

    .line 1082
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4300(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    const/16 v6, 0x9

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    move v9, v10

    move v4, v12

    goto :goto_18

    .line 1086
    :cond_3a
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-static {v2, v6}, Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(Lorg/telegram/messenger/AccountInstance;I)Ljava/lang/String;

    move-result-object v5

    .line 1088
    :goto_18
    sget v2, Lorg/telegram/messenger/R$string;->PrivacyBio:I

    const-string v6, "PrivacyBio"

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_22

    .line 1089
    :cond_3b
    iget-object v11, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v11}, Lorg/telegram/ui/PrivacySettingsActivity;->access$1800(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v11

    if-ne v2, v11, :cond_3d

    .line 1090
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4400(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    move v9, v10

    move v4, v12

    goto :goto_19

    .line 1094
    :cond_3c
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-static {v2, v6}, Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(Lorg/telegram/messenger/AccountInstance;I)Ljava/lang/String;

    move-result-object v5

    .line 1096
    :goto_19
    sget v2, Lorg/telegram/messenger/R$string;->PrivacyForwards:I

    const-string v6, "PrivacyForwards"

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_22

    .line 1097
    :cond_3d
    iget-object v6, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2200(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne v2, v6, :cond_42

    .line 1098
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4500(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lorg/telegram/messenger/ContactsController;->getLoadingPrivacyInfo(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    move v2, v10

    move v4, v12

    goto :goto_1b

    .line 1101
    :cond_3e
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 1102
    sget v2, Lorg/telegram/messenger/R$string;->P2PEverybody:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1a

    .line 1104
    :cond_3f
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-static {v2, v6}, Lorg/telegram/ui/PrivacySettingsActivity;->formatRulesString(Lorg/telegram/messenger/AccountInstance;I)Ljava/lang/String;

    move-result-object v5

    :goto_1a
    move v2, v9

    .line 1106
    :goto_1b
    sget v6, Lorg/telegram/messenger/R$string;->PrivacyVoiceMessages:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v8}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v8

    if-eq v8, v7, :cond_40

    move v7, v10

    goto :goto_1c

    :cond_40
    move v7, v9

    :goto_1c
    invoke-virtual {v1, v6, v5, v7}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 1107
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextSettingsCell;->getValueImageView()Landroid/widget/ImageView;

    move-result-object v5

    .line 1108
    iget-object v6, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v6

    if-nez v6, :cond_41

    .line 1109
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1110
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_mini_premiumlock:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1111
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1112
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1d

    .line 1114
    :cond_41
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_1d
    move v9, v2

    goto/16 :goto_22

    .line 1116
    :cond_42
    iget-object v6, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne v2, v6, :cond_44

    .line 1117
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4600(Lorg/telegram/ui/PrivacySettingsActivity;)Z

    move-result v2

    if-eqz v2, :cond_43

    sget v2, Lorg/telegram/messenger/R$string;->ContactsAndPremium:I

    goto :goto_1e

    :cond_43
    sget v2, Lorg/telegram/messenger/R$string;->P2PEverybody:I

    :goto_1e
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1118
    sget v5, Lorg/telegram/messenger/R$string;->PrivacyMessages:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v2, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_22

    .line 1119
    :cond_44
    iget-object v6, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3300(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne v2, v6, :cond_45

    .line 1120
    sget v2, Lorg/telegram/messenger/R$string;->TelegramPassport:I

    const-string v5, "TelegramPassport"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_22

    .line 1121
    :cond_45
    iget-object v6, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$2500(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v6

    if-ne v2, v6, :cond_49

    .line 1122
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4700(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ContactsController;->getLoadingDeleteInfo()Z

    move-result v2

    if-eqz v2, :cond_46

    goto :goto_20

    .line 1125
    :cond_46
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4800(Lorg/telegram/ui/PrivacySettingsActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ContactsController;->getDeleteAccountTTL()I

    move-result v2

    const/16 v5, 0xb6

    if-gt v2, v5, :cond_47

    .line 1127
    div-int/2addr v2, v12

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "Months"

    invoke-static {v6, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_1f
    move v10, v9

    goto :goto_20

    :cond_47
    const/16 v5, 0x16d

    if-ne v2, v5, :cond_48

    .line 1129
    div-int/2addr v2, v5

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "Years"

    invoke-static {v6, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1f

    :cond_48
    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "Days"

    .line 1131
    invoke-static {v6, v2, v5}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1f

    .line 1134
    :goto_20
    sget v2, Lorg/telegram/messenger/R$string;->DeleteAccountIfAwayFor3:I

    const-string v6, "DeleteAccountIfAwayFor3"

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4900(Lorg/telegram/ui/PrivacySettingsActivity;)Z

    move-result v6

    invoke-virtual {v1, v2, v5, v6, v9}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 1135
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2, v9}, Lorg/telegram/ui/PrivacySettingsActivity;->access$4902(Lorg/telegram/ui/PrivacySettingsActivity;Z)Z

    move v9, v10

    goto/16 :goto_22

    .line 1136
    :cond_49
    iget-object v5, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v5}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3000(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v5

    if-ne v2, v5, :cond_4a

    .line 1137
    sget v2, Lorg/telegram/messenger/R$string;->PrivacyPaymentsClear:I

    const-string v5, "PrivacyPaymentsClear"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_22

    .line 1138
    :cond_4a
    iget-object v5, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v5}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3100(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v5

    if-ne v2, v5, :cond_4e

    .line 1139
    sget v2, Lorg/telegram/messenger/SharedConfig;->mapPreviewType:I

    if-eqz v2, :cond_4d

    if-eq v2, v10, :cond_4c

    if-eq v2, v8, :cond_4b

    .line 1151
    sget v2, Lorg/telegram/messenger/R$string;->MapPreviewProviderYandex:I

    const-string v5, "MapPreviewProviderYandex"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    .line 1147
    :cond_4b
    sget v2, Lorg/telegram/messenger/R$string;->MapPreviewProviderNobody:I

    const-string v5, "MapPreviewProviderNobody"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    .line 1144
    :cond_4c
    sget v2, Lorg/telegram/messenger/R$string;->MapPreviewProviderGoogle:I

    const-string v5, "MapPreviewProviderGoogle"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    .line 1141
    :cond_4d
    sget v2, Lorg/telegram/messenger/R$string;->MapPreviewProviderTelegram:I

    const-string v5, "MapPreviewProviderTelegram"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1154
    :goto_21
    sget v5, Lorg/telegram/messenger/R$string;->MapPreviewProvider:I

    const-string v6, "MapPreviewProvider"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5000(Lorg/telegram/ui/PrivacySettingsActivity;)Z

    move-result v6

    invoke-virtual {v1, v5, v2, v6, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 1155
    iget-object v2, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v2, v9}, Lorg/telegram/ui/PrivacySettingsActivity;->access$5002(Lorg/telegram/ui/PrivacySettingsActivity;Z)Z

    goto :goto_22

    .line 1156
    :cond_4e
    iget-object v5, v0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/PrivacySettingsActivity;

    invoke-static {v5}, Lorg/telegram/ui/PrivacySettingsActivity;->access$3400(Lorg/telegram/ui/PrivacySettingsActivity;)I

    move-result v5

    if-ne v2, v5, :cond_4f

    .line 1157
    sget v2, Lorg/telegram/messenger/R$string;->SyncContactsDelete:I

    const-string v5, "SyncContactsDelete"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    .line 1159
    :cond_4f
    :goto_22
    invoke-virtual {v1, v9, v4, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setDrawLoading(ZIZ)V

    :cond_50
    :goto_23
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

    .line 1022
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 1023
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1017
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 1018
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1014
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1010
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 1011
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1007
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1003
    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/PrivacySettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 1004
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1026
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
