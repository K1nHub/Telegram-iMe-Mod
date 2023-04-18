.class Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChatRightsEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatRightsEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private ignoreTextChange:Z

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ChatRightsEditActivity;


# direct methods
.method public static synthetic $r8$lambda$5Yu68ou2Hqs5_Vzwc2clr7CbKOU(Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;Lorg/telegram/ui/Cells/TextCheckCell2;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->lambda$onBindViewHolder$1(Lorg/telegram/ui/Cells/TextCheckCell2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ihpAMnn2X_wtspcJIuTTjekTs_I(Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->lambda$onCreateViewHolder$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/content/Context;)V
    .locals 1

    .line 1472
    iput-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1473
    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 1474
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 1476
    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$5100(Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;)Z
    .locals 0

    .line 1455
    iget-boolean p0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->ignoreTextChange:Z

    return p0
.end method

.method private synthetic lambda$onBindViewHolder$1(Lorg/telegram/ui/Cells/TextCheckCell2;)V
    .locals 2

    .line 1780
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$6100(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1781
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModify:I

    const-string v1, "UserRestrictionsCantModify"

    .line 1782
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModifyEnabled:I

    const-string v1, "UserRestrictionsCantModifyEnabled"

    .line 1783
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    const-string v1, "OK"

    .line 1784
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 1785
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 1786
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void

    .line 1789
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1790
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 1791
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$6500(Lorg/telegram/ui/ChatRightsEditActivity;Z)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Landroid/view/View;)V
    .locals 0

    .line 1618
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$100(Lorg/telegram/ui/ChatRightsEditActivity;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1570
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$200(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1481
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 1482
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$600(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x1

    return-wide v0

    .line 1483
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$700(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    const-wide/16 v0, 0x2

    return-wide v0

    .line 1484
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$800(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const-wide/16 v0, 0x3

    return-wide v0

    .line 1485
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$900(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const-wide/16 v0, 0x4

    return-wide v0

    .line 1486
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1000(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    const-wide/16 v0, 0x5

    return-wide v0

    .line 1487
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1100(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    const-wide/16 v0, 0x6

    return-wide v0

    .line 1488
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1200(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    const-wide/16 v0, 0x7

    return-wide v0

    .line 1489
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1300(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    const-wide/16 v0, 0x8

    return-wide v0

    .line 1490
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1400(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_8

    const-wide/16 v0, 0x9

    return-wide v0

    .line 1491
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_9

    const-wide/16 v0, 0xa

    return-wide v0

    .line 1492
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1600(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_a

    const-wide/16 v0, 0xb

    return-wide v0

    .line 1493
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1700(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_b

    const-wide/16 v0, 0xc

    return-wide v0

    .line 1494
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1800(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_c

    const-wide/16 v0, 0xd

    return-wide v0

    .line 1495
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1900(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_d

    const-wide/16 v0, 0xe

    return-wide v0

    .line 1496
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2000(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_e

    const-wide/16 v0, 0xf

    return-wide v0

    .line 1497
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2100(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_f

    const-wide/16 v0, 0x10

    return-wide v0

    .line 1498
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2200(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_10

    const-wide/16 v0, 0x11

    return-wide v0

    .line 1499
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2300(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_11

    const-wide/16 v0, 0x12

    return-wide v0

    .line 1500
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2400(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_12

    const-wide/16 v0, 0x13

    return-wide v0

    .line 1501
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_13

    const-wide/16 v0, 0x14

    return-wide v0

    .line 1502
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2600(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_14

    const-wide/16 v0, 0x15

    return-wide v0

    .line 1503
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2700(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_15

    const-wide/16 v0, 0x16

    return-wide v0

    .line 1504
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2800(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_16

    const-wide/16 v0, 0x17

    return-wide v0

    .line 1505
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2900(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_17

    const-wide/16 v0, 0x18

    return-wide v0

    .line 1506
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3000(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_18

    const-wide/16 v0, 0x19

    return-wide v0

    .line 1507
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3100(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_19

    const-wide/16 v0, 0x1a

    return-wide v0

    .line 1508
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3200(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1a

    const-wide/16 v0, 0x1b

    return-wide v0

    .line 1509
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3300(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1b

    const-wide/16 v0, 0x1c

    return-wide v0

    .line 1510
    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3400(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1c

    const-wide/16 v0, 0x1d

    return-wide v0

    .line 1511
    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1d

    const-wide/16 v0, 0x1e

    return-wide v0

    .line 1512
    :cond_1d
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3600(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1e

    const-wide/16 v0, 0x1f

    return-wide v0

    .line 1513
    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3700(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1f

    const-wide/16 v0, 0x20

    return-wide v0

    .line 1514
    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3800(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_20

    const-wide/16 v0, 0x21

    return-wide v0

    .line 1515
    :cond_20
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3900(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_21

    const-wide/16 v0, 0x22

    return-wide v0

    .line 1516
    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4000(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_22

    const-wide/16 v0, 0x23

    return-wide v0

    :cond_22
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1519
    :cond_23
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 1963
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$6400(Lorg/telegram/ui/ChatRightsEditActivity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xa

    return p1

    .line 1965
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4000(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/16 p1, 0x9

    return p1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 v0, 0x1

    if-eq p1, v0, :cond_d

    .line 1969
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1600(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-eq p1, v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1800(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-eq p1, v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3100(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-eq p1, v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2000(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    goto/16 :goto_3

    :cond_3
    const/4 v1, 0x2

    if-eq p1, v1, :cond_c

    .line 1971
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2200(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_4

    goto/16 :goto_2

    .line 1973
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$700(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$800(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$900(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1000(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    .line 1974
    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1100(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1300(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1400(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    .line 1975
    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1200(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3000(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$600(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3400(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_5

    goto :goto_1

    .line 1977
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1900(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq p1, v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2400(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p1, v2, :cond_6

    goto :goto_0

    .line 1979
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3200(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    const/4 p1, 0x6

    return p1

    .line 1981
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2300(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 p1, 0x7

    return p1

    .line 1983
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3300(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_9

    const/16 p1, 0x8

    return p1

    :cond_9
    return v1

    :cond_a
    :goto_0
    return v0

    :cond_b
    :goto_1
    const/4 p1, 0x4

    return p1

    :cond_c
    :goto_2
    const/4 p1, 0x3

    return p1

    :cond_d
    :goto_3
    const/4 p1, 0x5

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 6

    .line 1525
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 1526
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4100(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4200(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1200(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v5

    if-ne v1, v5, :cond_1

    return v4

    .line 1529
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4300(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_2

    return v5

    .line 1532
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-ne v1, v3, :cond_16

    :cond_3
    if-ne v0, v2, :cond_16

    .line 1533
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 1534
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$600(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-ne p1, v1, :cond_6

    .line 1535
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4100(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4100(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move v4, v5

    :cond_5
    :goto_0
    return v4

    .line 1537
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4200(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v1

    if-nez v1, :cond_7

    return v5

    .line 1540
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$700(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-ne p1, v1, :cond_a

    .line 1541
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4600(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    move v4, v5

    :cond_9
    :goto_1
    return v4

    .line 1542
    :cond_a
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$800(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-ne p1, v1, :cond_b

    .line 1543
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    return p1

    .line 1544
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$900(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-ne p1, v1, :cond_c

    .line 1545
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    return p1

    .line 1546
    :cond_c
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1000(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-ne p1, v1, :cond_d

    .line 1547
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    return p1

    .line 1548
    :cond_d
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3000(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-ne p1, v1, :cond_e

    .line 1549
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    return p1

    .line 1550
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1100(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-ne p1, v1, :cond_f

    .line 1551
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    return p1

    .line 1552
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1200(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-ne p1, v1, :cond_10

    .line 1553
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    return p1

    .line 1554
    :cond_10
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1300(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-ne p1, v1, :cond_11

    .line 1555
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    return p1

    .line 1556
    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1400(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-ne p1, v1, :cond_12

    .line 1557
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    return p1

    .line 1558
    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-ne p1, v1, :cond_15

    .line 1559
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-eqz p1, :cond_13

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eqz p1, :cond_13

    goto :goto_2

    :cond_13
    move v4, v5

    :cond_14
    :goto_2
    return v4

    .line 1560
    :cond_15
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3400(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-ne p1, v1, :cond_16

    .line 1561
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    return p1

    :cond_16
    const/4 p1, 0x3

    if-eq v0, p1, :cond_17

    if-eq v0, v4, :cond_17

    const/4 p1, 0x5

    if-eq v0, p1, :cond_17

    const/16 p1, 0x8

    if-eq v0, p1, :cond_17

    goto :goto_3

    :cond_17
    move v4, v5

    :goto_3
    return v4
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 13

    .line 1670
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const-string v1, "ChannelCreator"

    const-string v2, "ChannelAdmin"

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_56

    .line 1672
    :pswitch_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 1673
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_0

    move v12, v5

    goto :goto_0

    :cond_0
    move v12, v6

    .line 1674
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1676
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5400(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 1677
    sget p2, Lorg/telegram/messenger/R$string;->user_restrictions_send_gifs:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v8

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-nez p2, :cond_1

    move v10, v5

    goto :goto_1

    :cond_1
    move v10, v6

    :goto_1
    const/4 v11, 0x1

    const-string v9, ""

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    .line 1678
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-eqz p2, :cond_2

    sget v6, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_2
    invoke-virtual {p1, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setIcon(I)V

    goto/16 :goto_56

    .line 1679
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5600(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_6

    .line 1680
    sget p2, Lorg/telegram/messenger/R$string;->user_restrictions_send_games:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v8

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-nez p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-nez p2, :cond_4

    move v10, v5

    goto :goto_2

    :cond_4
    move v10, v6

    :goto_2
    const/4 v11, 0x1

    const-string v9, ""

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    .line 1681
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-eqz p2, :cond_5

    sget v6, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_5
    invoke-virtual {p1, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setIcon(I)V

    goto/16 :goto_56

    .line 1682
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5700(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_9

    .line 1683
    sget p2, Lorg/telegram/messenger/R$string;->user_restrictions_send_inline:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v8

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-nez p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-nez p2, :cond_7

    move v10, v5

    goto :goto_3

    :cond_7
    move v10, v6

    :goto_3
    const/4 v11, 0x1

    const-string v9, ""

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    .line 1684
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-eqz p2, :cond_8

    sget v6, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_8
    invoke-virtual {p1, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setIcon(I)V

    goto/16 :goto_56

    .line 1686
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2700(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_c

    .line 1687
    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPermissionStickersGifs:I

    const-string v0, "SendMediaPermissionStickersGifs"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez p2, :cond_a

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez p2, :cond_a

    move v10, v5

    goto :goto_4

    :cond_a
    move v10, v6

    :goto_4
    const/4 v11, 0x1

    const-string v9, ""

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    .line 1688
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz p2, :cond_b

    sget v6, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_b
    invoke-virtual {p1, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setIcon(I)V

    goto/16 :goto_56

    .line 1689
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2900(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_f

    .line 1690
    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsEmbedLinks:I

    const-string v0, "UserRestrictionsEmbedLinks"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez p2, :cond_d

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez p2, :cond_d

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez p2, :cond_d

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez p2, :cond_d

    move v10, v5

    goto :goto_5

    :cond_d
    move v10, v6

    :goto_5
    const/4 v11, 0x1

    const-string v9, ""

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    .line 1691
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eqz p2, :cond_e

    sget v6, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_e
    invoke-virtual {p1, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setIcon(I)V

    goto/16 :goto_56

    .line 1692
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2800(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_12

    .line 1693
    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPolls:I

    const-string v0, "SendMediaPolls"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez p2, :cond_10

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez p2, :cond_10

    move v10, v5

    goto :goto_6

    :cond_10
    move v10, v6

    :goto_6
    const/4 v11, 0x1

    const-string v9, ""

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    .line 1694
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eqz p2, :cond_11

    sget v6, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_11
    invoke-virtual {p1, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setIcon(I)V

    goto/16 :goto_56

    .line 1695
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2600(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_15

    .line 1696
    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPermissionPhotos:I

    const-string v0, "SendMediaPermissionPhotos"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-nez p2, :cond_13

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-nez p2, :cond_13

    move v10, v5

    goto :goto_7

    :cond_13
    move v10, v6

    :goto_7
    const/4 v11, 0x1

    const-string v9, ""

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    .line 1697
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eqz p2, :cond_14

    sget v6, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_14
    invoke-virtual {p1, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setIcon(I)V

    goto/16 :goto_56

    .line 1698
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_18

    .line 1699
    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPermissionVideos:I

    const-string v0, "SendMediaPermissionVideos"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez p2, :cond_16

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez p2, :cond_16

    move v10, v5

    goto :goto_8

    :cond_16
    move v10, v6

    :goto_8
    const/4 v11, 0x1

    const-string v9, ""

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    .line 1700
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz p2, :cond_17

    sget v6, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_17
    invoke-virtual {p1, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setIcon(I)V

    goto/16 :goto_56

    .line 1701
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3700(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1b

    .line 1702
    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPermissionMusic:I

    const-string v0, "SendMediaPermissionMusic"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez p2, :cond_19

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez p2, :cond_19

    move v10, v5

    goto :goto_9

    :cond_19
    move v10, v6

    :goto_9
    const/4 v11, 0x1

    const-string v9, ""

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    .line 1703
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz p2, :cond_1a

    sget v6, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_1a
    invoke-virtual {p1, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setIcon(I)V

    goto/16 :goto_56

    .line 1704
    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3600(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1e

    .line 1705
    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPermissionFiles:I

    const-string v0, "SendMediaPermissionFiles"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez p2, :cond_1c

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez p2, :cond_1c

    move v10, v5

    goto :goto_a

    :cond_1c
    move v10, v6

    :goto_a
    const/4 v11, 0x1

    const-string v9, ""

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    .line 1706
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz p2, :cond_1d

    sget v6, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_1d
    invoke-virtual {p1, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setIcon(I)V

    goto/16 :goto_56

    .line 1707
    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3800(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_21

    .line 1708
    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPermissionVoice:I

    const-string v0, "SendMediaPermissionVoice"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez p2, :cond_1f

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez p2, :cond_1f

    move v10, v5

    goto :goto_b

    :cond_1f
    move v10, v6

    :goto_b
    const/4 v11, 0x1

    const-string v9, ""

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    .line 1709
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz p2, :cond_20

    sget v6, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_20
    invoke-virtual {p1, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setIcon(I)V

    goto/16 :goto_56

    .line 1710
    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3900(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_91

    .line 1711
    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPermissionRound:I

    const-string v0, "SendMediaPermissionRound"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez p2, :cond_22

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez p2, :cond_22

    move v10, v5

    goto :goto_c

    :cond_22
    move v10, v6

    :goto_c
    const/4 v11, 0x1

    const-string v9, ""

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    .line 1712
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz p2, :cond_23

    sget v6, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_23
    invoke-virtual {p1, v6}, Lorg/telegram/ui/Cells/CheckBoxCell;->setIcon(I)V

    goto/16 :goto_56

    .line 1930
    :pswitch_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 1932
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5800(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p2

    if-eqz p2, :cond_24

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4100(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz p2, :cond_24

    .line 1933
    sget p2, Lorg/telegram/messenger/R$string;->ChannelCreator:I

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_d

    .line 1935
    :cond_24
    sget p2, Lorg/telegram/messenger/R$string;->ChannelAdmin:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 1937
    :goto_d
    iput-boolean v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->ignoreTextChange:Z

    .line 1938
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4300(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v1

    if-nez v1, :cond_26

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4100(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v1, :cond_25

    goto :goto_e

    :cond_25
    move v1, v6

    goto :goto_f

    :cond_26
    :goto_e
    move v1, v5

    :goto_f
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1939
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 1940
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1941
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5200(Lorg/telegram/ui/ChatRightsEditActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v6}, Lorg/telegram/ui/Cells/PollEditTextCell;->setTextAndHint(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 1942
    iput-boolean v6, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->ignoreTextChange:Z

    goto/16 :goto_56

    .line 1918
    :pswitch_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextDetailCell;

    .line 1919
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3200(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_91

    .line 1921
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    if-eqz p2, :cond_28

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v0, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x12cc0300

    cmp-long p2, v0, v2

    if-lez p2, :cond_27

    goto :goto_10

    .line 1924
    :cond_27
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->until_date:I

    int-to-long v0, p2

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatDateForBan(J)Ljava/lang/String;

    move-result-object p2

    goto :goto_11

    .line 1922
    :cond_28
    :goto_10
    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsUntilForever:I

    const-string v0, "UserRestrictionsUntilForever"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 1926
    :goto_11
    sget v0, Lorg/telegram/messenger/R$string;->UserRestrictionsDuration:I

    const-string v1, "UserRestrictionsDuration"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v6}, Lorg/telegram/ui/Cells/TextDetailCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_56

    .line 1901
    :pswitch_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 1902
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v4, :cond_2a

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1600(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-eq p2, v0, :cond_29

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2400(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2a

    .line 1903
    :cond_29
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$6300(Lorg/telegram/ui/ChatRightsEditActivity;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_12

    :cond_2a
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1905
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1907
    :goto_12
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1600(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    const-string v1, "windowBackgroundGrayShadow"

    if-ne p2, v0, :cond_2c

    .line 1908
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1700(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v3, :cond_2b

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2300(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v3, :cond_2b

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    goto :goto_13

    :cond_2b
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    :goto_13
    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_56

    .line 1909
    :cond_2c
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1800(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2d

    .line 1910
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_56

    .line 1911
    :cond_2d
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2400(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_2f

    .line 1912
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4300(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    goto :goto_14

    :cond_2e
    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    :goto_14
    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_56

    .line 1914
    :cond_2f
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_56

    .line 1773
    :pswitch_5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell2;

    .line 1774
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v4, :cond_31

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4200(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_15

    :cond_30
    move v0, v6

    goto :goto_16

    :cond_31
    :goto_15
    move v0, v5

    .line 1775
    :goto_16
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4100(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4100(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v1, :cond_32

    move v1, v5

    goto :goto_17

    :cond_32
    move v1, v6

    .line 1776
    :goto_17
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4000(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p2, v2, :cond_35

    .line 1777
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5900(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    .line 1778
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsSendMedia:I

    const-string v2, "UserRestrictionsSendMedia"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-lez v0, :cond_33

    move v2, v5

    goto :goto_18

    :cond_33
    move v2, v6

    :goto_18
    invoke-virtual {p1, v1, v2, v5, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZZ)V

    .line 1779
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v7, "%d/9"

    invoke-virtual {v7, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$6000(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v1

    xor-int/2addr v1, v5

    new-instance v2, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;Lorg/telegram/ui/Cells/TextCheckCell2;)V

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setCollapseArrow(Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 1793
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$6100(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_34

    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_19

    :cond_34
    move v0, v6

    :goto_19
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_51

    .line 1794
    :cond_35
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$600(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p2, v2, :cond_38

    .line 1795
    sget v0, Lorg/telegram/messenger/R$string;->ManageGroup:I

    const-string v2, "ManageGroup"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4200(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v2

    invoke-virtual {p1, v0, v2, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1796
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-nez v0, :cond_37

    if-eqz v1, :cond_36

    goto :goto_1a

    :cond_36
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_1b

    :cond_37
    :goto_1a
    move v0, v6

    :goto_1b
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_51

    .line 1797
    :cond_38
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$700(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p2, v2, :cond_45

    .line 1798
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne v2, v4, :cond_39

    goto :goto_1f

    .line 1807
    :cond_39
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v5, :cond_84

    .line 1808
    sget v0, Lorg/telegram/messenger/R$string;->UserRestrictionsChangeInfo:I

    const-string v1, "UserRestrictionsChangeInfo"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-nez v1, :cond_3a

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-nez v1, :cond_3a

    move v1, v5

    goto :goto_1c

    :cond_3a
    move v1, v6

    :goto_1c
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3400(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eq v2, v3, :cond_3b

    move v2, v5

    goto :goto_1d

    :cond_3b
    move v2, v6

    :goto_1d
    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1809
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eqz v0, :cond_3c

    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_1e

    :cond_3c
    move v0, v6

    :goto_1e
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_51

    .line 1799
    :cond_3d
    :goto_1f
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4600(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1800
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminChangeChannelInfo:I

    const-string v3, "EditAdminChangeChannelInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$6200(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-eqz v0, :cond_3e

    move v0, v5

    goto :goto_20

    :cond_3e
    move v0, v6

    :goto_20
    invoke-virtual {p1, v2, v0, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_22

    .line 1802
    :cond_3f
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminChangeGroupInfo:I

    const-string v3, "EditAdminChangeGroupInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_40

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$6200(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-nez v0, :cond_41

    :cond_40
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-nez v0, :cond_42

    :cond_41
    move v0, v5

    goto :goto_21

    :cond_42
    move v0, v6

    :goto_21
    invoke-virtual {p1, v2, v0, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1804
    :goto_22
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v4, :cond_84

    .line 1805
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    if-nez v0, :cond_44

    if-eqz v1, :cond_43

    goto :goto_23

    :cond_43
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_24

    :cond_44
    :goto_23
    move v0, v6

    :goto_24
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_51

    .line 1811
    :cond_45
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$800(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p2, v2, :cond_49

    .line 1812
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminPostMessages:I

    const-string v3, "EditAdminPostMessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_46

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$6200(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-eqz v0, :cond_46

    move v0, v5

    goto :goto_25

    :cond_46
    move v0, v6

    :goto_25
    invoke-virtual {p1, v2, v0, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1813
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v4, :cond_84

    .line 1814
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    if-nez v0, :cond_48

    if-eqz v1, :cond_47

    goto :goto_26

    :cond_47
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_27

    :cond_48
    :goto_26
    move v0, v6

    :goto_27
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_51

    .line 1816
    :cond_49
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$900(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p2, v2, :cond_4d

    .line 1817
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminEditMessages:I

    const-string v3, "EditAdminEditMessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$6200(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-eqz v0, :cond_4a

    move v0, v5

    goto :goto_28

    :cond_4a
    move v0, v6

    :goto_28
    invoke-virtual {p1, v2, v0, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1818
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v4, :cond_84

    .line 1819
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    if-nez v0, :cond_4c

    if-eqz v1, :cond_4b

    goto :goto_29

    :cond_4b
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_2a

    :cond_4c
    :goto_29
    move v0, v6

    :goto_2a
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_51

    .line 1821
    :cond_4d
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1000(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p2, v2, :cond_53

    .line 1822
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4600(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 1823
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminDeleteMessages:I

    const-string v3, "EditAdminDeleteMessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$6200(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-eqz v0, :cond_4e

    move v0, v5

    goto :goto_2b

    :cond_4e
    move v0, v6

    :goto_2b
    invoke-virtual {p1, v2, v0, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_2d

    .line 1825
    :cond_4f
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminGroupDeleteMessages:I

    const-string v3, "EditAdminGroupDeleteMessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_50

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$6200(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-eqz v0, :cond_50

    move v0, v5

    goto :goto_2c

    :cond_50
    move v0, v6

    :goto_2c
    invoke-virtual {p1, v2, v0, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1827
    :goto_2d
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v4, :cond_84

    .line 1828
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    if-nez v0, :cond_52

    if-eqz v1, :cond_51

    goto :goto_2e

    :cond_51
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_2f

    :cond_52
    :goto_2e
    move v0, v6

    :goto_2f
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_51

    .line 1830
    :cond_53
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1100(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p2, v2, :cond_58

    .line 1831
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminAddAdmins:I

    const-string v7, "EditAdminAddAdmins"

    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_54

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$6200(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-eqz v0, :cond_54

    move v0, v5

    goto :goto_30

    :cond_54
    move v0, v6

    :goto_30
    iget-object v7, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1200(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v7

    if-eq v7, v3, :cond_55

    move v3, v5

    goto :goto_31

    :cond_55
    move v3, v6

    :goto_31
    invoke-virtual {p1, v2, v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1832
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v4, :cond_84

    .line 1833
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-nez v0, :cond_57

    if-eqz v1, :cond_56

    goto :goto_32

    :cond_56
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_33

    :cond_57
    :goto_32
    move v0, v6

    :goto_33
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_51

    .line 1835
    :cond_58
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1200(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p2, v2, :cond_5d

    .line 1836
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminSendAnonymously:I

    const-string v7, "EditAdminSendAnonymously"

    invoke-static {v7, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_59

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$6200(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-eqz v0, :cond_59

    move v0, v5

    goto :goto_34

    :cond_59
    move v0, v6

    :goto_34
    iget-object v7, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3400(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v7

    if-eq v7, v3, :cond_5a

    move v3, v5

    goto :goto_35

    :cond_5a
    move v3, v6

    :goto_35
    invoke-virtual {p1, v2, v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1837
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v4, :cond_84

    .line 1838
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->anonymous:Z

    if-nez v0, :cond_5c

    if-eqz v1, :cond_5b

    goto :goto_36

    :cond_5b
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_37

    :cond_5c
    :goto_36
    move v0, v6

    :goto_37
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_51

    .line 1840
    :cond_5d
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1300(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p2, v2, :cond_61

    .line 1841
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminBanUsers:I

    const-string v3, "EditAdminBanUsers"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$6200(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-eqz v0, :cond_5e

    move v0, v5

    goto :goto_38

    :cond_5e
    move v0, v6

    :goto_38
    invoke-virtual {p1, v2, v0, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1842
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v4, :cond_84

    .line 1843
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    if-nez v0, :cond_60

    if-eqz v1, :cond_5f

    goto :goto_39

    :cond_5f
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_3a

    :cond_60
    :goto_39
    move v0, v6

    :goto_3a
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_51

    .line 1845
    :cond_61
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3000(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p2, v2, :cond_65

    .line 1846
    sget v2, Lorg/telegram/messenger/R$string;->StartVoipChatPermission:I

    const-string v3, "StartVoipChatPermission"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_62

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$6200(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-eqz v0, :cond_62

    move v0, v5

    goto :goto_3b

    :cond_62
    move v0, v6

    :goto_3b
    invoke-virtual {p1, v2, v0, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1847
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v4, :cond_84

    .line 1848
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-nez v0, :cond_64

    if-eqz v1, :cond_63

    goto :goto_3c

    :cond_63
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_3d

    :cond_64
    :goto_3c
    move v0, v6

    :goto_3d
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_51

    .line 1850
    :cond_65
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$3400(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p2, v2, :cond_6e

    .line 1851
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    const-string v3, "ManageTopicsPermission"

    if-nez v2, :cond_67

    .line 1852
    sget v1, Lorg/telegram/messenger/R$string;->ManageTopicsPermission:I

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_66

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$6200(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-eqz v0, :cond_66

    move v0, v5

    goto :goto_3e

    :cond_66
    move v0, v6

    :goto_3e
    invoke-virtual {p1, v1, v0, v6}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_51

    .line 1853
    :cond_67
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne v2, v5, :cond_6a

    .line 1854
    sget v0, Lorg/telegram/messenger/R$string;->CreateTopicsPermission:I

    const-string v1, "CreateTopicsPermission"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-nez v1, :cond_68

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-nez v1, :cond_68

    move v1, v5

    goto :goto_3f

    :cond_68
    move v1, v6

    :goto_3f
    invoke-virtual {p1, v0, v1, v6}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1855
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-eqz v0, :cond_69

    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_40

    :cond_69
    move v0, v6

    :goto_40
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_51

    .line 1856
    :cond_6a
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne v2, v4, :cond_84

    .line 1857
    sget v2, Lorg/telegram/messenger/R$string;->ManageTopicsPermission:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$6200(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-eqz v0, :cond_6b

    move v0, v5

    goto :goto_41

    :cond_6b
    move v0, v6

    :goto_41
    invoke-virtual {p1, v2, v0, v6}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1858
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    if-nez v0, :cond_6d

    if-eqz v1, :cond_6c

    goto :goto_42

    :cond_6c
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_43

    :cond_6d
    :goto_42
    move v0, v6

    :goto_43
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_51

    .line 1860
    :cond_6e
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1400(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p2, v2, :cond_77

    .line 1861
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    const-string v3, "EditAdminAddUsersViaLink"

    if-nez v2, :cond_70

    .line 1862
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4100(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/telegram/messenger/ChatObject;->isActionBannedByDefault(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1863
    sget v0, Lorg/telegram/messenger/R$string;->EditAdminAddUsers:I

    const-string v1, "EditAdminAddUsers"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$6200(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    invoke-virtual {p1, v0, v1, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_51

    .line 1865
    :cond_6f
    sget v0, Lorg/telegram/messenger/R$string;->EditAdminAddUsersViaLink:I

    invoke-static {v3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$6200(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    invoke-virtual {p1, v0, v1, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto/16 :goto_51

    .line 1867
    :cond_70
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne v2, v5, :cond_73

    .line 1868
    sget v0, Lorg/telegram/messenger/R$string;->UserRestrictionsInviteUsers:I

    const-string v1, "UserRestrictionsInviteUsers"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-nez v1, :cond_71

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-nez v1, :cond_71

    move v1, v5

    goto :goto_44

    :cond_71
    move v1, v6

    :goto_44
    invoke-virtual {p1, v0, v1, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1869
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-eqz v0, :cond_72

    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_45

    :cond_72
    move v0, v6

    :goto_45
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_51

    .line 1870
    :cond_73
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne v2, v4, :cond_84

    .line 1871
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminAddUsersViaLink:I

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_74

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$6200(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-eqz v0, :cond_74

    move v0, v5

    goto :goto_46

    :cond_74
    move v0, v6

    :goto_46
    invoke-virtual {p1, v2, v0, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1872
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    if-nez v0, :cond_76

    if-eqz v1, :cond_75

    goto :goto_47

    :cond_75
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_48

    :cond_76
    :goto_47
    move v0, v6

    :goto_48
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_51

    .line 1874
    :cond_77
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne p2, v2, :cond_81

    .line 1875
    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-eqz v2, :cond_7b

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v2

    if-ne v2, v4, :cond_78

    goto :goto_4b

    .line 1880
    :cond_78
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v5, :cond_84

    .line 1881
    sget v0, Lorg/telegram/messenger/R$string;->UserRestrictionsPinMessages:I

    const-string v1, "UserRestrictionsPinMessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-nez v1, :cond_79

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-nez v1, :cond_79

    move v1, v5

    goto :goto_49

    :cond_79
    move v1, v6

    :goto_49
    invoke-virtual {p1, v0, v1, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1882
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eqz v0, :cond_7a

    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_4a

    :cond_7a
    move v0, v6

    :goto_4a
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_51

    .line 1876
    :cond_7b
    :goto_4b
    sget v2, Lorg/telegram/messenger/R$string;->EditAdminPinMessages:I

    const-string v3, "EditAdminPinMessages"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$6200(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-nez v0, :cond_7d

    :cond_7c
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-nez v0, :cond_7e

    :cond_7d
    move v0, v5

    goto :goto_4c

    :cond_7e
    move v0, v6

    :goto_4c
    invoke-virtual {p1, v2, v0, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1877
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v4, :cond_84

    .line 1878
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4400(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    if-nez v0, :cond_80

    if-eqz v1, :cond_7f

    goto :goto_4d

    :cond_7f
    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_4e

    :cond_80
    :goto_4d
    move v0, v6

    :goto_4e
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto :goto_51

    .line 1884
    :cond_81
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_84

    .line 1885
    sget v0, Lorg/telegram/messenger/R$string;->UserRestrictionsSend:I

    const-string v1, "UserRestrictionsSend"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v1, :cond_82

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v1, :cond_82

    move v1, v5

    goto :goto_4f

    :cond_82
    move v1, v6

    :goto_4f
    invoke-virtual {p1, v0, v1, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 1886
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz v0, :cond_83

    sget v0, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    goto :goto_50

    :cond_83
    move v0, v6

    :goto_50
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    .line 1889
    :cond_84
    :goto_51
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne v0, v4, :cond_85

    goto/16 :goto_56

    .line 1895
    :cond_85
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_91

    .line 1896
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-nez p2, :cond_86

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4500(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-nez p2, :cond_86

    goto :goto_52

    :cond_86
    move v5, v6

    :goto_52
    invoke-virtual {p1, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setEnabled(Z)V

    goto/16 :goto_56

    .line 1758
    :pswitch_6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    if-ne p2, v4, :cond_8a

    .line 1760
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p2

    if-eq p2, v4, :cond_89

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5800(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    if-eqz p2, :cond_87

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5800(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz p2, :cond_87

    goto :goto_53

    .line 1762
    :cond_87
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p2

    if-nez p2, :cond_88

    .line 1763
    sget p2, Lorg/telegram/messenger/R$string;->EditAdminWhatCanDo:I

    const-string v0, "EditAdminWhatCanDo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_56

    .line 1764
    :cond_88
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p2

    if-ne p2, v5, :cond_91

    .line 1765
    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsCanDo:I

    const-string v0, "UserRestrictionsCanDo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_56

    .line 1761
    :cond_89
    :goto_53
    sget p2, Lorg/telegram/messenger/R$string;->BotRestrictionsCanDo:I

    const-string v0, "BotRestrictionsCanDo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_56

    .line 1767
    :cond_8a
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2200(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_91

    .line 1768
    sget p2, Lorg/telegram/messenger/R$string;->EditAdminRank:I

    const-string v0, "EditAdminRank"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_56

    .line 1738
    :pswitch_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 1739
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1700(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_8c

    const-string p2, "windowBackgroundWhiteRedText5"

    .line 1740
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 1741
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1742
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p2

    if-nez p2, :cond_8b

    .line 1743
    sget p2, Lorg/telegram/messenger/R$string;->EditAdminRemoveAdmin:I

    const-string v0, "EditAdminRemoveAdmin"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_56

    .line 1744
    :cond_8b
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p2

    if-ne p2, v5, :cond_91

    .line 1745
    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsBlock:I

    const-string v0, "UserRestrictionsBlock"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_56

    .line 1747
    :cond_8c
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2100(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_91

    const-string p2, "windowBackgroundWhiteBlackText"

    .line 1748
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    .line 1749
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 1750
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4600(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result p2

    if-eqz p2, :cond_8d

    .line 1751
    sget p2, Lorg/telegram/messenger/R$string;->EditAdminChannelTransfer:I

    const-string v0, "EditAdminChannelTransfer"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_56

    .line 1753
    :cond_8d
    sget p2, Lorg/telegram/messenger/R$string;->EditAdminGroupTransfer:I

    const-string v0, "EditAdminGroupTransfer"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v6}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_56

    .line 1724
    :pswitch_8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1725
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$1900(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_8e

    .line 1726
    sget p2, Lorg/telegram/messenger/R$string;->EditAdminCantEdit:I

    const-string v0, "EditAdminCantEdit"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_56

    .line 1727
    :cond_8e
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2400(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p2, v0, :cond_91

    .line 1729
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5800(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result p2

    if-eqz p2, :cond_8f

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4100(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz p2, :cond_8f

    .line 1730
    sget p2, Lorg/telegram/messenger/R$string;->ChannelCreator:I

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_54

    .line 1732
    :cond_8f
    sget p2, Lorg/telegram/messenger/R$string;->ChannelAdmin:I

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 1734
    :goto_54
    sget v0, Lorg/telegram/messenger/R$string;->EditAdminRankInfo:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p2, v1, v6

    const-string p2, "EditAdminRankInfo"

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_56

    .line 1716
    :pswitch_9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/UserCell2;

    .line 1718
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$500(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result p2

    const/4 v0, 0x0

    if-ne p2, v4, :cond_90

    .line 1719
    sget p2, Lorg/telegram/messenger/R$string;->Bot:I

    const-string v1, "Bot"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_55

    :cond_90
    move-object p2, v0

    .line 1721
    :goto_55
    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5800(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2, v6}, Lorg/telegram/ui/Cells/UserCell2;->setData(Lorg/telegram/tgnet/TLObject;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    :cond_91
    :goto_56
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 13

    const/16 p1, 0xe

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "windowBackgroundWhite"

    packed-switch p2, :pswitch_data_0

    .line 1587
    :pswitch_0
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 1588
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 1657
    :pswitch_1
    new-instance p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/16 v4, 0x15

    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-direct {p2, v2, v0, v4, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1658
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/CheckBoxCell;->getCheckBoxRound()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 1659
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/CheckBoxCell;->getCheckBoxRound()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p1

    const-string v0, "switch2TrackChecked"

    const-string v2, "radioBackground"

    const-string v4, "checkboxCheck"

    invoke-virtual {p1, v0, v2, v4}, Lorg/telegram/ui/Components/CheckBox2;->setColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setEnabled(Z)V

    .line 1662
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    .line 1607
    :pswitch_2
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4702(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 1608
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4700(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    const-string v0, "windowBackgroundGray"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1609
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p2, v3}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4802(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 1610
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    new-instance v3, Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1, v2, v2}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    invoke-static {p2, v3}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4902(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/Components/AnimatedTextView;)Lorg/telegram/ui/Components/AnimatedTextView;

    .line 1611
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4900(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object p2

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1612
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4900(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object p2

    const/4 v3, -0x1

    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 1613
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4900(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 1614
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4900(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 1615
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4900(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lorg/telegram/messenger/R$string;->AddBotButton:I

    const-string v6, "AddBotButton"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4200(Lorg/telegram/ui/ChatRightsEditActivity;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget v5, Lorg/telegram/messenger/R$string;->AddBotButtonAsAdmin:I

    const-string v6, "AddBotButtonAsAdmin"

    goto :goto_0

    :cond_0
    sget v5, Lorg/telegram/messenger/R$string;->AddBotButtonAsMember:I

    const-string v6, "AddBotButtonAsMember"

    :goto_0
    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1616
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4800(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v4, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4900(Lorg/telegram/ui/ChatRightsEditActivity;)Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v4

    const/4 v5, -0x2

    invoke-static {v5, v5, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1617
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4800(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    new-array p2, v1, [F

    const/high16 v1, 0x40800000    # 4.0f

    aput v1, p2, v2

    const-string v1, "featuredStickers_addButton"

    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(Ljava/lang/String;[F)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1618
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4800(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1619
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4700(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4800(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    const/4 v6, -0x1

    const/16 v7, 0x30

    const/16 v8, 0x77

    const/16 v9, 0xe

    const/16 v10, 0x1c

    const/16 v11, 0xe

    const/16 v12, 0xe

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1620
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4700(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p2, v3, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1621
    new-instance p1, Landroid/view/View;

    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1622
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1623
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4700(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 1624
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4700(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 1625
    iget-object p2, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4700(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    const/4 v0, -0x1

    const/16 v1, 0x320

    const/16 v2, 0x57

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, -0x320

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1626
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$4700(Lorg/telegram/ui/ChatRightsEditActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    goto/16 :goto_1

    .line 1629
    :pswitch_3
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    new-instance p2, Lorg/telegram/ui/Cells/PollEditTextCell;

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lorg/telegram/ui/Cells/PollEditTextCell;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    invoke-static {p1, p2}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5002(Lorg/telegram/ui/ChatRightsEditActivity;Lorg/telegram/ui/Cells/PollEditTextCell;)Lorg/telegram/ui/Cells/PollEditTextCell;

    move-result-object p2

    .line 1630
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1631
    new-instance p1, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->addTextWatcher(Landroid/text/TextWatcher;)V

    goto :goto_1

    .line 1603
    :pswitch_4
    new-instance p2, Lorg/telegram/ui/Cells/TextDetailCell;

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/TextDetailCell;-><init>(Landroid/content/Context;)V

    .line 1604
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 1600
    :pswitch_5
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 1596
    :pswitch_6
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell2;

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell2;-><init>(Landroid/content/Context;)V

    .line 1597
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 1591
    :pswitch_7
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v5, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/16 v7, 0x15

    const/16 v8, 0xf

    const/4 v9, 0x1

    const-string v6, "windowBackgroundWhiteBlueHeader"

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 1592
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 1582
    :pswitch_8
    new-instance p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 1583
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    const-string v1, "windowBackgroundGrayShadow"

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1578
    :pswitch_9
    new-instance p2, Lorg/telegram/ui/Cells/UserCell2;

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1, v0, v2}, Lorg/telegram/ui/Cells/UserCell2;-><init>(Landroid/content/Context;II)V

    .line 1579
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1665
    :goto_1
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1949
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2200(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1950
    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->access$5300(Lorg/telegram/ui/ChatRightsEditActivity;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1956
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatRightsEditActivity;->access$2300(Lorg/telegram/ui/ChatRightsEditActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1957
    iget-object p1, p0, Lorg/telegram/ui/ChatRightsEditActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
