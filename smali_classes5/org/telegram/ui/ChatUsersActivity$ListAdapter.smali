.class Lorg/telegram/ui/ChatUsersActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ChatUsersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatUsersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ChatUsersActivity;


# direct methods
.method public static synthetic $r8$lambda$Xr7PIkQyIu3_GPO5ta7IQSFNZ7U(Lorg/telegram/ui/ChatUsersActivity$ListAdapter;Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->lambda$onCreateViewHolder$0(Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$u7f3YhZ5vKOxE68xtgeTezDCFhI(Lorg/telegram/ui/ChatUsersActivity$ListAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->lambda$onCreateViewHolder$1(I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;)V
    .locals 0

    .line 3091
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 3092
    iput-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z
    .locals 1

    .line 3144
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$600(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object p1

    .line 3145
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    xor-int/lit8 p2, p2, 0x1

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->access$2700(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;Z)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$onCreateViewHolder$1(I)V
    .locals 1

    .line 3223
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$1700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3226
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;->access$3202(Lorg/telegram/ui/ChatUsersActivity;I)I

    .line 3227
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->access$600(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$4200(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/tgnet/TLObject;
    .locals 2

    .line 3619
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$3300(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$3400(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3620
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$1600(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->access$3300(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    return-object p1

    .line 3621
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$3500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$3600(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3622
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$9100(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->access$3500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    return-object p1

    .line 3623
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$8400(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$3700(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 3624
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$9200(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->access$8400(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 3133
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$3100(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 3581
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$4100(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$4800(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$5000(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$5100(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto/16 :goto_6

    .line 3583
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$3300(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$3400(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-lt p1, v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    .line 3584
    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$8400(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$3700(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-lt p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    .line 3585
    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$3500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-lt p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$3600(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ge p1, v0, :cond_4

    :cond_3
    return v1

    .line 3587
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$5200(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$5300(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$1300(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    goto/16 :goto_5

    .line 3589
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$5400(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$1200(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$5500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$5600(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    goto/16 :goto_4

    .line 3591
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$4000(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$4200(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$4600(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$3900(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$4500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_7

    goto/16 :goto_3

    .line 3593
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$8500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_8

    const/4 p1, 0x4

    return p1

    .line 3595
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$8600(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_9

    const/4 p1, 0x6

    return p1

    .line 3597
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$5700(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$6000(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$6100(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$6200(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    .line 3598
    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$6700(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$6800(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$5900(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_a

    goto/16 :goto_2

    .line 3600
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$4900(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$7100(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$7000(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$7200(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_b

    goto :goto_1

    .line 3602
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$8700(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_c

    const/16 p1, 0x9

    return p1

    .line 3604
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$8800(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_d

    const/16 p1, 0xa

    return p1

    .line 3606
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$8900(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_e

    const/16 p1, 0xb

    return p1

    .line 3608
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$2900(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq p1, v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$3000(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_f

    goto :goto_0

    .line 3610
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatUsersActivity;->access$9000(Lorg/telegram/ui/ChatUsersActivity;I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p1, 0xd

    return p1

    .line 3612
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$6300(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-ne p1, v0, :cond_11

    const/16 p1, 0xe

    return p1

    :cond_11
    return v1

    :cond_12
    :goto_0
    const/16 p1, 0xc

    return p1

    :cond_13
    :goto_1
    const/16 p1, 0x8

    return p1

    :cond_14
    :goto_2
    const/4 p1, 0x7

    return p1

    :cond_15
    :goto_3
    const/4 p1, 0x1

    return p1

    :cond_16
    :goto_4
    const/4 p1, 0x5

    return p1

    :cond_17
    :goto_5
    const/4 p1, 0x3

    return p1

    :cond_18
    :goto_6
    const/4 p1, 0x2

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 6

    .line 3097
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_8

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 3101
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    .line 3102
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->getCurrentObject()Ljava/lang/Object;

    move-result-object p1

    .line 3103
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-eq v0, v2, :cond_1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1

    .line 3104
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .line 3105
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v2

    .line 3111
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    if-eqz v0, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v4, 0x6

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v4, 0xc

    const/16 v5, 0xd

    if-ne v0, v4, :cond_5

    .line 3116
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$2900(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne p1, v4, :cond_4

    .line 3117
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    invoke-static {p1, v5}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    return p1

    .line 3118
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$3000(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne p1, v4, :cond_5

    .line 3119
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    invoke-static {p1, v3}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    return p1

    :cond_5
    if-ne v0, v5, :cond_6

    return v2

    :cond_6
    return v1

    :cond_7
    :goto_0
    return v2

    .line 3099
    :cond_8
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 3244
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    const-string v4, ""

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    const-string v8, "windowBackgroundGrayShadow"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_23

    .line 3536
    :pswitch_1
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 3537
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 3538
    :goto_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 3540
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$7300(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 3541
    sget v2, Lorg/telegram/messenger/R$string;->user_restrictions_send_gifs:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$5800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    xor-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    const-string v4, ""

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    goto/16 :goto_2

    .line 3542
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$7400(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 3543
    sget v2, Lorg/telegram/messenger/R$string;->user_restrictions_send_games:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$5800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    xor-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    const-string v4, ""

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    goto/16 :goto_2

    .line 3544
    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$7500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 3545
    sget v2, Lorg/telegram/messenger/R$string;->user_restrictions_send_inline:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$5800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    xor-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    const-string v4, ""

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    goto/16 :goto_2

    .line 3547
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$7600(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 3548
    sget v2, Lorg/telegram/messenger/R$string;->SendMediaPermissionPhotos:I

    const-string v3, "SendMediaPermissionPhotos"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$5800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    xor-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    const-string v4, ""

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    goto/16 :goto_2

    .line 3549
    :cond_4
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$7700(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 3550
    sget v2, Lorg/telegram/messenger/R$string;->SendMediaPermissionVideos:I

    const-string v3, "SendMediaPermissionVideos"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$5800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    xor-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    const-string v4, ""

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    goto/16 :goto_2

    .line 3551
    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$7800(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 3552
    sget v2, Lorg/telegram/messenger/R$string;->SendMediaPermissionStickersGifs:I

    const-string v3, "SendMediaPermissionStickersGifs"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$5800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    xor-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    const-string v4, ""

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    goto/16 :goto_2

    .line 3553
    :cond_6
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$7900(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 3554
    sget v2, Lorg/telegram/messenger/R$string;->SendMediaPermissionMusic:I

    const-string v3, "SendMediaPermissionMusic"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$5800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    xor-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    const-string v4, ""

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    goto/16 :goto_2

    .line 3555
    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$8000(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 3556
    sget v2, Lorg/telegram/messenger/R$string;->SendMediaPermissionFiles:I

    const-string v3, "SendMediaPermissionFiles"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$5800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    xor-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    const-string v4, ""

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    goto/16 :goto_2

    .line 3557
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$8100(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 3558
    sget v2, Lorg/telegram/messenger/R$string;->SendMediaPermissionVoice:I

    const-string v3, "SendMediaPermissionVoice"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$5800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    xor-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    const-string v4, ""

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    goto/16 :goto_2

    .line 3559
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$8200(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_a

    .line 3560
    sget v2, Lorg/telegram/messenger/R$string;->SendMediaPermissionRound:I

    const-string v3, "SendMediaPermissionRound"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$5800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    xor-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    const-string v4, ""

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    goto :goto_2

    .line 3561
    :cond_a
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$8300(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_c

    .line 3562
    sget v2, Lorg/telegram/messenger/R$string;->SendMediaEmbededLinks:I

    const-string v3, "SendMediaEmbededLinks"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$5800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v2, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$5800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v2, :cond_b

    const/4 v5, 0x1

    goto :goto_1

    :cond_b
    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    const-string v4, ""

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    goto :goto_2

    .line 3563
    :cond_c
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$6900(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_d

    .line 3564
    sget v2, Lorg/telegram/messenger/R$string;->SendMediaPolls:I

    const-string v3, "SendMediaPolls"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$5800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    xor-int/lit8 v5, v2, 0x1

    const/4 v6, 0x0

    const-string v4, ""

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZZ)V

    .line 3567
    :cond_d
    :goto_2
    invoke-virtual {v1, v11}, Lorg/telegram/ui/Cells/CheckBoxCell;->setPad(I)V

    goto/16 :goto_23

    .line 3526
    :pswitch_2
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCell;

    .line 3527
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$2900(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_11

    .line 3528
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    const/16 v4, 0xd

    invoke-static {v3, v4}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$1700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$1700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    if-nez v3, :cond_e

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$1700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->telegramAntispamGroupSizeMin:I

    if-lt v3, v4, :cond_f

    :cond_e
    const/4 v3, 0x0

    goto :goto_3

    :cond_f
    sget v3, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :goto_3
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    .line 3529
    sget v2, Lorg/telegram/messenger/R$string;->ChannelAntiSpam:I

    const-string v3, "ChannelAntiSpam"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$1700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$1700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    if-eqz v3, :cond_10

    goto :goto_4

    :cond_10
    const/4 v11, 0x0

    :goto_4
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_policy:I

    invoke-virtual {v1, v2, v11, v3, v10}, Lorg/telegram/ui/Cells/TextCell;->setTextAndCheckAndIcon(Ljava/lang/CharSequence;ZIZ)V

    goto/16 :goto_23

    .line 3530
    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$3000(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_69

    .line 3531
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    invoke-static {v3, v5}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$1700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_12

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$1700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    if-nez v3, :cond_12

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$1700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessagesController;->hiddenMembersGroupSizeMin:I

    if-lt v3, v4, :cond_13

    :cond_12
    const/4 v3, 0x0

    goto :goto_5

    :cond_13
    sget v3, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :goto_5
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    .line 3532
    sget v2, Lorg/telegram/messenger/R$string;->ChannelHideMembers:I

    const-string v3, "ChannelHideMembers"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$1700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_14

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$1700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    if-eqz v3, :cond_14

    goto :goto_6

    :cond_14
    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v1, v2, v11, v10}, Lorg/telegram/ui/Cells/TextCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    goto/16 :goto_23

    .line 3518
    :pswitch_3
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Components/FlickerLoadingView;

    .line 3519
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-nez v2, :cond_16

    .line 3520
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    if-nez v2, :cond_15

    goto :goto_7

    :cond_15
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    iget v11, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    :goto_7
    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/FlickerLoadingView;->setItemsCount(I)V

    goto/16 :goto_23

    .line 3522
    :cond_16
    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/FlickerLoadingView;->setItemsCount(I)V

    goto/16 :goto_23

    .line 3498
    :pswitch_4
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 3499
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$4900(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_18

    .line 3500
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_17

    .line 3501
    sget v2, Lorg/telegram/messenger/R$string;->ChannelOtherSubscribers:I

    const-string v3, "ChannelOtherSubscribers"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 3503
    :cond_17
    sget v2, Lorg/telegram/messenger/R$string;->ChannelOtherMembers:I

    const-string v3, "ChannelOtherMembers"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 3505
    :cond_18
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$7000(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_19

    .line 3506
    sget v2, Lorg/telegram/messenger/R$string;->ChannelBots:I

    const-string v3, "ChannelBots"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 3507
    :cond_19
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$7100(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_1b

    .line 3508
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v2, :cond_1a

    .line 3509
    sget v2, Lorg/telegram/messenger/R$string;->ChannelContacts:I

    const-string v3, "ChannelContacts"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 3511
    :cond_1a
    sget v2, Lorg/telegram/messenger/R$string;->GroupContacts:I

    const-string v3, "GroupContacts"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 3513
    :cond_1b
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$7200(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_69

    .line 3514
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 3451
    :pswitch_5
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextCheckCell2;

    .line 3452
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_1c

    const/4 v3, 0x1

    goto :goto_8

    :cond_1c
    const/4 v3, 0x0

    .line 3453
    :goto_8
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 3454
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$5700(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne v2, v4, :cond_1f

    .line 3455
    sget v4, Lorg/telegram/messenger/R$string;->UserRestrictionsChangeInfo:I

    const-string v5, "UserRestrictionsChangeInfo"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->access$5800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-nez v5, :cond_1d

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_1d

    const/4 v5, 0x1

    goto :goto_9

    :cond_1d
    const/4 v5, 0x0

    :goto_9
    iget-object v8, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v8}, Lorg/telegram/ui/ChatUsersActivity;->access$5900(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v8

    if-eq v8, v7, :cond_1e

    const/4 v7, 0x1

    goto :goto_a

    :cond_1e
    const/4 v7, 0x0

    :goto_a
    invoke-virtual {v1, v4, v5, v7, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZZ)V

    goto/16 :goto_d

    .line 3456
    :cond_1f
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$6000(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne v2, v4, :cond_20

    .line 3457
    sget v4, Lorg/telegram/messenger/R$string;->UserRestrictionsInviteUsers:I

    const-string v5, "UserRestrictionsInviteUsers"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->access$5800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    xor-int/2addr v5, v11

    invoke-virtual {v1, v4, v5, v11, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZZ)V

    goto/16 :goto_d

    .line 3458
    :cond_20
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$6100(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne v2, v4, :cond_22

    .line 3459
    sget v4, Lorg/telegram/messenger/R$string;->UserRestrictionsPinMessages:I

    const-string v5, "UserRestrictionsPinMessages"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->access$5800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-nez v5, :cond_21

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-nez v5, :cond_21

    const/4 v5, 0x1

    goto :goto_b

    :cond_21
    const/4 v5, 0x0

    :goto_b
    invoke-virtual {v1, v4, v5, v11, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZZ)V

    goto/16 :goto_d

    .line 3460
    :cond_22
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$6200(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne v2, v4, :cond_23

    .line 3461
    sget v4, Lorg/telegram/messenger/R$string;->UserRestrictionsSendText:I

    const-string v5, "UserRestrictionsSendText"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->access$5800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    xor-int/2addr v5, v11

    invoke-virtual {v1, v4, v5, v11, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZZ)V

    goto/16 :goto_d

    .line 3462
    :cond_23
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$6300(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne v2, v4, :cond_25

    .line 3463
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$6400(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    .line 3464
    sget v5, Lorg/telegram/messenger/R$string;->UserRestrictionsSendMedia:I

    const-string v7, "UserRestrictionsSendMedia"

    invoke-static {v7, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-lez v4, :cond_24

    const/4 v7, 0x1

    goto :goto_c

    :cond_24
    const/4 v7, 0x0

    :goto_c
    invoke-virtual {v1, v5, v7, v11, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZZ)V

    .line 3465
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xc

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "%d/9"

    invoke-virtual {v8, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v10

    invoke-static {v3, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$6500(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v4

    xor-int/2addr v4, v11

    new-instance v5, Lorg/telegram/ui/ChatUsersActivity$ListAdapter$1;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/ChatUsersActivity$ListAdapter;Lorg/telegram/ui/Cells/TextCheckCell2;)V

    invoke-virtual {v1, v3, v4, v5}, Lorg/telegram/ui/Cells/TextCheckCell2;->setCollapseArrow(Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto/16 :goto_d

    .line 3474
    :cond_25
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$6700(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne v2, v4, :cond_26

    .line 3475
    sget v4, Lorg/telegram/messenger/R$string;->UserRestrictionsSendStickers:I

    const-string v5, "UserRestrictionsSendStickers"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->access$5800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    xor-int/2addr v5, v11

    invoke-virtual {v1, v4, v5, v11, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZZ)V

    goto :goto_d

    .line 3476
    :cond_26
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$6800(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne v2, v4, :cond_27

    .line 3477
    sget v4, Lorg/telegram/messenger/R$string;->UserRestrictionsEmbedLinks:I

    const-string v5, "UserRestrictionsEmbedLinks"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->access$5800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    xor-int/2addr v5, v11

    invoke-virtual {v1, v4, v5, v11, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZZ)V

    goto :goto_d

    .line 3478
    :cond_27
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$6900(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne v2, v4, :cond_28

    .line 3479
    sget v3, Lorg/telegram/messenger/R$string;->UserRestrictionsSendPollsShort:I

    const-string v4, "UserRestrictionsSendPollsShort"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$5800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v4

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    xor-int/2addr v4, v11

    invoke-virtual {v1, v3, v4, v11}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_d

    .line 3480
    :cond_28
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$5900(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ne v2, v4, :cond_29

    .line 3481
    sget v4, Lorg/telegram/messenger/R$string;->CreateTopicsPermission:I

    const-string v5, "CreateTopicsPermission"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->access$5800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    xor-int/2addr v5, v11

    invoke-virtual {v1, v4, v5, v10, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setTextAndCheck(Ljava/lang/String;ZZZ)V

    .line 3483
    :cond_29
    :goto_d
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 3484
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$6000(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2a

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    invoke-static {v3, v6}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v3

    if-eqz v3, :cond_2e

    :cond_2a
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    .line 3485
    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$6100(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2b

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    invoke-static {v3, v10}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v3

    if-eqz v3, :cond_2e

    :cond_2b
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    .line 3486
    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$5700(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2c

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    invoke-static {v3, v11}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v3

    if-eqz v3, :cond_2e

    :cond_2c
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    .line 3487
    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$5900(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2d

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->canManageTopics(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_2e

    :cond_2d
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    .line 3488
    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$6100(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-eq v2, v3, :cond_2e

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$5700(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_2f

    .line 3489
    :cond_2e
    sget v2, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_23

    .line 3491
    :cond_2f
    invoke-virtual {v1, v10}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_23

    .line 3494
    :cond_30
    invoke-virtual {v1, v10}, Lorg/telegram/ui/Cells/TextCheckCell2;->setIcon(I)V

    goto/16 :goto_23

    .line 3446
    :pswitch_6
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 3447
    sget v2, Lorg/telegram/messenger/R$string;->ChannelBlacklist:I

    const-string v3, "ChannelBlacklist"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$1700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    if-eqz v4, :cond_31

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$1700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v4

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    goto :goto_e

    :cond_31
    const/4 v4, 0x0

    :goto_e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    const-string v4, "%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v10}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_23

    .line 3425
    :pswitch_7
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 3426
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$5400(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_35

    .line 3427
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-nez v2, :cond_34

    .line 3428
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    if-eqz v2, :cond_32

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    goto :goto_f

    :cond_32
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1600(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_f
    if-eqz v2, :cond_33

    new-array v3, v10, [Ljava/lang/Object;

    const-string v4, "RemovedUser"

    .line 3430
    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 3432
    :cond_33
    sget v2, Lorg/telegram/messenger/R$string;->ChannelBlockedUsers:I

    const-string v3, "ChannelBlockedUsers"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 3435
    :cond_34
    sget v2, Lorg/telegram/messenger/R$string;->ChannelRestrictedUsers:I

    const-string v3, "ChannelRestrictedUsers"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 3437
    :cond_35
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$1200(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_36

    .line 3438
    sget v2, Lorg/telegram/messenger/R$string;->ChannelPermissionsHeader:I

    const-string v3, "ChannelPermissionsHeader"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 3439
    :cond_36
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$5500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_37

    .line 3440
    sget v2, Lorg/telegram/messenger/R$string;->Slowmode:I

    const-string v3, "Slowmode"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 3441
    :cond_37
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$5600(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_69

    .line 3442
    sget v2, Lorg/telegram/messenger/R$string;->BroadcastGroup:I

    const-string v3, "BroadcastGroup"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 3418
    :pswitch_8
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$5200(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-eq v2, v3, :cond_39

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v3, v6, :cond_38

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$5300(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_38

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$4100(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v7, :cond_38

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$3300(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v7, :cond_38

    goto :goto_10

    .line 3421
    :cond_38
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {v2, v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_23

    .line 3419
    :cond_39
    :goto_10
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {v2, v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_23

    .line 3385
    :pswitch_9
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/ManageChatTextCell;

    const-string v3, "windowBackgroundWhiteGrayIcon"

    const-string v4, "windowBackgroundWhiteBlackText"

    .line 3386
    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 3387
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$4100(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    const-string v4, "windowBackgroundWhiteBlueButton"

    const-string v8, "windowBackgroundWhiteBlueIcon"

    if-ne v2, v3, :cond_44

    .line 3388
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v6, :cond_3b

    .line 3389
    invoke-virtual {v1, v8, v4}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 3390
    sget v2, Lorg/telegram/messenger/R$string;->ChannelAddException:I

    const-string v3, "ChannelAddException"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_contact_add:I

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$3300(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-eq v4, v7, :cond_3a

    const/4 v10, 0x1

    :cond_3a
    invoke-virtual {v1, v2, v9, v3, v10}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_23

    .line 3391
    :cond_3b
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-nez v2, :cond_3c

    .line 3392
    sget v2, Lorg/telegram/messenger/R$string;->ChannelBlockUser:I

    const-string v3, "ChannelBlockUser"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_user_remove:I

    invoke-virtual {v1, v2, v9, v3, v10}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_23

    .line 3393
    :cond_3c
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v11, :cond_3f

    .line 3394
    invoke-virtual {v1, v8, v4}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 3395
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$4700(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1400(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_3e

    :cond_3d
    const/4 v10, 0x1

    .line 3396
    :cond_3e
    sget v2, Lorg/telegram/messenger/R$string;->ChannelAddAdmin:I

    const-string v3, "ChannelAddAdmin"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_admin_add:I

    invoke-virtual {v1, v2, v9, v3, v10}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_23

    .line 3397
    :cond_3f
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v5, :cond_69

    .line 3398
    invoke-virtual {v1, v8, v4}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 3399
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$4800(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v7, :cond_41

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$4700(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1400(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_42

    :cond_40
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$4900(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v7, :cond_42

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1600(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_42

    :cond_41
    const/4 v10, 0x1

    .line 3400
    :cond_42
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$2600(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 3401
    sget v2, Lorg/telegram/messenger/R$string;->AddSubscriber:I

    const-string v3, "AddSubscriber"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_contact_add:I

    invoke-virtual {v1, v2, v9, v3, v10}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_23

    .line 3403
    :cond_43
    sget v2, Lorg/telegram/messenger/R$string;->AddMember:I

    const-string v3, "AddMember"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_contact_add:I

    invoke-virtual {v1, v2, v9, v3, v10}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_23

    .line 3406
    :cond_44
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$5000(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_46

    .line 3407
    sget v2, Lorg/telegram/messenger/R$string;->EventLog:I

    const-string v3, "EventLog"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_log:I

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$2900(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->access$5000(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v5

    if-le v4, v5, :cond_45

    const/4 v10, 0x1

    :cond_45
    invoke-virtual {v1, v2, v9, v3, v10}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_23

    .line 3408
    :cond_46
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$4800(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_49

    .line 3409
    invoke-virtual {v1, v8, v4}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 3410
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$4700(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1400(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_48

    :cond_47
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$4900(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v7, :cond_48

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1600(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_48

    const/4 v10, 0x1

    .line 3411
    :cond_48
    sget v2, Lorg/telegram/messenger/R$string;->ChannelInviteViaLink:I

    const-string v3, "ChannelInviteViaLink"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    invoke-virtual {v1, v2, v9, v3, v10}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_23

    .line 3412
    :cond_49
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$5100(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_69

    .line 3413
    invoke-virtual {v1, v8, v4}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(Ljava/lang/String;Ljava/lang/String;)V

    .line 3414
    sget v2, Lorg/telegram/messenger/R$string;->BroadcastGroupConvert:I

    const-string v3, "BroadcastGroupConvert"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    invoke-virtual {v1, v2, v9, v3, v10}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_23

    .line 3338
    :pswitch_a
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 3339
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$3900(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_4a

    .line 3340
    sget v2, Lorg/telegram/messenger/R$string;->ChannelAntiSpamInfo:I

    const-string v3, "ChannelAntiSpamInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 3341
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {v2, v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_23

    .line 3342
    :cond_4a
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$4000(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_53

    .line 3343
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v6, :cond_4b

    goto/16 :goto_14

    .line 3350
    :cond_4b
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v11, :cond_4e

    .line 3351
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$4100(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-eq v2, v7, :cond_4d

    .line 3352
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$2600(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 3353
    sget v2, Lorg/telegram/messenger/R$string;->ChannelAdminsInfo:I

    const-string v3, "ChannelAdminsInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 3355
    :cond_4c
    sget v2, Lorg/telegram/messenger/R$string;->MegaAdminsInfo:I

    const-string v3, "MegaAdminsInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 3358
    :cond_4d
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 3360
    :goto_11
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {v2, v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_23

    .line 3361
    :cond_4e
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v5, :cond_69

    .line 3362
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$2600(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$2500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-eqz v2, :cond_4f

    goto :goto_12

    .line 3365
    :cond_4f
    sget v2, Lorg/telegram/messenger/R$string;->ChannelMembersInfo:I

    const-string v3, "ChannelMembersInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 3363
    :cond_50
    :goto_12
    invoke-virtual {v1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 3367
    :goto_13
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {v2, v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_23

    .line 3344
    :cond_51
    :goto_14
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$2600(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 3345
    sget v2, Lorg/telegram/messenger/R$string;->NoBlockedChannel2:I

    const-string v3, "NoBlockedChannel2"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    .line 3347
    :cond_52
    sget v2, Lorg/telegram/messenger/R$string;->NoBlockedGroup2:I

    const-string v3, "NoBlockedGroup2"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 3349
    :goto_15
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    invoke-static {v2, v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_23

    .line 3369
    :cond_53
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$4200(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_56

    .line 3370
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {v2, v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3371
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$3200(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ChatUsersActivity;->access$4300(Lorg/telegram/ui/ChatUsersActivity;I)I

    move-result v2

    .line 3372
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$1700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    if-eqz v3, :cond_55

    if-nez v2, :cond_54

    goto :goto_16

    .line 3375
    :cond_54
    sget v3, Lorg/telegram/messenger/R$string;->SlowmodeInfoSelected:I

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5, v2}, Lorg/telegram/ui/ChatUsersActivity;->access$4400(Lorg/telegram/ui/ChatUsersActivity;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v10

    const-string v2, "SlowmodeInfoSelected"

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 3373
    :cond_55
    :goto_16
    sget v2, Lorg/telegram/messenger/R$string;->SlowmodeInfoOff:I

    const-string v3, "SlowmodeInfoOff"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 3377
    :cond_56
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$4500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_57

    .line 3378
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v3, Lorg/telegram/messenger/R$drawable;->greydivider:I

    invoke-static {v2, v3, v8}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3379
    sget v2, Lorg/telegram/messenger/R$string;->ChannelHideMembersInfo:I

    const-string v3, "ChannelHideMembersInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 3380
    :cond_57
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$4600(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    if-ne v2, v3, :cond_69

    .line 3381
    sget v2, Lorg/telegram/messenger/R$string;->BroadcastGroupConvertInfo:I

    const-string v3, "BroadcastGroupConvertInfo"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_23

    .line 3246
    :pswitch_b
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    .line 3247
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 3248
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v3

    .line 3252
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$3300(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-lt v2, v4, :cond_58

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$3400(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ge v2, v4, :cond_58

    .line 3253
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$3400(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    .line 3254
    iget-object v7, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_5a

    iget-object v7, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v7, :cond_5a

    :goto_17
    const/4 v7, 0x1

    goto :goto_18

    .line 3255
    :cond_58
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$3500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-lt v2, v4, :cond_59

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$3600(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    if-ge v2, v4, :cond_59

    .line 3256
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$3600(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    .line 3257
    iget-object v7, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    if-eqz v7, :cond_5a

    iget-object v7, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v7}, Lorg/telegram/ui/ChatUsersActivity;->access$2200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v7, :cond_5a

    goto :goto_17

    .line 3259
    :cond_59
    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatUsersActivity;->access$3700(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v4

    :cond_5a
    const/4 v7, 0x0

    .line 3270
    :goto_18
    instance-of v8, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    const-wide/16 v12, 0x0

    if-eqz v8, :cond_5b

    .line 3271
    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 3272
    iget-object v8, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v14

    .line 3273
    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->kicked_by:J

    move-wide/from16 v16, v9

    .line 3274
    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->promoted_by:J

    .line 3275
    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 3276
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    .line 3277
    instance-of v11, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned;

    .line 3278
    instance-of v6, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    .line 3279
    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    move-wide/from16 v20, v8

    move-object v8, v10

    move-wide/from16 v9, v20

    goto :goto_19

    .line 3280
    :cond_5b
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v5, :cond_69

    .line 3281
    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 3282
    iget-wide v14, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    .line 3283
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    .line 3288
    instance-of v6, v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    .line 3289
    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    move-wide v9, v12

    move-wide/from16 v16, v9

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_19
    cmp-long v18, v14, v12

    if-lez v18, :cond_5c

    .line 3295
    iget-object v12, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    move-wide/from16 v18, v9

    goto :goto_1a

    .line 3297
    :cond_5c
    iget-object v12, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    move-wide/from16 v18, v9

    neg-long v9, v14

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v12, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v12

    :goto_1a
    if-eqz v12, :cond_69

    .line 3300
    iget-object v9, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5e

    .line 3301
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3, v8}, Lorg/telegram/ui/ChatUsersActivity;->access$3800(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-eq v2, v4, :cond_5d

    const/4 v2, 0x0

    const/4 v10, 0x1

    goto :goto_1b

    :cond_5d
    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_1b
    invoke-virtual {v1, v12, v2, v3, v10}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_23

    .line 3302
    :cond_5e
    iget-object v9, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v9}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v9

    if-nez v9, :cond_61

    if-eqz v11, :cond_5f

    .line 3305
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_5f

    .line 3307
    sget v5, Lorg/telegram/messenger/R$string;->UserRemovedBy:I

    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const-string v3, "UserRemovedBy"

    invoke-static {v3, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1c

    :cond_5f
    const/4 v9, 0x1

    const/4 v3, 0x0

    :goto_1c
    sub-int/2addr v4, v9

    if-eq v2, v4, :cond_60

    const/4 v2, 0x0

    const/4 v10, 0x1

    goto :goto_1d

    :cond_60
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 3310
    :goto_1d
    invoke-virtual {v1, v12, v2, v3, v10}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_23

    :cond_61
    const/4 v9, 0x1

    .line 3311
    iget-object v10, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v10}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v10

    if-ne v10, v9, :cond_66

    if-eqz v6, :cond_62

    .line 3314
    sget v3, Lorg/telegram/messenger/R$string;->ChannelCreator:I

    const-string v5, "ChannelCreator"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :goto_1e
    const/4 v6, 0x1

    const/4 v9, 0x0

    goto :goto_1f

    :cond_62
    if-eqz v3, :cond_64

    .line 3316
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_64

    .line 3318
    iget-wide v5, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v7, v5, v14

    if-nez v7, :cond_63

    .line 3319
    sget v3, Lorg/telegram/messenger/R$string;->ChannelAdministrator:I

    const-string v5, "ChannelAdministrator"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1e

    .line 3321
    :cond_63
    sget v5, Lorg/telegram/messenger/R$string;->EditAdminPromotedBy:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    aput-object v3, v7, v9

    const-string v3, "EditAdminPromotedBy"

    invoke-static {v3, v5, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1f

    :cond_64
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    :goto_1f
    sub-int/2addr v4, v6

    if-eq v2, v4, :cond_65

    const/4 v2, 0x0

    const/4 v10, 0x1

    goto :goto_20

    :cond_65
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 3325
    :goto_20
    invoke-virtual {v1, v12, v2, v3, v10}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_23

    :cond_66
    const/4 v9, 0x0

    .line 3326
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_69

    if-eqz v7, :cond_67

    if-eqz v5, :cond_67

    int-to-long v5, v5

    .line 3329
    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->formatJoined(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_21

    :cond_67
    const/4 v3, 0x0

    :goto_21
    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-eq v2, v4, :cond_68

    const/4 v2, 0x0

    const/4 v10, 0x1

    goto :goto_22

    :cond_68
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 3333
    :goto_22
    invoke-virtual {v1, v12, v2, v3, v10}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    nop

    :cond_69
    :goto_23
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 13

    const/4 p1, 0x4

    const/4 v0, 0x2

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v6, "windowBackgroundWhite"

    const/4 v7, 0x1

    .line 3217
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    packed-switch p2, :pswitch_data_0

    .line 3209
    :pswitch_0
    new-instance p2, Lorg/telegram/ui/Components/SlideChooseView;

    iget-object v9, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v9}, Lorg/telegram/ui/Components/SlideChooseView;-><init>(Landroid/content/Context;)V

    .line 3211
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3212
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    .line 3213
    invoke-static {v6}, Lorg/telegram/ui/ChatUsersActivity;->access$3200(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v6

    new-array v1, v1, [Ljava/lang/String;

    sget v9, Lorg/telegram/messenger/R$string;->SlowmodeOff:I

    const-string v10, "SlowmodeOff"

    .line 3214
    invoke-static {v10, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v5

    sget v9, Lorg/telegram/messenger/R$string;->SlowmodeSeconds:I

    new-array v10, v7, [Ljava/lang/Object;

    const/16 v11, 0xa

    .line 3215
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    const-string v11, "SlowmodeSeconds"

    invoke-static {v11, v9, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v7

    new-array v10, v7, [Ljava/lang/Object;

    const/16 v12, 0x1e

    .line 3216
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v5

    invoke-static {v11, v9, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v0

    sget v0, Lorg/telegram/messenger/R$string;->SlowmodeMinutes:I

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v8, v9, v5

    const-string v10, "SlowmodeMinutes"

    .line 3217
    invoke-static {v10, v0, v9}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v3

    new-array v3, v7, [Ljava/lang/Object;

    .line 3218
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v5

    invoke-static {v10, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, p1

    new-array p1, v7, [Ljava/lang/Object;

    const/16 v3, 0xf

    .line 3219
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v5

    invoke-static {v10, v0, p1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    sget p1, Lorg/telegram/messenger/R$string;->SlowmodeHours:I

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v8, v0, v5

    const-string v2, "SlowmodeHours"

    .line 3220
    invoke-static {v2, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    .line 3212
    invoke-virtual {p2, v6, v1}, Lorg/telegram/ui/Components/SlideChooseView;->setOptions(I[Ljava/lang/String;)V

    .line 3222
    new-instance p1, Lorg/telegram/ui/ChatUsersActivity$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatUsersActivity$ListAdapter;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/SlideChooseView;->setCallback(Lorg/telegram/ui/Components/SlideChooseView$Callback;)V

    goto/16 :goto_2

    .line 3231
    :pswitch_1
    new-instance p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x15

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {p2, v0, p1, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 3232
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/CheckBoxCell;->getCheckBoxRound()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p1

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CheckBox2;->setDrawBackgroundAsArc(I)V

    .line 3233
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/CheckBoxCell;->getCheckBoxRound()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p1

    const-string v0, "switch2TrackChecked"

    const-string v1, "radioBackground"

    const-string v2, "checkboxCheck"

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/CheckBox2;->setColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3234
    invoke-virtual {p2, v7}, Lorg/telegram/ui/Cells/CheckBoxCell;->setEnabled(Z)V

    .line 3236
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 3202
    :pswitch_2
    new-instance p2, Lorg/telegram/ui/Cells/TextCell;

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 p1, 0x32

    .line 3203
    iput p1, p2, Lorg/telegram/ui/Cells/TextCell;->heightDp:I

    .line 3204
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 3192
    :pswitch_3
    new-instance p2, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    .line 3193
    invoke-virtual {p2, v7}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    .line 3194
    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 3195
    invoke-virtual {p2, v5}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    .line 3196
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setPaddingLeft(I)V

    .line 3197
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3198
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 3189
    :pswitch_4
    new-instance p2, Lorg/telegram/ui/Cells/LoadingCell;

    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/16 v0, 0x28

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v1, 0x78

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-direct {p2, p1, v0, v1}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;II)V

    goto/16 :goto_2

    .line 3185
    :pswitch_5
    new-instance p2, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3186
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 3181
    :pswitch_6
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell2;

    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/TextCheckCell2;-><init>(Landroid/content/Context;)V

    .line 3182
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 3176
    :pswitch_7
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 3177
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 3170
    :pswitch_8
    new-instance p2, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0x15

    const/16 v4, 0xb

    const/4 v5, 0x0

    const-string v2, "windowBackgroundWhiteBlueHeader"

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 3171
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/16 p1, 0x2b

    .line 3172
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/HeaderCell;->setHeight(I)V

    goto/16 :goto_2

    .line 3160
    :pswitch_9
    new-instance p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 3162
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->access$2600(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3163
    sget p1, Lorg/telegram/messenger/R$string;->NoBlockedChannel2:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3165
    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->NoBlockedGroup2:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 3167
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    const-string v1, "windowBackgroundGrayShadow"

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 3157
    :pswitch_a
    new-instance p2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_2

    .line 3153
    :pswitch_b
    new-instance p2, Lorg/telegram/ui/Cells/ManageChatTextCell;

    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/ManageChatTextCell;-><init>(Landroid/content/Context;)V

    .line 3154
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    .line 3150
    :pswitch_c
    new-instance p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_2

    .line 3141
    :pswitch_d
    new-instance p2, Lorg/telegram/ui/Cells/ManageChatUserCell;

    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x6

    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$1500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-ne v2, v3, :cond_4

    :cond_3
    const/4 v0, 0x6

    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->access$2500(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v2

    if-nez v2, :cond_5

    const/4 v5, 0x1

    :cond_5
    invoke-direct {p2, p1, v1, v0, v5}, Lorg/telegram/ui/Cells/ManageChatUserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 3142
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 3143
    new-instance p1, Lorg/telegram/ui/ChatUsersActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatUsersActivity$ListAdapter;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setDelegate(Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;)V

    .line 3239
    :goto_2
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 3574
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz v0, :cond_0

    .line 3575
    check-cast p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->recycle()V

    :cond_0
    return-void
.end method
