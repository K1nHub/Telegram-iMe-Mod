.class Lorg/telegram/ui/StatisticActivity$Adapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "StatisticActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/StatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Adapter"
.end annotation


# instance fields
.field actionsCell:I

.field count:I

.field emptyCells:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field expandTopMembersRow:I

.field folowersCell:I

.field groupMembersCell:I

.field growCell:I

.field interactionsCell:I

.field ivInteractionsCell:I

.field languagesCell:I

.field membersLanguageCell:I

.field messagesCell:I

.field newFollowersBySourceCell:I

.field newMembersBySourceCell:I

.field notificationsCell:I

.field overviewCell:I

.field overviewHeaderCell:I

.field progressCell:I

.field recentPostsEndRow:I

.field recentPostsHeaderCell:I

.field recentPostsStartRow:I

.field shadowDivideCells:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/StatisticActivity;

.field topAdminsEndRow:I

.field topAdminsHeaderCell:I

.field topAdminsStartRow:I

.field topDayOfWeeksCell:I

.field topHourseCell:I

.field topInviterEndRow:I

.field topInviterHeaderCell:I

.field topInviterStartRow:I

.field topMembersEndRow:I

.field topMembersHeaderCell:I

.field topMembersStartRow:I

.field viewsBySourceCell:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/StatisticActivity;)V
    .locals 0

    .line 744
    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    const/4 p1, -0x1

    .line 746
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->overviewHeaderCell:I

    .line 748
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->growCell:I

    .line 749
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->progressCell:I

    .line 752
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->folowersCell:I

    .line 753
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topHourseCell:I

    .line 754
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->interactionsCell:I

    .line 755
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->ivInteractionsCell:I

    .line 756
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->viewsBySourceCell:I

    .line 757
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newFollowersBySourceCell:I

    .line 758
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->languagesCell:I

    .line 759
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->notificationsCell:I

    .line 761
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsHeaderCell:I

    .line 762
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    .line 763
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsEndRow:I

    .line 766
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->groupMembersCell:I

    .line 767
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newMembersBySourceCell:I

    .line 768
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->membersLanguageCell:I

    .line 769
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->messagesCell:I

    .line 770
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->actionsCell:I

    .line 771
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topDayOfWeeksCell:I

    .line 772
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersHeaderCell:I

    .line 773
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersStartRow:I

    .line 774
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersEndRow:I

    .line 775
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsHeaderCell:I

    .line 776
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsStartRow:I

    .line 777
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsEndRow:I

    .line 778
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterHeaderCell:I

    .line 779
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterStartRow:I

    .line 780
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterEndRow:I

    .line 781
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->expandTopMembersRow:I

    .line 784
    new-instance p1, Landroidx/collection/ArraySet;

    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    .line 785
    new-instance p1, Landroidx/collection/ArraySet;

    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->emptyCells:Landroidx/collection/ArraySet;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 998
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 823
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsEndRow:I

    if-ge p1, v0, :cond_0

    .line 824
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$500(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    iget-object p1, p1, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;->counters:Lorg/telegram/tgnet/TLRPC$TL_messageInteractionCounters;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageInteractionCounters;->msg_id:I

    int-to-long v0, p1

    return-wide v0

    .line 826
    :cond_0
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->growCell:I

    if-ne p1, v0, :cond_1

    const-wide/16 v0, 0x1

    return-wide v0

    .line 828
    :cond_1
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->folowersCell:I

    if-ne p1, v0, :cond_2

    const-wide/16 v0, 0x2

    return-wide v0

    .line 830
    :cond_2
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topHourseCell:I

    if-ne p1, v0, :cond_3

    const-wide/16 v0, 0x3

    return-wide v0

    .line 832
    :cond_3
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->interactionsCell:I

    if-ne p1, v0, :cond_4

    const-wide/16 v0, 0x4

    return-wide v0

    .line 834
    :cond_4
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->notificationsCell:I

    if-ne p1, v0, :cond_5

    const-wide/16 v0, 0x5

    return-wide v0

    .line 836
    :cond_5
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->ivInteractionsCell:I

    if-ne p1, v0, :cond_6

    const-wide/16 v0, 0x6

    return-wide v0

    .line 838
    :cond_6
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->viewsBySourceCell:I

    if-ne p1, v0, :cond_7

    const-wide/16 v0, 0x7

    return-wide v0

    .line 840
    :cond_7
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newFollowersBySourceCell:I

    if-ne p1, v0, :cond_8

    const-wide/16 v0, 0x8

    return-wide v0

    .line 842
    :cond_8
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->languagesCell:I

    if-ne p1, v0, :cond_9

    const-wide/16 v0, 0x9

    return-wide v0

    .line 844
    :cond_9
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->groupMembersCell:I

    if-ne p1, v0, :cond_a

    const-wide/16 v0, 0xa

    return-wide v0

    .line 846
    :cond_a
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newMembersBySourceCell:I

    if-ne p1, v0, :cond_b

    const-wide/16 v0, 0xb

    return-wide v0

    .line 848
    :cond_b
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->membersLanguageCell:I

    if-ne p1, v0, :cond_c

    const-wide/16 v0, 0xc

    return-wide v0

    .line 850
    :cond_c
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->messagesCell:I

    if-ne p1, v0, :cond_d

    const-wide/16 v0, 0xd

    return-wide v0

    .line 852
    :cond_d
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->actionsCell:I

    if-ne p1, v0, :cond_e

    const-wide/16 v0, 0xe

    return-wide v0

    .line 854
    :cond_e
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topDayOfWeeksCell:I

    if-ne p1, v0, :cond_f

    const-wide/16 v0, 0xf

    return-wide v0

    .line 857
    :cond_f
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 791
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->growCell:I

    if-eq p1, v0, :cond_12

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->folowersCell:I

    if-eq p1, v0, :cond_12

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topHourseCell:I

    if-eq p1, v0, :cond_12

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->notificationsCell:I

    if-eq p1, v0, :cond_12

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->actionsCell:I

    if-eq p1, v0, :cond_12

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->groupMembersCell:I

    if-ne p1, v0, :cond_0

    goto/16 :goto_4

    .line 793
    :cond_0
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->interactionsCell:I

    if-eq p1, v0, :cond_11

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->ivInteractionsCell:I

    if-ne p1, v0, :cond_1

    goto/16 :goto_3

    .line 795
    :cond_1
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->viewsBySourceCell:I

    if-eq p1, v0, :cond_10

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newFollowersBySourceCell:I

    if-eq p1, v0, :cond_10

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newMembersBySourceCell:I

    if-eq p1, v0, :cond_10

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->messagesCell:I

    if-ne p1, v0, :cond_2

    goto/16 :goto_2

    .line 797
    :cond_2
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->languagesCell:I

    if-eq p1, v0, :cond_f

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->membersLanguageCell:I

    if-eq p1, v0, :cond_f

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topDayOfWeeksCell:I

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 799
    :cond_3
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    const/16 v1, 0x9

    if-lt p1, v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsEndRow:I

    if-gt p1, v0, :cond_4

    return v1

    .line 801
    :cond_4
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->progressCell:I

    if-ne p1, v0, :cond_5

    const/16 p1, 0xb

    return p1

    .line 803
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->emptyCells:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p1, 0xc

    return p1

    .line 805
    :cond_6
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsHeaderCell:I

    if-eq p1, v0, :cond_e

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->overviewHeaderCell:I

    if-eq p1, v0, :cond_e

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsHeaderCell:I

    if-eq p1, v0, :cond_e

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersHeaderCell:I

    if-eq p1, v0, :cond_e

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterHeaderCell:I

    if-ne p1, v0, :cond_7

    goto :goto_0

    .line 808
    :cond_7
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->overviewCell:I

    if-ne p1, v0, :cond_8

    const/16 p1, 0xe

    return p1

    .line 810
    :cond_8
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsStartRow:I

    if-lt p1, v0, :cond_9

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsEndRow:I

    if-le p1, v0, :cond_b

    :cond_9
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersStartRow:I

    if-lt p1, v0, :cond_a

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersEndRow:I

    if-le p1, v0, :cond_b

    :cond_a
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterStartRow:I

    if-lt p1, v0, :cond_c

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterEndRow:I

    if-gt p1, v0, :cond_c

    :cond_b
    return v1

    .line 814
    :cond_c
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->expandTopMembersRow:I

    if-ne p1, v0, :cond_d

    const/16 p1, 0xf

    return p1

    :cond_d
    const/16 p1, 0xa

    return p1

    :cond_e
    :goto_0
    const/16 p1, 0xd

    return p1

    :cond_f
    :goto_1
    const/4 p1, 0x4

    return p1

    :cond_10
    :goto_2
    const/4 p1, 0x2

    return p1

    :cond_11
    :goto_3
    const/4 p1, 0x1

    return p1

    :cond_12
    :goto_4
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 1215
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 918
    invoke-virtual {p0, p2}, Lorg/telegram/ui/StatisticActivity$Adapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_e

    const/4 v2, 0x4

    if-gt v0, v2, :cond_e

    .line 921
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->growCell:I

    if-ne v0, p2, :cond_0

    .line 922
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$1200(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto/16 :goto_0

    .line 923
    :cond_0
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->folowersCell:I

    if-ne v0, p2, :cond_1

    .line 924
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$1300(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto/16 :goto_0

    .line 925
    :cond_1
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->interactionsCell:I

    if-ne v0, p2, :cond_2

    .line 926
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$1400(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto/16 :goto_0

    .line 927
    :cond_2
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->viewsBySourceCell:I

    if-ne v0, p2, :cond_3

    .line 928
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$1500(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto/16 :goto_0

    .line 929
    :cond_3
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newFollowersBySourceCell:I

    if-ne v0, p2, :cond_4

    .line 930
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$1600(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto/16 :goto_0

    .line 931
    :cond_4
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->ivInteractionsCell:I

    if-ne v0, p2, :cond_5

    .line 932
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$1700(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 933
    :cond_5
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topHourseCell:I

    if-ne v0, p2, :cond_6

    .line 934
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$1800(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 935
    :cond_6
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->notificationsCell:I

    if-ne v0, p2, :cond_7

    .line 936
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$1900(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 937
    :cond_7
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->groupMembersCell:I

    if-ne v0, p2, :cond_8

    .line 938
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$2000(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 939
    :cond_8
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newMembersBySourceCell:I

    if-ne v0, p2, :cond_9

    .line 940
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$2100(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 941
    :cond_9
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->membersLanguageCell:I

    if-ne v0, p2, :cond_a

    .line 942
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$2200(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 943
    :cond_a
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->messagesCell:I

    if-ne v0, p2, :cond_b

    .line 944
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$2300(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 945
    :cond_b
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->actionsCell:I

    if-ne v0, p2, :cond_c

    .line 946
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$2400(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 947
    :cond_c
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topDayOfWeeksCell:I

    if-ne v0, p2, :cond_d

    .line 948
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$2500(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 950
    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$2600(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    .line 952
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/StatisticActivity$ChartCell;

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->updateData(Lorg/telegram/ui/StatisticActivity$ChartViewData;Z)V

    goto/16 :goto_1

    :cond_e
    const/16 v2, 0x9

    if-ne v0, v2, :cond_12

    .line 954
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2700(Lorg/telegram/ui/StatisticActivity;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 955
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsStartRow:I

    if-lt p2, v0, :cond_f

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsEndRow:I

    if-gt p2, v1, :cond_f

    sub-int/2addr p2, v0

    .line 957
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StatisticPostInfoCell;

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2800(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/StatisticActivity$MemberData;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/StatisticPostInfoCell;->setData(Lorg/telegram/ui/StatisticActivity$MemberData;)V

    goto/16 :goto_1

    .line 958
    :cond_f
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersStartRow:I

    if-lt p2, v0, :cond_10

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersEndRow:I

    if-gt p2, v1, :cond_10

    sub-int/2addr p2, v0

    .line 960
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StatisticPostInfoCell;

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2900(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/StatisticActivity$MemberData;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/StatisticPostInfoCell;->setData(Lorg/telegram/ui/StatisticActivity$MemberData;)V

    goto/16 :goto_1

    .line 961
    :cond_10
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterStartRow:I

    if-lt p2, v0, :cond_1a

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterEndRow:I

    if-gt p2, v1, :cond_1a

    sub-int/2addr p2, v0

    .line 963
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StatisticPostInfoCell;

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$3000(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/StatisticActivity$MemberData;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/StatisticPostInfoCell;->setData(Lorg/telegram/ui/StatisticActivity$MemberData;)V

    goto/16 :goto_1

    .line 966
    :cond_11
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    sub-int/2addr p2, v0

    .line 967
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/StatisticPostInfoCell;

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$500(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/StatisticActivity$RecentPostInfo;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/StatisticPostInfoCell;->setData(Lorg/telegram/ui/StatisticActivity$RecentPostInfo;)V

    goto/16 :goto_1

    :cond_12
    const/16 v2, 0xd

    if-ne v0, v2, :cond_17

    .line 970
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    .line 971
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$3100(Lorg/telegram/ui/StatisticActivity;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v2}, Lorg/telegram/ui/StatisticActivity;->access$3200(Lorg/telegram/ui/StatisticActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setDates(JJ)V

    .line 972
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->overviewHeaderCell:I

    if-ne p2, v0, :cond_13

    .line 973
    sget p2, Lorg/telegram/messenger/R$string;->StatisticOverview:I

    const-string v0, "StatisticOverview"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 974
    :cond_13
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsHeaderCell:I

    if-ne p2, v0, :cond_14

    .line 975
    sget p2, Lorg/telegram/messenger/R$string;->TopAdmins:I

    const-string v0, "TopAdmins"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 976
    :cond_14
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterHeaderCell:I

    if-ne p2, v0, :cond_15

    .line 977
    sget p2, Lorg/telegram/messenger/R$string;->TopInviters:I

    const-string v0, "TopInviters"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 978
    :cond_15
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersHeaderCell:I

    if-ne p2, v0, :cond_16

    .line 979
    sget p2, Lorg/telegram/messenger/R$string;->TopMembers:I

    const-string v0, "TopMembers"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 981
    :cond_16
    sget p2, Lorg/telegram/messenger/R$string;->RecentPosts:I

    const-string v0, "RecentPosts"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    :cond_17
    const/16 p2, 0xe

    if-ne v0, p2, :cond_19

    .line 984
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/StatisticActivity$OverviewCell;

    .line 985
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$2700(Lorg/telegram/ui/StatisticActivity;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 986
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$3300(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$OverviewChatData;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->setData(Lorg/telegram/ui/StatisticActivity$OverviewChatData;)V

    goto :goto_1

    .line 988
    :cond_18
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$3400(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$OverviewChannelData;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->setData(Lorg/telegram/ui/StatisticActivity$OverviewChannelData;)V

    goto :goto_1

    :cond_19
    const/16 p2, 0xf

    if-ne v0, p2, :cond_1a

    .line 991
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ManageChatTextCell;

    .line 992
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$3500(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2900(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p2, v0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "ShowVotes"

    invoke-static {v2, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    sget v2, Lorg/telegram/messenger/R$drawable;->arrow_more:I

    invoke-virtual {p1, p2, v0, v2, v1}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setText(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_1a
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    const/4 v1, 0x4

    if-gt p2, v1, :cond_0

    .line 864
    new-instance v1, Lorg/telegram/ui/StatisticActivity$Adapter$1;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v2}, Lorg/telegram/ui/StatisticActivity;->access$1000(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    move-result-object v2

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/telegram/ui/StatisticActivity$Adapter$1;-><init>(Lorg/telegram/ui/StatisticActivity$Adapter;Landroid/content/Context;ILorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;)V

    .line 873
    invoke-virtual {v1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x9

    if-ne p2, v1, :cond_1

    .line 875
    new-instance v1, Lorg/telegram/ui/StatisticActivity$Adapter$2;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$1100(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/StatisticActivity$Adapter$2;-><init>(Lorg/telegram/ui/StatisticActivity$Adapter;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 884
    invoke-virtual {v1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xb

    if-ne p2, v1, :cond_2

    .line 886
    new-instance v1, Lorg/telegram/ui/Cells/LoadingCell;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    .line 887
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xf

    const/16 v2, 0xc

    if-ne p2, v2, :cond_3

    .line 889
    new-instance p2, Lorg/telegram/ui/Cells/EmptyCell;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-direct {p2, p1, v0}, Lorg/telegram/ui/Cells/EmptyCell;-><init>(Landroid/content/Context;I)V

    move-object v1, p2

    goto :goto_0

    :cond_3
    const/16 v3, 0xd

    if-ne p2, v3, :cond_4

    .line 891
    new-instance v1, Lorg/telegram/ui/StatisticActivity$Adapter$3;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/StatisticActivity$Adapter$3;-><init>(Lorg/telegram/ui/StatisticActivity$Adapter;Landroid/content/Context;)V

    .line 900
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 901
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p1

    const/16 p2, 0x10

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRight()I

    move-result v2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {v1, p1, v0, v2, p2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_4
    const/16 v0, 0xe

    if-ne p2, v0, :cond_5

    .line 904
    new-instance v1, Lorg/telegram/ui/StatisticActivity$OverviewCell;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/telegram/ui/StatisticActivity$OverviewCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    if-ne p2, v1, :cond_6

    .line 906
    new-instance v1, Lorg/telegram/ui/Cells/ManageChatTextCell;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/telegram/ui/Cells/ManageChatTextCell;-><init>(Landroid/content/Context;)V

    .line 907
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 908
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(II)V

    goto :goto_0

    .line 910
    :cond_6
    new-instance v1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-direct {v1, p1, v2, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;II)V

    .line 912
    :goto_0
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 913
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public update()V
    .locals 3

    const/4 v0, -0x1

    .line 1002
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->growCell:I

    .line 1003
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->folowersCell:I

    .line 1004
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->interactionsCell:I

    .line 1005
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->viewsBySourceCell:I

    .line 1006
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newFollowersBySourceCell:I

    .line 1007
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->languagesCell:I

    .line 1008
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    .line 1009
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsEndRow:I

    .line 1010
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->progressCell:I

    .line 1011
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsHeaderCell:I

    .line 1012
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->ivInteractionsCell:I

    .line 1013
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topHourseCell:I

    .line 1014
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->notificationsCell:I

    .line 1015
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->groupMembersCell:I

    .line 1016
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newMembersBySourceCell:I

    .line 1017
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->membersLanguageCell:I

    .line 1018
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->messagesCell:I

    .line 1019
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->actionsCell:I

    .line 1020
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topDayOfWeeksCell:I

    .line 1021
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersHeaderCell:I

    .line 1022
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersStartRow:I

    .line 1023
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersEndRow:I

    .line 1024
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsHeaderCell:I

    .line 1025
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsStartRow:I

    .line 1026
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsEndRow:I

    .line 1027
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterHeaderCell:I

    .line 1028
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterStartRow:I

    .line 1029
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterEndRow:I

    .line 1030
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->expandTopMembersRow:I

    const/4 v0, 0x0

    .line 1032
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    .line 1033
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->emptyCells:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    .line 1034
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    .line 1036
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2700(Lorg/telegram/ui/StatisticActivity;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1037
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$3300(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$OverviewChatData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1038
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->overviewHeaderCell:I

    add-int/lit8 v0, v1, 0x1

    .line 1039
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->overviewCell:I

    .line 1042
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$1200(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$1200(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_2

    .line 1043
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_1

    .line 1044
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1046
    :cond_1
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->growCell:I

    .line 1048
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2000(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2000(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_4

    .line 1049
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_3

    .line 1050
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1052
    :cond_3
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->groupMembersCell:I

    .line 1054
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2100(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2100(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2100(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isError:Z

    if-nez v0, :cond_6

    .line 1055
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_5

    .line 1056
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1058
    :cond_5
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newMembersBySourceCell:I

    .line 1060
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2200(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2200(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2200(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isError:Z

    if-nez v0, :cond_8

    .line 1061
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_7

    .line 1062
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1064
    :cond_7
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->membersLanguageCell:I

    .line 1066
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2300(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2300(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2300(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isError:Z

    if-nez v0, :cond_a

    .line 1067
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_9

    .line 1068
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1070
    :cond_9
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->messagesCell:I

    .line 1072
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2400(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2400(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2400(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isError:Z

    if-nez v0, :cond_c

    .line 1073
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_b

    .line 1074
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1076
    :cond_b
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->actionsCell:I

    .line 1078
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$1800(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$1800(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$1800(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isError:Z

    if-nez v0, :cond_e

    .line 1079
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_d

    .line 1080
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1082
    :cond_d
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topHourseCell:I

    .line 1085
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2500(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2500(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2500(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isError:Z

    if-nez v0, :cond_10

    .line 1086
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_f

    .line 1087
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1089
    :cond_f
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topDayOfWeeksCell:I

    .line 1092
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2900(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 1093
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_11

    .line 1094
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1096
    :cond_11
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersHeaderCell:I

    add-int/lit8 v0, v1, 0x1

    .line 1097
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersStartRow:I

    .line 1098
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2900(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersEndRow:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v1, 0x1

    .line 1099
    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    .line 1100
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2900(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v1}, Lorg/telegram/ui/StatisticActivity;->access$3500(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_12

    .line 1101
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->expandTopMembersRow:I

    goto :goto_0

    .line 1103
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->emptyCells:Landroidx/collection/ArraySet;

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1107
    :cond_13
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2800(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 1108
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_14

    .line 1109
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1111
    :cond_14
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsHeaderCell:I

    add-int/lit8 v0, v1, 0x1

    .line 1112
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsStartRow:I

    .line 1113
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2800(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsEndRow:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v1, 0x1

    .line 1114
    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    .line 1115
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->emptyCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1118
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$3000(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 1119
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_16

    .line 1120
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1122
    :cond_16
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterHeaderCell:I

    add-int/lit8 v0, v1, 0x1

    .line 1123
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterStartRow:I

    .line 1124
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$3000(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterEndRow:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v1, 0x1

    .line 1125
    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    .line 1128
    :cond_17
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_2d

    .line 1129
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->emptyCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1130
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1133
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$3400(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$OverviewChannelData;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1134
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->overviewHeaderCell:I

    add-int/lit8 v0, v1, 0x1

    .line 1135
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->overviewCell:I

    .line 1138
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$1200(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$1200(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_1b

    .line 1139
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_1a

    .line 1140
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1142
    :cond_1a
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->growCell:I

    .line 1145
    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$1300(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$1300(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_1d

    .line 1146
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_1c

    .line 1147
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1149
    :cond_1c
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->folowersCell:I

    .line 1151
    :cond_1d
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$1900(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$1900(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_1f

    .line 1152
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_1e

    .line 1153
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1155
    :cond_1e
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->notificationsCell:I

    .line 1157
    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$1800(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$1800(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_21

    .line 1158
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_20

    .line 1159
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1161
    :cond_20
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topHourseCell:I

    .line 1163
    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$1500(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$1500(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_23

    .line 1164
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_22

    .line 1165
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1167
    :cond_22
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->viewsBySourceCell:I

    .line 1169
    :cond_23
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$1600(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$1600(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_25

    .line 1170
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_24

    .line 1171
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1173
    :cond_24
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newFollowersBySourceCell:I

    .line 1175
    :cond_25
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2600(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2600(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_27

    .line 1176
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_26

    .line 1177
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1179
    :cond_26
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->languagesCell:I

    .line 1181
    :cond_27
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$1400(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$1400(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isEmpty:Z

    if-nez v0, :cond_29

    .line 1182
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_28

    .line 1183
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1185
    :cond_28
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->interactionsCell:I

    .line 1187
    :cond_29
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$1700(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$1700(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->loading:Z

    if-nez v0, :cond_2b

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$1700(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/StatisticActivity$ChartViewData;->isError:Z

    if-nez v0, :cond_2b

    .line 1188
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_2a

    .line 1189
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1191
    :cond_2a
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->ivInteractionsCell:I

    .line 1194
    :cond_2b
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1196
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$400(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2d

    .line 1197
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsHeaderCell:I

    add-int/lit8 v0, v1, 0x1

    .line 1198
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    .line 1199
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$500(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsEndRow:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v1, 0x1

    .line 1200
    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    .line 1202
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$500(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v1}, Lorg/telegram/ui/StatisticActivity;->access$400(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2c

    .line 1203
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->progressCell:I

    goto :goto_1

    .line 1205
    :cond_2c
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->emptyCells:Landroidx/collection/ArraySet;

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1208
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2d
    :goto_2
    return-void
.end method
