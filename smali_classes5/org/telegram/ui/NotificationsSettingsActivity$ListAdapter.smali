.class Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "NotificationsSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/NotificationsSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/NotificationsSettingsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/NotificationsSettingsActivity;Landroid/content/Context;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 741
    iput-object p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 756
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 971
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 972
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 973
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto/16 :goto_3

    .line 975
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 976
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 977
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 978
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 979
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_2

    .line 981
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 983
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 985
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$5000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 986
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 987
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_0

    .line 989
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    const/4 p1, 0x6

    return p1

    :cond_5
    const/4 p1, 0x5

    return p1

    :cond_6
    :goto_0
    const/4 p1, 0x4

    return p1

    :cond_7
    :goto_1
    const/4 p1, 0x3

    return p1

    :cond_8
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_9
    :goto_3
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 746
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 747
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 748
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 749
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 750
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    .line 751
    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

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
    .locals 12

    .line 797
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "Vibrate"

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_a

    .line 960
    :pswitch_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 961
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2b

    .line 962
    sget p2, Lorg/telegram/messenger/R$string;->ShowNotificationsForInfo:I

    const-string v0, "ShowNotificationsForInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 921
    :pswitch_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 922
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 923
    iget-object v5, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v5}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v5

    if-ne p2, v5, :cond_1

    .line 924
    sget p2, Lorg/telegram/messenger/R$string;->DefaultRingtone:I

    const-string v1, "DefaultRingtone"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "CallsRingtone"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "NoSound"

    .line 925
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    sget p2, Lorg/telegram/messenger/R$string;->NoSound:I

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 928
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->VoipSettingsRingtone:I

    const-string v1, "VoipSettingsRingtone"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4600(Lorg/telegram/ui/NotificationsSettingsActivity;)Z

    move-result v1

    invoke-virtual {p1, v0, p2, v1, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 929
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {p1, v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4602(Lorg/telegram/ui/NotificationsSettingsActivity;Z)Z

    goto/16 :goto_a

    .line 930
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v5}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v5

    if-ne p2, v5, :cond_7

    const-string p2, "vibrate_calls"

    .line 931
    invoke-interface {v0, p2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_2

    .line 933
    sget p2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->VibrationDefault:I

    const-string v1, "VibrationDefault"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4700(Lorg/telegram/ui/NotificationsSettingsActivity;)Z

    move-result v1

    invoke-virtual {p1, p2, v0, v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    goto :goto_0

    :cond_2
    if-ne p2, v4, :cond_3

    .line 935
    sget p2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->Short:I

    const-string v1, "Short"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4700(Lorg/telegram/ui/NotificationsSettingsActivity;)Z

    move-result v1

    invoke-virtual {p1, p2, v0, v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    goto :goto_0

    :cond_3
    if-ne p2, v1, :cond_4

    .line 937
    sget p2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->VibrationDisabled:I

    const-string v1, "VibrationDisabled"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4700(Lorg/telegram/ui/NotificationsSettingsActivity;)Z

    move-result v1

    invoke-virtual {p1, p2, v0, v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    .line 939
    sget p2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->Long:I

    const-string v1, "Long"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4700(Lorg/telegram/ui/NotificationsSettingsActivity;)Z

    move-result v1

    invoke-virtual {p1, p2, v0, v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    .line 941
    sget p2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->OnlyIfSilent:I

    const-string v1, "OnlyIfSilent"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4700(Lorg/telegram/ui/NotificationsSettingsActivity;)Z

    move-result v1

    invoke-virtual {p1, p2, v0, v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 943
    :cond_6
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {p1, v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4702(Lorg/telegram/ui/NotificationsSettingsActivity;Z)Z

    goto/16 :goto_a

    .line 944
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v1

    if-ne p2, v1, :cond_2b

    const-string p2, "repeat_messages"

    const/16 v1, 0x3c

    .line 945
    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_8

    .line 948
    sget p2, Lorg/telegram/messenger/R$string;->RepeatNotificationsNever:I

    const-string v0, "RepeatNotificationsNever"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_8
    if-ge p2, v1, :cond_9

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Minutes"

    .line 950
    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 952
    :cond_9
    div-int/2addr p2, v1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Hours"

    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 954
    :goto_1
    sget v0, Lorg/telegram/messenger/R$string;->RepeatNotifications:I

    const-string v1, "RepeatNotifications"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4900(Lorg/telegram/ui/NotificationsSettingsActivity;)Z

    move-result v1

    invoke-virtual {p1, v0, p2, v1, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)V

    .line 955
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {p1, v3}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4902(Lorg/telegram/ui/NotificationsSettingsActivity;Z)Z

    goto/16 :goto_a

    .line 913
    :pswitch_2
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    const-string v1, "windowBackgroundGrayShadow"

    if-ne p2, v0, :cond_a

    .line 914
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    .line 916
    :cond_a
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    .line 864
    :pswitch_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v5, p1

    check-cast v5, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    .line 865
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 866
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 872
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_b

    .line 873
    sget v2, Lorg/telegram/messenger/R$string;->NotificationsPrivateChats:I

    const-string v6, "NotificationsPrivateChats"

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 874
    iget-object v6, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3900(Lorg/telegram/ui/NotificationsSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "EnableAll2"

    .line 875
    invoke-interface {p1, v7, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_2

    .line 876
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v2

    if-ne p2, v2, :cond_c

    .line 877
    sget v2, Lorg/telegram/messenger/R$string;->NotificationsGroups:I

    const-string v6, "NotificationsGroups"

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 878
    iget-object v6, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4100(Lorg/telegram/ui/NotificationsSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "EnableGroup2"

    .line 879
    invoke-interface {p1, v7, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_2

    .line 881
    :cond_c
    sget v2, Lorg/telegram/messenger/R$string;->NotificationsChannels:I

    const-string v6, "NotificationsChannels"

    invoke-static {v6, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 882
    iget-object v6, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v6}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4200(Lorg/telegram/ui/NotificationsSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v7, "EnableChannel2"

    .line 883
    invoke-interface {p1, v7, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    :goto_2
    if-ge p1, v0, :cond_d

    const/4 v7, 0x1

    goto :goto_3

    :cond_d
    const/4 v7, 0x0

    :goto_3
    const v8, 0x1e13380

    if-eqz v7, :cond_e

    :goto_4
    const/4 v9, 0x0

    goto :goto_5

    :cond_e
    sub-int v9, p1, v8

    if-lt v9, v0, :cond_f

    goto :goto_4

    :cond_f
    const/4 v9, 0x2

    .line 893
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_14

    .line 894
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_14

    if-ge p1, v0, :cond_10

    const/4 v7, 0x1

    goto :goto_6

    :cond_10
    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_11

    .line 896
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsOn:I

    const-string v0, "NotificationsOn"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_11
    sub-int v8, p1, v8

    if-lt v8, v0, :cond_12

    .line 898
    sget p1, Lorg/telegram/messenger/R$string;->NotificationsOff:I

    const-string v0, "NotificationsOff"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 900
    :cond_12
    sget v0, Lorg/telegram/messenger/R$string;->NotificationsOffUntil:I

    new-array v8, v4, [Ljava/lang/Object;

    int-to-long v10, p1

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->stringForMessageListDate(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v3

    const-string p1, "NotificationsOffUntil"

    invoke-static {p1, v0, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    :goto_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, ", "

    .line 903
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    :cond_13
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v0, v3, [Ljava/lang/Object;

    const-string v6, "Exception"

    invoke-static {v6, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 907
    :cond_14
    sget p1, Lorg/telegram/messenger/R$string;->TapToChange:I

    const-string v0, "TapToChange"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    move v8, v7

    .line 909
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$4300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result p1

    if-eq p2, p1, :cond_15

    const/4 v10, 0x1

    goto :goto_9

    :cond_15
    const/4 v10, 0x0

    :goto_9
    move-object v6, v2

    move-object v7, v1

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Cells/NotificationsCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/CharSequence;ZIZ)V

    goto/16 :goto_a

    .line 856
    :pswitch_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 857
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setMultilineDetail(Z)V

    .line 858
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2b

    .line 859
    sget p2, Lorg/telegram/messenger/R$string;->ResetAllNotifications:I

    const-string v0, "ResetAllNotifications"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->UndoAllCustom:I

    const-string v1, "UndoAllCustom"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v3}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_a

    .line 820
    :pswitch_5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v5, p1

    check-cast v5, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 821
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 822
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1700(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_16

    .line 823
    sget p2, Lorg/telegram/messenger/R$string;->InAppSounds:I

    const-string v0, "InAppSounds"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "EnableInAppSounds"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v5, p2, p1, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 824
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_17

    .line 825
    sget p2, Lorg/telegram/messenger/R$string;->InAppVibrate:I

    const-string v0, "InAppVibrate"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "EnableInAppVibrate"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v5, p2, p1, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 826
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1900(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_18

    .line 827
    sget p2, Lorg/telegram/messenger/R$string;->InAppPreview:I

    const-string v0, "InAppPreview"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "EnableInAppPreview"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v5, p2, p1, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 828
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_19

    .line 829
    sget p2, Lorg/telegram/messenger/R$string;->NotificationsImportance:I

    const-string v0, "NotificationsImportance"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "EnableInAppPriority"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v5, p2, p1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 830
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2100(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1a

    .line 831
    sget p2, Lorg/telegram/messenger/R$string;->ContactJoined:I

    const-string v0, "ContactJoined"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "EnableContactJoined"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v5, p2, p1, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 832
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1b

    .line 833
    sget p2, Lorg/telegram/messenger/R$string;->PinnedMessages:I

    const-string v0, "PinnedMessages"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v5, p2, p1, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 834
    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1c

    const-string p2, "EnableAutoNotifications"

    .line 835
    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string p2, "Android Auto"

    invoke-virtual {v5, p2, p1, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 836
    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1d

    .line 837
    sget p2, Lorg/telegram/messenger/R$string;->NotificationsService:I

    const-string v0, "NotificationsService"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    sget p2, Lorg/telegram/messenger/R$string;->NotificationsServiceInfo:I

    const-string v0, "NotificationsServiceInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iget-object p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/messenger/MessagesController;->keepAliveService:Z

    const-string v0, "pushService"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto/16 :goto_a

    .line 838
    :cond_1d
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1e

    .line 839
    sget p2, Lorg/telegram/messenger/R$string;->NotificationsServiceConnection:I

    const-string v0, "NotificationsServiceConnection"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    sget p2, Lorg/telegram/messenger/R$string;->NotificationsServiceConnectionInfo:I

    const-string v0, "NotificationsServiceConnectionInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iget-object p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/messenger/MessagesController;->backgroundConnection:Z

    const-string v0, "pushConnection"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto/16 :goto_a

    .line 840
    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1f

    .line 841
    sget p1, Lorg/telegram/messenger/R$string;->BadgeNumberShow:I

    const-string p2, "BadgeNumberShow"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2700(Lorg/telegram/ui/NotificationsSettingsActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/messenger/NotificationsController;->showBadgeNumber:Z

    invoke-virtual {v5, p1, p2, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 842
    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2800(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_20

    .line 843
    sget p1, Lorg/telegram/messenger/R$string;->BadgeNumberMutedChats:I

    const-string p2, "BadgeNumberMutedChats"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$2900(Lorg/telegram/ui/NotificationsSettingsActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/messenger/NotificationsController;->showBadgeMuted:Z

    invoke-virtual {v5, p1, p2, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 844
    :cond_20
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_21

    .line 845
    sget p1, Lorg/telegram/messenger/R$string;->BadgeNumberUnread:I

    const-string p2, "BadgeNumberUnread"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {p2}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3100(Lorg/telegram/ui/NotificationsSettingsActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/messenger/NotificationsController;->showBadgeMessages:Z

    invoke-virtual {v5, p1, p2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 846
    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_22

    .line 847
    sget p2, Lorg/telegram/messenger/R$string;->InChatSound:I

    const-string v0, "InChatSound"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "EnableInChatSound"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v5, p2, p1, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 848
    :cond_22
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_23

    .line 849
    sget p2, Lorg/telegram/messenger/R$string;->Vibrate:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "EnableCallVibrate"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v5, p2, p1, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 850
    :cond_23
    iget-object p1, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$3400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result p1

    if-ne p2, p1, :cond_2b

    .line 851
    sget p1, Lorg/telegram/messenger/R$string;->AllAccounts:I

    const-string p2, "AllAccounts"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {v5, p1, p2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_a

    .line 799
    :pswitch_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 800
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_24

    .line 801
    sget p2, Lorg/telegram/messenger/R$string;->NotificationsForChats:I

    const-string v0, "NotificationsForChats"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 802
    :cond_24
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_25

    .line 803
    sget p2, Lorg/telegram/messenger/R$string;->InAppNotifications:I

    const-string v0, "InAppNotifications"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 804
    :cond_25
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$300(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_26

    .line 805
    sget p2, Lorg/telegram/messenger/R$string;->Events:I

    const-string v0, "Events"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 806
    :cond_26
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$400(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_27

    .line 807
    sget p2, Lorg/telegram/messenger/R$string;->NotificationsOther:I

    const-string v0, "NotificationsOther"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 808
    :cond_27
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$500(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_28

    .line 809
    sget p2, Lorg/telegram/messenger/R$string;->Reset:I

    const-string v0, "Reset"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 810
    :cond_28
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1000(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_29

    .line 811
    sget p2, Lorg/telegram/messenger/R$string;->VoipNotificationSettings:I

    const-string v0, "VoipNotificationSettings"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 812
    :cond_29
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$600(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2a

    .line 813
    sget p2, Lorg/telegram/messenger/R$string;->BadgeNumber:I

    const-string v0, "BadgeNumber"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 814
    :cond_2a
    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->this$0:Lorg/telegram/ui/NotificationsSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/NotificationsSettingsActivity;->access$1200(Lorg/telegram/ui/NotificationsSettingsActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2b

    .line 815
    sget p2, Lorg/telegram/messenger/R$string;->ShowNotificationsFor:I

    const-string v0, "ShowNotificationsFor"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    :cond_2b
    :goto_a
    return-void

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

    const-string p1, "windowBackgroundWhite"

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    .line 788
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 789
    iget-object p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    const-string v1, "windowBackgroundGrayShadow"

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 783
    :cond_0
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 784
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 780
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 776
    :cond_2
    new-instance p2, Lorg/telegram/ui/Cells/NotificationsCheckCell;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/NotificationsCheckCell;-><init>(Landroid/content/Context;)V

    .line 777
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 772
    :cond_3
    new-instance p2, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .line 773
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 768
    :cond_4
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 769
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 764
    :cond_5
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v0, p0, Lorg/telegram/ui/NotificationsSettingsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    .line 765
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    move-object p1, p2

    .line 792
    :goto_1
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
