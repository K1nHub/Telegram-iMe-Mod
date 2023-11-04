.class Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "StatisticActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/StatisticActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DiffUtilsCallback"
.end annotation


# instance fields
.field actionsCell:I

.field private final adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

.field count:I

.field endPosts:I

.field folowersCell:I

.field groupMembersCell:I

.field growCell:I

.field interactionsCell:I

.field ivInteractionsCell:I

.field languagesCell:I

.field private final layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field membersLanguageCell:I

.field messagesCell:I

.field newFollowersBySourceCell:I

.field newMembersBySourceCell:I

.field notificationsCell:I

.field positionToTypeMap:Landroid/util/SparseIntArray;

.field startPosts:I

.field topDayOfWeeksCell:I

.field topHourseCell:I

.field viewsBySourceCell:I


# direct methods
.method private constructor <init>(Lorg/telegram/ui/StatisticActivity$Adapter;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 1

    .line 2118
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 2095
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->positionToTypeMap:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    .line 2098
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->growCell:I

    .line 2099
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->folowersCell:I

    .line 2100
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->interactionsCell:I

    .line 2101
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->ivInteractionsCell:I

    .line 2102
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->viewsBySourceCell:I

    .line 2103
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->newFollowersBySourceCell:I

    .line 2104
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->languagesCell:I

    .line 2105
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->topHourseCell:I

    .line 2106
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->notificationsCell:I

    .line 2108
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->groupMembersCell:I

    .line 2109
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->newMembersBySourceCell:I

    .line 2110
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->membersLanguageCell:I

    .line 2111
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->messagesCell:I

    .line 2112
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->actionsCell:I

    .line 2113
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->topDayOfWeeksCell:I

    .line 2115
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->startPosts:I

    .line 2116
    iput v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->endPosts:I

    .line 2119
    iput-object p1, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    .line 2120
    iput-object p2, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/StatisticActivity$Adapter;Landroidx/recyclerview/widget/LinearLayoutManager;Lorg/telegram/ui/StatisticActivity$1;)V
    .locals 0

    .line 2091
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;-><init>(Lorg/telegram/ui/StatisticActivity$Adapter;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    .line 2206
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->positionToTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    .line 2207
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/StatisticActivity$Adapter;->getItemViewType(I)I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 4

    .line 2161
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->positionToTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/16 v1, 0xd

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/StatisticActivity$Adapter;->getItemViewType(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    return v2

    .line 2164
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->positionToTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/StatisticActivity$Adapter;->getItemViewType(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v2

    .line 2167
    :cond_1
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->startPosts:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_3

    iget v3, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->endPosts:I

    if-gt p1, v3, :cond_3

    sub-int/2addr p1, v0

    .line 2168
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget v0, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    sub-int/2addr p2, v0

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    return v2

    .line 2170
    :cond_3
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->growCell:I

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget v0, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->growCell:I

    if-ne p2, v0, :cond_4

    return v2

    .line 2172
    :cond_4
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->folowersCell:I

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget v0, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->folowersCell:I

    if-ne p2, v0, :cond_5

    return v2

    .line 2174
    :cond_5
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->interactionsCell:I

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget v0, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->interactionsCell:I

    if-ne p2, v0, :cond_6

    return v2

    .line 2176
    :cond_6
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->ivInteractionsCell:I

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget v0, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->ivInteractionsCell:I

    if-ne p2, v0, :cond_7

    return v2

    .line 2178
    :cond_7
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->viewsBySourceCell:I

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget v0, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->viewsBySourceCell:I

    if-ne p2, v0, :cond_8

    return v2

    .line 2180
    :cond_8
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->newFollowersBySourceCell:I

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget v0, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->newFollowersBySourceCell:I

    if-ne p2, v0, :cond_9

    return v2

    .line 2182
    :cond_9
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->languagesCell:I

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget v0, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->languagesCell:I

    if-ne p2, v0, :cond_a

    return v2

    .line 2184
    :cond_a
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->topHourseCell:I

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget v0, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->topHourseCell:I

    if-ne p2, v0, :cond_b

    return v2

    .line 2186
    :cond_b
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->notificationsCell:I

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget v0, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->notificationsCell:I

    if-ne p2, v0, :cond_c

    return v2

    .line 2188
    :cond_c
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->groupMembersCell:I

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget v0, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->groupMembersCell:I

    if-ne p2, v0, :cond_d

    return v2

    .line 2190
    :cond_d
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->newMembersBySourceCell:I

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget v0, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->newMembersBySourceCell:I

    if-ne p2, v0, :cond_e

    return v2

    .line 2192
    :cond_e
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->membersLanguageCell:I

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget v0, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->membersLanguageCell:I

    if-ne p2, v0, :cond_f

    return v2

    .line 2194
    :cond_f
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->messagesCell:I

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget v0, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->messagesCell:I

    if-ne p2, v0, :cond_10

    return v2

    .line 2196
    :cond_10
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->actionsCell:I

    if-ne p1, v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget v0, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->actionsCell:I

    if-ne p2, v0, :cond_11

    return v2

    .line 2198
    :cond_11
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->topDayOfWeeksCell:I

    if-ne p1, v0, :cond_12

    iget-object p1, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget p1, p1, Lorg/telegram/ui/StatisticActivity$Adapter;->topDayOfWeeksCell:I

    if-ne p2, p1, :cond_12

    return v2

    :cond_12
    return v1
.end method

.method public getNewListSize()I
    .locals 1

    .line 2156
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget v0, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->count:I

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 2151
    iget v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->count:I

    return v0
.end method

.method public saveOldState()V
    .locals 3

    .line 2124
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->positionToTypeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 2125
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-virtual {v0}, Lorg/telegram/ui/StatisticActivity$Adapter;->getItemCount()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->count:I

    const/4 v0, 0x0

    .line 2126
    :goto_0
    iget v1, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->count:I

    if-ge v0, v1, :cond_0

    .line 2127
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->positionToTypeMap:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/StatisticActivity$Adapter;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2129
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    iget v1, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->growCell:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->growCell:I

    .line 2130
    iget v1, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->folowersCell:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->folowersCell:I

    .line 2131
    iget v1, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->interactionsCell:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->interactionsCell:I

    .line 2132
    iget v1, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->ivInteractionsCell:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->ivInteractionsCell:I

    .line 2133
    iget v1, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->viewsBySourceCell:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->viewsBySourceCell:I

    .line 2134
    iget v1, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->newFollowersBySourceCell:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->newFollowersBySourceCell:I

    .line 2135
    iget v1, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->languagesCell:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->languagesCell:I

    .line 2136
    iget v1, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->topHourseCell:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->topHourseCell:I

    .line 2137
    iget v1, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->notificationsCell:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->notificationsCell:I

    .line 2138
    iget v1, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsStartRow:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->startPosts:I

    .line 2139
    iget v1, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->recentPostsEndRow:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->endPosts:I

    .line 2141
    iget v1, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->groupMembersCell:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->groupMembersCell:I

    .line 2142
    iget v1, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->newMembersBySourceCell:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->newMembersBySourceCell:I

    .line 2143
    iget v1, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->membersLanguageCell:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->membersLanguageCell:I

    .line 2144
    iget v1, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->messagesCell:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->messagesCell:I

    .line 2145
    iget v1, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->actionsCell:I

    iput v1, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->actionsCell:I

    .line 2146
    iget v0, v0, Lorg/telegram/ui/StatisticActivity$Adapter;->topDayOfWeeksCell:I

    iput v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->topDayOfWeeksCell:I

    return-void
.end method

.method public update()V
    .locals 8

    .line 2211
    invoke-virtual {p0}, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->saveOldState()V

    .line 2212
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-virtual {v0}, Lorg/telegram/ui/StatisticActivity$Adapter;->update()V

    .line 2213
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 2214
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    if-gt v0, v1, :cond_1

    .line 2218
    iget-object v5, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/StatisticActivity$Adapter;->getItemId(I)J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-eqz v5, :cond_0

    .line 2219
    iget-object v5, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2221
    iget-object v1, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/StatisticActivity$Adapter;->getItemId(I)J

    move-result-wide v0

    .line 2222
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v5, v2

    move-wide v0, v3

    .line 2227
    :goto_1
    invoke-static {p0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    cmp-long v3, v0, v3

    if-eqz v3, :cond_4

    const/4 v3, -0x1

    .line 2231
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-virtual {v4}, Lorg/telegram/ui/StatisticActivity$Adapter;->getItemCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 2232
    iget-object v4, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->adapter:Lorg/telegram/ui/StatisticActivity$Adapter;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/StatisticActivity$Adapter;->getItemId(I)J

    move-result-wide v6

    cmp-long v4, v6, v0

    if-nez v4, :cond_2

    move v3, v2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-lez v3, :cond_4

    .line 2238
    iget-object v0, p0, Lorg/telegram/ui/StatisticActivity$DiffUtilsCallback;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v3, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_4
    return-void
.end method
