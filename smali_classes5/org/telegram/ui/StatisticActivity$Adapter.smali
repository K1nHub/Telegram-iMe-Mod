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

    .line 765
    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    const/4 p1, -0x1

    .line 767
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->overviewHeaderCell:I

    .line 769
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->growCell:I

    .line 770
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->progressCell:I

    .line 773
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->folowersCell:I

    .line 774
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topHourseCell:I

    .line 775
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->interactionsCell:I

    .line 776
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->ivInteractionsCell:I

    .line 777
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->viewsBySourceCell:I

    .line 778
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newFollowersBySourceCell:I

    .line 779
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->languagesCell:I

    .line 780
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->notificationsCell:I

    .line 782
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsHeaderCell:I

    .line 783
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    .line 784
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsEndRow:I

    .line 787
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->groupMembersCell:I

    .line 788
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newMembersBySourceCell:I

    .line 789
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->membersLanguageCell:I

    .line 790
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->messagesCell:I

    .line 791
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->actionsCell:I

    .line 792
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topDayOfWeeksCell:I

    .line 793
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersHeaderCell:I

    .line 794
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersStartRow:I

    .line 795
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersEndRow:I

    .line 796
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsHeaderCell:I

    .line 797
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsStartRow:I

    .line 798
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsEndRow:I

    .line 799
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterHeaderCell:I

    .line 800
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterStartRow:I

    .line 801
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterEndRow:I

    .line 802
    iput p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->expandTopMembersRow:I

    .line 805
    new-instance p1, Landroidx/collection/ArraySet;

    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    .line 806
    new-instance p1, Landroidx/collection/ArraySet;

    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->emptyCells:Landroidx/collection/ArraySet;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1019
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 844
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsEndRow:I

    if-ge p1, v0, :cond_0

    .line 845
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

    .line 847
    :cond_0
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->growCell:I

    if-ne p1, v0, :cond_1

    const-wide/16 v0, 0x1

    return-wide v0

    .line 849
    :cond_1
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->folowersCell:I

    if-ne p1, v0, :cond_2

    const-wide/16 v0, 0x2

    return-wide v0

    .line 851
    :cond_2
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topHourseCell:I

    if-ne p1, v0, :cond_3

    const-wide/16 v0, 0x3

    return-wide v0

    .line 853
    :cond_3
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->interactionsCell:I

    if-ne p1, v0, :cond_4

    const-wide/16 v0, 0x4

    return-wide v0

    .line 855
    :cond_4
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->notificationsCell:I

    if-ne p1, v0, :cond_5

    const-wide/16 v0, 0x5

    return-wide v0

    .line 857
    :cond_5
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->ivInteractionsCell:I

    if-ne p1, v0, :cond_6

    const-wide/16 v0, 0x6

    return-wide v0

    .line 859
    :cond_6
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->viewsBySourceCell:I

    if-ne p1, v0, :cond_7

    const-wide/16 v0, 0x7

    return-wide v0

    .line 861
    :cond_7
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newFollowersBySourceCell:I

    if-ne p1, v0, :cond_8

    const-wide/16 v0, 0x8

    return-wide v0

    .line 863
    :cond_8
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->languagesCell:I

    if-ne p1, v0, :cond_9

    const-wide/16 v0, 0x9

    return-wide v0

    .line 865
    :cond_9
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->groupMembersCell:I

    if-ne p1, v0, :cond_a

    const-wide/16 v0, 0xa

    return-wide v0

    .line 867
    :cond_a
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newMembersBySourceCell:I

    if-ne p1, v0, :cond_b

    const-wide/16 v0, 0xb

    return-wide v0

    .line 869
    :cond_b
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->membersLanguageCell:I

    if-ne p1, v0, :cond_c

    const-wide/16 v0, 0xc

    return-wide v0

    .line 871
    :cond_c
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->messagesCell:I

    if-ne p1, v0, :cond_d

    const-wide/16 v0, 0xd

    return-wide v0

    .line 873
    :cond_d
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->actionsCell:I

    if-ne p1, v0, :cond_e

    const-wide/16 v0, 0xe

    return-wide v0

    .line 875
    :cond_e
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topDayOfWeeksCell:I

    if-ne p1, v0, :cond_f

    const-wide/16 v0, 0xf

    return-wide v0

    .line 878
    :cond_f
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 812
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

    .line 814
    :cond_0
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->interactionsCell:I

    if-eq p1, v0, :cond_11

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->ivInteractionsCell:I

    if-ne p1, v0, :cond_1

    goto/16 :goto_3

    .line 816
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

    .line 818
    :cond_2
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->languagesCell:I

    if-eq p1, v0, :cond_f

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->membersLanguageCell:I

    if-eq p1, v0, :cond_f

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topDayOfWeeksCell:I

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 820
    :cond_3
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    const/16 v1, 0x9

    if-lt p1, v0, :cond_4

    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsEndRow:I

    if-gt p1, v0, :cond_4

    return v1

    .line 822
    :cond_4
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->progressCell:I

    if-ne p1, v0, :cond_5

    const/16 p1, 0xb

    return p1

    .line 824
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->emptyCells:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/collection/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p1, 0xc

    return p1

    .line 826
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

    .line 829
    :cond_7
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->overviewCell:I

    if-ne p1, v0, :cond_8

    const/16 p1, 0xe

    return p1

    .line 831
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

    .line 835
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

    .line 1236
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

    .line 939
    invoke-virtual {p0, p2}, Lorg/telegram/ui/StatisticActivity$Adapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_e

    const/4 v2, 0x4

    if-gt v0, v2, :cond_e

    .line 942
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->growCell:I

    if-ne v0, p2, :cond_0

    .line 943
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$1200(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto/16 :goto_0

    .line 944
    :cond_0
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->folowersCell:I

    if-ne v0, p2, :cond_1

    .line 945
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$1300(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto/16 :goto_0

    .line 946
    :cond_1
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->interactionsCell:I

    if-ne v0, p2, :cond_2

    .line 947
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$1400(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto/16 :goto_0

    .line 948
    :cond_2
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->viewsBySourceCell:I

    if-ne v0, p2, :cond_3

    .line 949
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$1500(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto/16 :goto_0

    .line 950
    :cond_3
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newFollowersBySourceCell:I

    if-ne v0, p2, :cond_4

    .line 951
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$1600(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto/16 :goto_0

    .line 952
    :cond_4
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->ivInteractionsCell:I

    if-ne v0, p2, :cond_5

    .line 953
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$1700(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 954
    :cond_5
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topHourseCell:I

    if-ne v0, p2, :cond_6

    .line 955
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$1800(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 956
    :cond_6
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->notificationsCell:I

    if-ne v0, p2, :cond_7

    .line 957
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$1900(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 958
    :cond_7
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->groupMembersCell:I

    if-ne v0, p2, :cond_8

    .line 959
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$2000(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 960
    :cond_8
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newMembersBySourceCell:I

    if-ne v0, p2, :cond_9

    .line 961
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$2100(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 962
    :cond_9
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->membersLanguageCell:I

    if-ne v0, p2, :cond_a

    .line 963
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$2200(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 964
    :cond_a
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->messagesCell:I

    if-ne v0, p2, :cond_b

    .line 965
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$2300(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 966
    :cond_b
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->actionsCell:I

    if-ne v0, p2, :cond_c

    .line 967
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$2400(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 968
    :cond_c
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topDayOfWeeksCell:I

    if-ne v0, p2, :cond_d

    .line 969
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$2500(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    goto :goto_0

    .line 971
    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$2600(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object p2

    .line 973
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/StatisticActivity$ChartCell;

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/StatisticActivity$BaseChartCell;->updateData(Lorg/telegram/ui/StatisticActivity$ChartViewData;Z)V

    goto/16 :goto_1

    :cond_e
    const/16 v2, 0x9

    if-ne v0, v2, :cond_12

    .line 975
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2700(Lorg/telegram/ui/StatisticActivity;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 976
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsStartRow:I

    if-lt p2, v0, :cond_f

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsEndRow:I

    if-gt p2, v1, :cond_f

    sub-int/2addr p2, v0

    .line 978
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

    .line 979
    :cond_f
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersStartRow:I

    if-lt p2, v0, :cond_10

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersEndRow:I

    if-gt p2, v1, :cond_10

    sub-int/2addr p2, v0

    .line 981
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

    .line 982
    :cond_10
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterStartRow:I

    if-lt p2, v0, :cond_1a

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterEndRow:I

    if-gt p2, v1, :cond_1a

    sub-int/2addr p2, v0

    .line 984
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

    .line 987
    :cond_11
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    sub-int/2addr p2, v0

    .line 988
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

    .line 991
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;

    .line 992
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$3100(Lorg/telegram/ui/StatisticActivity;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v2}, Lorg/telegram/ui/StatisticActivity;->access$3200(Lorg/telegram/ui/StatisticActivity;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setDates(JJ)V

    .line 993
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->overviewHeaderCell:I

    if-ne p2, v0, :cond_13

    .line 994
    sget p2, Lorg/telegram/messenger/R$string;->StatisticOverview:I

    const-string v0, "StatisticOverview"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 995
    :cond_13
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsHeaderCell:I

    if-ne p2, v0, :cond_14

    .line 996
    sget p2, Lorg/telegram/messenger/R$string;->TopAdmins:I

    const-string v0, "TopAdmins"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 997
    :cond_14
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterHeaderCell:I

    if-ne p2, v0, :cond_15

    .line 998
    sget p2, Lorg/telegram/messenger/R$string;->TopInviters:I

    const-string v0, "TopInviters"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 999
    :cond_15
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersHeaderCell:I

    if-ne p2, v0, :cond_16

    .line 1000
    sget p2, Lorg/telegram/messenger/R$string;->TopMembers:I

    const-string v0, "TopMembers"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Charts/view_data/ChartHeaderView;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 1002
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

    .line 1005
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/StatisticActivity$OverviewCell;

    .line 1006
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$2700(Lorg/telegram/ui/StatisticActivity;)Z

    move-result p2

    if-eqz p2, :cond_18

    .line 1007
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$3300(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$OverviewChatData;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->setData(Lorg/telegram/ui/StatisticActivity$OverviewChatData;)V

    goto :goto_1

    .line 1009
    :cond_18
    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$3400(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$OverviewChannelData;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/StatisticActivity$OverviewCell;->setData(Lorg/telegram/ui/StatisticActivity$OverviewChannelData;)V

    goto :goto_1

    :cond_19
    const/16 p2, 0xf

    if-ne v0, p2, :cond_1a

    .line 1012
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ManageChatTextCell;

    .line 1013
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

    .line 885
    new-instance v1, Lorg/telegram/ui/StatisticActivity$Adapter$1;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v2}, Lorg/telegram/ui/StatisticActivity;->access$1000(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;

    move-result-object v2

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/telegram/ui/StatisticActivity$Adapter$1;-><init>(Lorg/telegram/ui/StatisticActivity$Adapter;Landroid/content/Context;ILorg/telegram/ui/Charts/BaseChartView$SharedUiComponents;)V

    .line 894
    invoke-virtual {v1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x9

    if-ne p2, v1, :cond_1

    .line 896
    new-instance v1, Lorg/telegram/ui/StatisticActivity$Adapter$2;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {p2}, Lorg/telegram/ui/StatisticActivity;->access$1100(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/StatisticActivity$Adapter$2;-><init>(Lorg/telegram/ui/StatisticActivity$Adapter;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 905
    invoke-virtual {v1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xb

    if-ne p2, v1, :cond_2

    .line 907
    new-instance v1, Lorg/telegram/ui/Cells/LoadingCell;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    .line 908
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xf

    const/16 v2, 0xc

    if-ne p2, v2, :cond_3

    .line 910
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

    .line 912
    new-instance v1, Lorg/telegram/ui/StatisticActivity$Adapter$3;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/StatisticActivity$Adapter$3;-><init>(Lorg/telegram/ui/StatisticActivity$Adapter;Landroid/content/Context;)V

    .line 921
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 922
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

    .line 925
    new-instance v1, Lorg/telegram/ui/StatisticActivity$OverviewCell;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/telegram/ui/StatisticActivity$OverviewCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    if-ne p2, v1, :cond_6

    .line 927
    new-instance v1, Lorg/telegram/ui/Cells/ManageChatTextCell;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/telegram/ui/Cells/ManageChatTextCell;-><init>(Landroid/content/Context;)V

    .line 928
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 929
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/Cells/ManageChatTextCell;->setColors(II)V

    goto :goto_0

    .line 931
    :cond_6
    new-instance v1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-direct {v1, p1, v2, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;II)V

    .line 933
    :goto_0
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 934
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public update()V
    .locals 3

    const/4 v0, -0x1

    .line 1023
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->growCell:I

    .line 1024
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->folowersCell:I

    .line 1025
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->interactionsCell:I

    .line 1026
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->viewsBySourceCell:I

    .line 1027
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newFollowersBySourceCell:I

    .line 1028
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->languagesCell:I

    .line 1029
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    .line 1030
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsEndRow:I

    .line 1031
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->progressCell:I

    .line 1032
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsHeaderCell:I

    .line 1033
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->ivInteractionsCell:I

    .line 1034
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topHourseCell:I

    .line 1035
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->notificationsCell:I

    .line 1036
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->groupMembersCell:I

    .line 1037
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newMembersBySourceCell:I

    .line 1038
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->membersLanguageCell:I

    .line 1039
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->messagesCell:I

    .line 1040
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->actionsCell:I

    .line 1041
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topDayOfWeeksCell:I

    .line 1042
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersHeaderCell:I

    .line 1043
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersStartRow:I

    .line 1044
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersEndRow:I

    .line 1045
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsHeaderCell:I

    .line 1046
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsStartRow:I

    .line 1047
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsEndRow:I

    .line 1048
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterHeaderCell:I

    .line 1049
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterStartRow:I

    .line 1050
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterEndRow:I

    .line 1051
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->expandTopMembersRow:I

    const/4 v0, 0x0

    .line 1053
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    .line 1054
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->emptyCells:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    .line 1055
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    .line 1057
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2700(Lorg/telegram/ui/StatisticActivity;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1058
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$3300(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$OverviewChatData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1059
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->overviewHeaderCell:I

    add-int/lit8 v0, v1, 0x1

    .line 1060
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->overviewCell:I

    .line 1063
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

    .line 1064
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_1

    .line 1065
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1067
    :cond_1
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->growCell:I

    .line 1069
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

    .line 1070
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_3

    .line 1071
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1073
    :cond_3
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->groupMembersCell:I

    .line 1075
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

    .line 1076
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_5

    .line 1077
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1079
    :cond_5
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newMembersBySourceCell:I

    .line 1081
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

    .line 1082
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_7

    .line 1083
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1085
    :cond_7
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->membersLanguageCell:I

    .line 1087
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

    .line 1088
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_9

    .line 1089
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1091
    :cond_9
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->messagesCell:I

    .line 1093
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

    .line 1094
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_b

    .line 1095
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1097
    :cond_b
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->actionsCell:I

    .line 1099
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

    .line 1100
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_d

    .line 1101
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1103
    :cond_d
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topHourseCell:I

    .line 1106
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

    .line 1107
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_f

    .line 1108
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1110
    :cond_f
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topDayOfWeeksCell:I

    .line 1113
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2900(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 1114
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_11

    .line 1115
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1117
    :cond_11
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersHeaderCell:I

    add-int/lit8 v0, v1, 0x1

    .line 1118
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topMembersStartRow:I

    .line 1119
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

    .line 1120
    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    .line 1121
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

    .line 1122
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->expandTopMembersRow:I

    goto :goto_0

    .line 1124
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->emptyCells:Landroidx/collection/ArraySet;

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1128
    :cond_13
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$2800(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 1129
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_14

    .line 1130
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1132
    :cond_14
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsHeaderCell:I

    add-int/lit8 v0, v1, 0x1

    .line 1133
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topAdminsStartRow:I

    .line 1134
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

    .line 1135
    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    .line 1136
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->emptyCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1139
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$3000(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 1140
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_16

    .line 1141
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1143
    :cond_16
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterHeaderCell:I

    add-int/lit8 v0, v1, 0x1

    .line 1144
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topInviterStartRow:I

    .line 1145
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

    .line 1146
    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    .line 1149
    :cond_17
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_2d

    .line 1150
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->emptyCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1151
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1154
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$3400(Lorg/telegram/ui/StatisticActivity;)Lorg/telegram/ui/StatisticActivity$OverviewChannelData;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1155
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->overviewHeaderCell:I

    add-int/lit8 v0, v1, 0x1

    .line 1156
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->overviewCell:I

    .line 1159
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

    .line 1160
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_1a

    .line 1161
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1163
    :cond_1a
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->growCell:I

    .line 1166
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

    .line 1167
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_1c

    .line 1168
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1170
    :cond_1c
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->folowersCell:I

    .line 1172
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

    .line 1173
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_1e

    .line 1174
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1176
    :cond_1e
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->notificationsCell:I

    .line 1178
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

    .line 1179
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_20

    .line 1180
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1182
    :cond_20
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->topHourseCell:I

    .line 1184
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

    .line 1185
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_22

    .line 1186
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1188
    :cond_22
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->viewsBySourceCell:I

    .line 1190
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

    .line 1191
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_24

    .line 1192
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1194
    :cond_24
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->newFollowersBySourceCell:I

    .line 1196
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

    .line 1197
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_26

    .line 1198
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1200
    :cond_26
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->languagesCell:I

    .line 1202
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

    .line 1203
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_28

    .line 1204
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1206
    :cond_28
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->interactionsCell:I

    .line 1208
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

    .line 1209
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    if-lez v0, :cond_2a

    .line 1210
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1212
    :cond_2a
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->ivInteractionsCell:I

    .line 1215
    :cond_2b
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->shadowDivideCells:Landroidx/collection/ArraySet;

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1217
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->this$0:Lorg/telegram/ui/StatisticActivity;

    invoke-static {v0}, Lorg/telegram/ui/StatisticActivity;->access$400(Lorg/telegram/ui/StatisticActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2d

    .line 1218
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsHeaderCell:I

    add-int/lit8 v0, v1, 0x1

    .line 1219
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    .line 1220
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

    .line 1221
    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    .line 1223
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

    .line 1224
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->progressCell:I

    goto :goto_1

    .line 1226
    :cond_2c
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->emptyCells:Landroidx/collection/ArraySet;

    iget v1, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1229
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
