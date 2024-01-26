.class public Lorg/telegram/ui/UsersSelectActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "UsersSelectActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;,
        Lorg/telegram/ui/UsersSelectActivity$SpansContainer;,
        Lorg/telegram/ui/UsersSelectActivity$FilterUsersActivityDelegate;,
        Lorg/telegram/ui/UsersSelectActivity$ItemDecoration;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;

.field private allItemsCategoryFilter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;",
            ">;"
        }
    .end annotation
.end field

.field private allSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/GroupCreateSpan;",
            ">;"
        }
    .end annotation
.end field

.field animatedAvatarContainer:Lorg/telegram/ui/Components/AnimatedAvatarContainer;

.field private containerHeight:I

.field private currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

.field private delegate:Lorg/telegram/ui/UsersSelectActivity$FilterUsersActivityDelegate;

.field private editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private fieldY:I

.field private filterFlags:I

.field private floatingButton:Landroid/widget/ImageView;

.field private ignoreScrollEvent:Z

.field private initialIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private isInclude:Z

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field public noChatTypes:Z

.field private scrollView:Landroid/widget/ScrollView;

.field private searchWas:Z

.field private searching:Z

.field selectedChatsGroupCreationFilter:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

.field private selectedContacts:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lorg/telegram/ui/Components/GroupCreateSpan;",
            ">;"
        }
    .end annotation
.end field

.field private selectedCount:I

.field private spansContainer:Lorg/telegram/ui/UsersSelectActivity$SpansContainer;

.field public topicMode:Z

.field public topicModeFilterFolderId:I

.field private ttlPeriod:I

.field private type:I


# direct methods
.method public static synthetic $r8$lambda$9HUW5_u1LUTSwvHHbMSYE4RhQyY(Lorg/telegram/ui/UsersSelectActivity;Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/UsersSelectActivity;->lambda$createView$1(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HSggQpq0OPUkm8QdVTllCn2Ph_Y(Lorg/telegram/ui/UsersSelectActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/UsersSelectActivity;->lambda$createView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wjHnKNqFVWQhVlCQpFfN7AR5iJo(Lorg/telegram/ui/UsersSelectActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/UsersSelectActivity;->lambda$createView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yJxMm7ubyUY9_odxbfqfV1-PEbM(Lorg/telegram/ui/UsersSelectActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/UsersSelectActivity;->lambda$getThemeDescriptions$3()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 410
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->allItemsCategoryFilter:Ljava/util/HashMap;

    .line 158
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->allSpans:Ljava/util/ArrayList;

    .line 411
    iput p1, p0, Lorg/telegram/ui/UsersSelectActivity;->type:I

    return-void
.end method

.method public constructor <init>(ZLjava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .line 402
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->allItemsCategoryFilter:Ljava/util/HashMap;

    .line 158
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->allSpans:Ljava/util/ArrayList;

    .line 403
    iput-boolean p1, p0, Lorg/telegram/ui/UsersSelectActivity;->isInclude:Z

    .line 404
    iput p3, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    .line 405
    iput-object p2, p0, Lorg/telegram/ui/UsersSelectActivity;->initialIds:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 406
    iput p1, p0, Lorg/telegram/ui/UsersSelectActivity;->type:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/UsersSelectActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/UsersSelectActivity;->fieldY:I

    return p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/UsersSelectActivity;I)I
    .locals 0

    .line 94
    iput p1, p0, Lorg/telegram/ui/UsersSelectActivity;->fieldY:I

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/UsersSelectActivity;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lorg/telegram/ui/UsersSelectActivity;->searching:Z

    return p0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/UsersSelectActivity;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lorg/telegram/ui/UsersSelectActivity;->searching:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/UsersSelectActivity;)Ljava/util/HashMap;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/UsersSelectActivity;->allItemsCategoryFilter:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/UsersSelectActivity;->adapter:Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;

    return-object p0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/UsersSelectActivity;Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;)Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/telegram/ui/UsersSelectActivity;->adapter:Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/UsersSelectActivity;Z)Z
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/ui/UsersSelectActivity;->onDonePressed(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/UsersSelectActivity;)Landroid/widget/ScrollView;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/UsersSelectActivity;->scrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/UsersSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/UsersSelectActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/UsersSelectActivity;->floatingButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/UsersSelectActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/UsersSelectActivity;->containerHeight:I

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/Components/GroupCreateSpan;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/UsersSelectActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    return-object p0
.end method

.method static synthetic access$2002(Lorg/telegram/ui/UsersSelectActivity;Lorg/telegram/ui/Components/GroupCreateSpan;)Lorg/telegram/ui/Components/GroupCreateSpan;
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/telegram/ui/UsersSelectActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    return-object p1
.end method

.method static synthetic access$202(Lorg/telegram/ui/UsersSelectActivity;I)I
    .locals 0

    .line 94
    iput p1, p0, Lorg/telegram/ui/UsersSelectActivity;->containerHeight:I

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/ui/UsersSelectActivity;)Lorg/telegram/ui/UsersSelectActivity$SpansContainer;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/UsersSelectActivity;->spansContainer:Lorg/telegram/ui/UsersSelectActivity$SpansContainer;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/UsersSelectActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    return p0
.end method

.method static synthetic access$2272(Lorg/telegram/ui/UsersSelectActivity;I)I
    .locals 1

    .line 94
    iget v0, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    and-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/UsersSelectActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lorg/telegram/ui/UsersSelectActivity;->updateHint()V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/UsersSelectActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lorg/telegram/ui/UsersSelectActivity;->checkVisibleRows()V

    return-void
.end method

.method static synthetic access$2602(Lorg/telegram/ui/UsersSelectActivity;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lorg/telegram/ui/UsersSelectActivity;->searchWas:Z

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/UsersSelectActivity;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lorg/telegram/ui/UsersSelectActivity;->closeSearch()V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/ui/UsersSelectActivity;)I
    .locals 0

    .line 94
    iget p0, p0, Lorg/telegram/ui/UsersSelectActivity;->type:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/UsersSelectActivity;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lorg/telegram/ui/UsersSelectActivity;->ignoreScrollEvent:Z

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/UsersSelectActivity;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lorg/telegram/ui/UsersSelectActivity;->isInclude:Z

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/UsersSelectActivity;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lorg/telegram/ui/UsersSelectActivity;->ignoreScrollEvent:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/UsersSelectActivity;)Z
    .locals 0

    .line 94
    invoke-direct {p0}, Lorg/telegram/ui/UsersSelectActivity;->hasAllItemCategoryFilter()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/UsersSelectActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/UsersSelectActivity;->allSpans:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$508(Lorg/telegram/ui/UsersSelectActivity;)I
    .locals 2

    .line 94
    iget v0, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedCount:I

    return v0
.end method

.method static synthetic access$510(Lorg/telegram/ui/UsersSelectActivity;)I
    .locals 2

    .line 94
    iget v0, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedCount:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/UsersSelectActivity;)Landroidx/collection/LongSparseArray;
    .locals 0

    .line 94
    iget-object p0, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method private checkVisibleRows()V
    .locals 10

    .line 991
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    .line 993
    iget-object v3, p0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 994
    instance-of v4, v3, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz v4, :cond_5

    .line 995
    check-cast v3, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .line 996
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->getObject()Ljava/lang/Object;

    move-result-object v4

    .line 998
    instance-of v5, v4, Ljava/lang/String;

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_1

    .line 999
    check-cast v4, Ljava/lang/String;

    const/4 v5, -0x1

    .line 1000
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v9, "channels"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x3

    goto :goto_1

    :sswitch_1
    const-string v9, "muted"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x5

    goto :goto_1

    :sswitch_2
    const-string v9, "read"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x6

    goto :goto_1

    :sswitch_3
    const-string v9, "bots"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_4
    const-string v9, "contacts"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v1

    goto :goto_1

    :sswitch_5
    const-string v9, "non_contacts"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v5, v8

    goto :goto_1

    :sswitch_6
    const-string v9, "groups"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :sswitch_7
    const-string v9, "archived"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x7

    :cond_0
    :goto_1
    packed-switch v5, :pswitch_data_0

    const-wide v4, -0x7ffffffffffffff9L    # -3.5E-323

    goto :goto_2

    :pswitch_0
    const-wide v4, -0x7ffffffffffffffaL    # -3.0E-323

    goto :goto_2

    :pswitch_1
    const-wide v4, -0x7ffffffffffffffbL    # -2.5E-323

    goto :goto_2

    :pswitch_2
    const-wide v4, -0x7ffffffffffffffcL    # -2.0E-323

    goto :goto_2

    :pswitch_3
    const-wide v4, -0x7ffffffffffffffdL    # -1.5E-323

    goto :goto_2

    :pswitch_4
    const-wide v4, -0x7ffffffffffffffeL    # -1.0E-323

    goto :goto_2

    :pswitch_5
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :pswitch_6
    const-wide/high16 v4, -0x8000000000000000L

    goto :goto_2

    .line 1027
    :cond_1
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_2

    .line 1028
    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_2

    .line 1029
    :cond_2
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v5, :cond_3

    .line 1030
    check-cast v4, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v4, v4

    goto :goto_2

    :cond_3
    move-wide v4, v6

    :goto_2
    cmp-long v6, v4, v6

    if-eqz v6, :cond_5

    .line 1035
    iget-object v6, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v6, v4, v5}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v4

    if-ltz v4, :cond_4

    move v4, v8

    goto :goto_3

    :cond_4
    move v4, v1

    :goto_3
    invoke-virtual {v3, v4, v8}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    .line 1036
    invoke-virtual {v3, v8}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setCheckBoxEnabled(Z)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x664cc81e -> :sswitch_7
        -0x49c2262c -> :sswitch_6
        -0x4760427b -> :sswitch_5
        -0x21d29fad -> :sswitch_4
        0x2e3b8c -> :sswitch_3
        0x355996 -> :sswitch_2
        0x636f16b -> :sswitch_1
        0x556423d0 -> :sswitch_0
    .end sparse-switch

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

.method private closeSearch()V
    .locals 3

    const/4 v0, 0x0

    .line 1062
    iput-boolean v0, p0, Lorg/telegram/ui/UsersSelectActivity;->searching:Z

    .line 1063
    iput-boolean v0, p0, Lorg/telegram/ui/UsersSelectActivity;->searchWas:Z

    .line 1064
    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity;->adapter:Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->setSearching(Z)V

    .line 1065
    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity;->adapter:Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;->searchDialogs(Ljava/lang/String;)V

    .line 1066
    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    .line 1067
    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1068
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v1, Lorg/telegram/messenger/R$string;->NoContacts:I

    const-string v2, "NoContacts"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private hasAllItemCategoryFilter()Z
    .locals 2

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedChatsGroupCreationFilter:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    sget-object v1, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->ALL_CHATS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$createView$0(Landroid/view/View;)V
    .locals 0

    .line 603
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 604
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 605
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method private synthetic lambda$createView$1(Landroid/content/Context;Landroid/view/View;I)V
    .locals 10

    .line 748
    instance-of v0, p2, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz v0, :cond_14

    .line 749
    check-cast p2, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    .line 750
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->getObject()Ljava/lang/Object;

    move-result-object v0

    .line 752
    instance-of v1, v0, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    .line 754
    iget-boolean v3, p0, Lorg/telegram/ui/UsersSelectActivity;->isInclude:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_4

    if-ne p3, v2, :cond_0

    .line 756
    sget p3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    const-wide/high16 v3, -0x8000000000000000L

    goto :goto_0

    :cond_0
    if-ne p3, v4, :cond_1

    .line 759
    sget p3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne p3, v3, :cond_2

    .line 762
    sget p3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    const-wide v3, -0x7ffffffffffffffeL    # -1.0E-323

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    if-ne p3, v3, :cond_3

    .line 765
    sget p3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    const-wide v3, -0x7ffffffffffffffdL    # -1.5E-323

    goto :goto_0

    .line 768
    :cond_3
    sget p3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    const-wide v3, -0x7ffffffffffffffcL    # -2.0E-323

    goto :goto_0

    :cond_4
    if-ne p3, v2, :cond_5

    .line 773
    sget p3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_MUTED:I

    const-wide v3, -0x7ffffffffffffffbL    # -2.5E-323

    goto :goto_0

    :cond_5
    if-ne p3, v4, :cond_6

    .line 776
    sget p3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    const-wide v3, -0x7ffffffffffffffaL    # -3.0E-323

    goto :goto_0

    .line 779
    :cond_6
    sget p3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    const-wide v3, -0x7ffffffffffffff9L    # -3.5E-323

    .line 783
    :goto_0
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 784
    iget v5, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    not-int p3, p3

    and-int/2addr p3, v5

    iput p3, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    goto :goto_1

    .line 786
    :cond_7
    iget v5, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    or-int/2addr p3, v5

    iput p3, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    goto :goto_1

    .line 789
    :cond_8
    instance-of p3, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p3, :cond_9

    .line 790
    move-object p3, v0

    check-cast p3, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_1

    .line 791
    :cond_9
    instance-of p3, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p3, :cond_14

    .line 792
    move-object p3, v0

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v3, v3

    .line 793
    iget v5, p0, Lorg/telegram/ui/UsersSelectActivity;->type:I

    if-ne v5, v2, :cond_a

    const/16 v5, 0xd

    invoke-static {p3, v5}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p3

    if-nez p3, :cond_a

    .line 794
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->NeedAdminRightForSetAutoDeleteTimer:I

    const-string p3, "NeedAdminRightForSetAutoDeleteTimer"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 802
    :cond_a
    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {p3, v3, v4}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result p3

    if-ltz p3, :cond_b

    move p3, v2

    goto :goto_2

    :cond_b
    const/4 p3, 0x0

    :goto_2
    if-eqz p3, :cond_c

    .line 803
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 804
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->spansContainer:Lorg/telegram/ui/UsersSelectActivity$SpansContainer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    goto/16 :goto_4

    .line 807
    :cond_c
    iget-boolean v3, p0, Lorg/telegram/ui/UsersSelectActivity;->topicMode:Z

    if-nez v3, :cond_f

    if-nez v1, :cond_d

    .line 808
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v1

    if-nez v1, :cond_d

    iget v1, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedCount:I

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitDefault:I

    if-ge v1, v3, :cond_e

    :cond_d
    iget v1, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedCount:I

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitPremium:I

    if-lt v1, v3, :cond_f

    .line 809
    :cond_e
    new-instance p2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    const/4 v7, 0x4

    iget v8, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    const/4 v9, 0x0

    move-object v4, p2

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 810
    iget p1, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedCount:I

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setCurrentValue(I)V

    .line 811
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 814
    :cond_f
    instance-of p1, v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_10

    .line 815
    move-object p1, v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .line 816
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v3, p0, Lorg/telegram/ui/UsersSelectActivity;->searching:Z

    xor-int/2addr v3, v2

    invoke-virtual {v1, p1, v3}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    goto :goto_3

    .line 817
    :cond_10
    instance-of p1, v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_11

    .line 818
    move-object p1, v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 819
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v3, p0, Lorg/telegram/ui/UsersSelectActivity;->searching:Z

    xor-int/2addr v3, v2

    invoke-virtual {v1, p1, v3}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 821
    :cond_11
    :goto_3
    new-instance p1, Lorg/telegram/ui/Components/GroupCreateSpan;

    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 822
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->spansContainer:Lorg/telegram/ui/UsersSelectActivity$SpansContainer;

    invoke-virtual {v0, p1, v2}, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->addSpan(Lorg/telegram/ui/Components/GroupCreateSpan;Z)V

    .line 823
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 825
    :goto_4
    invoke-direct {p0}, Lorg/telegram/ui/UsersSelectActivity;->updateHint()V

    .line 826
    iget-boolean p1, p0, Lorg/telegram/ui/UsersSelectActivity;->searching:Z

    if-nez p1, :cond_13

    iget-boolean p1, p0, Lorg/telegram/ui/UsersSelectActivity;->searchWas:Z

    if-eqz p1, :cond_12

    goto :goto_5

    :cond_12
    xor-int/lit8 p1, p3, 0x1

    .line 829
    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->setChecked(ZZ)V

    goto :goto_6

    .line 827
    :cond_13
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 831
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-lez p1, :cond_14

    .line 832
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    nop

    :cond_14
    return-void
.end method

.method private synthetic lambda$createView$2(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 873
    invoke-direct {p0, p1}, Lorg/telegram/ui/UsersSelectActivity;->onDonePressed(Z)Z

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$3()V
    .locals 5

    .line 1626
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_1

    .line 1627
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1629
    iget-object v3, p0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1630
    instance-of v4, v3, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz v4, :cond_0

    .line 1631
    check-cast v3, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->update(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onDonePressed(Z)Z
    .locals 5

    .line 1046
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 1047
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1048
    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v0}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    const-wide v3, -0x7ffffffffffffff9L    # -3.5E-323

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    goto :goto_1

    .line 1052
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v0}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1054
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->delegate:Lorg/telegram/ui/UsersSelectActivity$FilterUsersActivityDelegate;

    if-eqz v0, :cond_2

    .line 1055
    iget v1, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    invoke-interface {v0, p1, v1}, Lorg/telegram/ui/UsersSelectActivity$FilterUsersActivityDelegate;->didSelectChats(Ljava/util/ArrayList;I)V

    .line 1057
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    const/4 p1, 0x1

    return p1
.end method

.method private updateHint()V
    .locals 7

    .line 1073
    iget-boolean v0, p0, Lorg/telegram/ui/UsersSelectActivity;->topicMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 1077
    :cond_0
    iget v0, p0, Lorg/telegram/ui/UsersSelectActivity;->type:I

    const-string v1, "Chats"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 1078
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitPremium:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitDefault:I

    .line 1079
    :goto_0
    iget v4, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedCount:I

    if-nez v4, :cond_2

    .line 1080
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->MembersCountZero:I

    new-array v3, v3, [Ljava/lang/Object;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "MembersCountZero"

    invoke-static {v0, v5, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1082
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v5, "MembersCountSelected"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    if-ne v0, v3, :cond_7

    .line 1085
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v4, ""

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1086
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1088
    iget v0, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedCount:I

    if-nez v0, :cond_5

    .line 1089
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->animatedAvatarContainer:Lorg/telegram/ui/Components/AnimatedAvatarContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->getTitle()Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->SelectChats:I

    const-string v2, "SelectChats"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1090
    iget v0, p0, Lorg/telegram/ui/UsersSelectActivity;->ttlPeriod:I

    if-lez v0, :cond_4

    .line 1091
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->animatedAvatarContainer:Lorg/telegram/ui/Components/AnimatedAvatarContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->getSubtitleTextView()Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->SelectChatsForAutoDelete:I

    const-string v2, "SelectChatsForAutoDelete"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 1093
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->animatedAvatarContainer:Lorg/telegram/ui/Components/AnimatedAvatarContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->getSubtitleTextView()Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->SelectChatsForDisableAutoDelete:I

    const-string v2, "SelectChatsForDisableAutoDelete"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_1

    .line 1096
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->animatedAvatarContainer:Lorg/telegram/ui/Components/AnimatedAvatarContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->getTitle()Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v0

    iget v4, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedCount:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v1, v4, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    iget v0, p0, Lorg/telegram/ui/UsersSelectActivity;->ttlPeriod:I

    if-lez v0, :cond_6

    .line 1098
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->animatedAvatarContainer:Lorg/telegram/ui/Components/AnimatedAvatarContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->getSubtitleTextView()Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedCount:I

    const-string v2, "SelectChatsForAutoDelete2"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1100
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->animatedAvatarContainer:Lorg/telegram/ui/Components/AnimatedAvatarContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedAvatarContainer;->getSubtitleTextView()Lorg/telegram/ui/Components/AnimatedTextView;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedCount:I

    const-string v2, "SelectChatsForDisableAutoDelete2"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 14

    const/4 v0, 0x0

    .line 471
    iput-boolean v0, p0, Lorg/telegram/ui/UsersSelectActivity;->searching:Z

    .line 472
    iput-boolean v0, p0, Lorg/telegram/ui/UsersSelectActivity;->searchWas:Z

    .line 473
    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity;->allSpans:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 474
    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedContacts:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->clear()V

    const/4 v1, 0x0

    .line 475
    iput-object v1, p0, Lorg/telegram/ui/UsersSelectActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 477
    iget v2, p0, Lorg/telegram/ui/UsersSelectActivity;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 478
    new-instance v2, Lorg/telegram/ui/Components/AnimatedAvatarContainer;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/telegram/ui/Components/AnimatedAvatarContainer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/UsersSelectActivity;->animatedAvatarContainer:Lorg/telegram/ui/Components/AnimatedAvatarContainer;

    .line 479
    iget-object v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v9, 0x40

    if-eqz v8, :cond_0

    move v10, v0

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    const/4 v11, 0x0

    if-eqz v8, :cond_1

    move v12, v9

    goto :goto_1

    :cond_1
    move v12, v0

    :goto_1
    const/4 v13, 0x0

    move v8, v10

    move v9, v11

    move v10, v12

    move v11, v13

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 482
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 483
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 485
    iget-boolean v2, p0, Lorg/telegram/ui/UsersSelectActivity;->topicMode:Z

    if-eqz v2, :cond_3

    .line 486
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->SelectChats:I

    const-string v5, "SelectChats"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 488
    :cond_3
    iget v2, p0, Lorg/telegram/ui/UsersSelectActivity;->type:I

    if-nez v2, :cond_5

    .line 489
    iget-boolean v2, p0, Lorg/telegram/ui/UsersSelectActivity;->isInclude:Z

    if-eqz v2, :cond_4

    .line 490
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->FilterAlwaysShow:I

    const-string v5, "FilterAlwaysShow"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 492
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->FilterNeverShow:I

    const-string v5, "FilterNeverShow"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    if-ne v2, v3, :cond_6

    .line 495
    invoke-direct {p0}, Lorg/telegram/ui/UsersSelectActivity;->updateHint()V

    .line 511
    :cond_6
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/UsersSelectActivity$1;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/UsersSelectActivity$1;-><init>(Lorg/telegram/ui/UsersSelectActivity;Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 537
    new-instance v2, Lorg/telegram/ui/UsersSelectActivity$2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/UsersSelectActivity$2;-><init>(Lorg/telegram/ui/UsersSelectActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 581
    check-cast v2, Landroid/view/ViewGroup;

    .line 583
    new-instance v4, Lorg/telegram/ui/UsersSelectActivity$3;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/UsersSelectActivity$3;-><init>(Lorg/telegram/ui/UsersSelectActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->scrollView:Landroid/widget/ScrollView;

    .line 596
    invoke-virtual {v4, v0}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 597
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->scrollView:Landroid/widget/ScrollView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    .line 598
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 600
    new-instance v4, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;-><init>(Lorg/telegram/ui/UsersSelectActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->spansContainer:Lorg/telegram/ui/UsersSelectActivity$SpansContainer;

    .line 601
    iget-object v5, p0, Lorg/telegram/ui/UsersSelectActivity;->scrollView:Landroid/widget/ScrollView;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->spansContainer:Lorg/telegram/ui/UsersSelectActivity$SpansContainer;

    new-instance v5, Lorg/telegram/ui/UsersSelectActivity$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/telegram/ui/UsersSelectActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/UsersSelectActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 608
    new-instance v4, Lorg/telegram/ui/UsersSelectActivity$4;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/UsersSelectActivity$4;-><init>(Lorg/telegram/ui/UsersSelectActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v5, 0x41800000    # 16.0f

    .line 624
    invoke-virtual {v4, v3, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 625
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_hintText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    .line 626
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 627
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_cursor:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 628
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    .line 629
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v5, 0xa00b0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 630
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 631
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 632
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setVerticalScrollBarEnabled(Z)V

    .line 633
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHorizontalScrollBarEnabled(Z)V

    .line 634
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setTextIsSelectable(Z)V

    .line 635
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 636
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const v5, 0x10000006

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 637
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v6, 0x5

    const/4 v7, 0x3

    if-eqz v5, :cond_7

    move v5, v6

    goto :goto_3

    :cond_7
    move v5, v7

    :goto_3
    or-int/lit8 v5, v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 638
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->spansContainer:Lorg/telegram/ui/UsersSelectActivity$SpansContainer;

    iget-object v5, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 639
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v5, Lorg/telegram/messenger/R$string;->SearchForPeopleAndGroups:I

    const-string v8, "SearchForPeopleAndGroups"

    invoke-static {v8, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v5, Lorg/telegram/ui/UsersSelectActivity$5;

    invoke-direct {v5, p0}, Lorg/telegram/ui/UsersSelectActivity$5;-><init>(Lorg/telegram/ui/UsersSelectActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 659
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v5, Lorg/telegram/ui/UsersSelectActivity$6;

    invoke-direct {v5, p0}, Lorg/telegram/ui/UsersSelectActivity$6;-><init>(Lorg/telegram/ui/UsersSelectActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 696
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    new-instance v5, Lorg/telegram/ui/UsersSelectActivity$7;

    invoke-direct {v5, p0}, Lorg/telegram/ui/UsersSelectActivity$7;-><init>(Lorg/telegram/ui/UsersSelectActivity;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 726
    new-instance v4, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v4, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 727
    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/ContactsController;->isLoadingContacts()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 728
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    goto :goto_4

    .line 730
    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 732
    :goto_4
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    .line 733
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v5, Lorg/telegram/messenger/R$string;->NoContacts:I

    const-string v8, "NoContacts"

    invoke-static {v8, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 734
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 736
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p1, v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 738
    new-instance v5, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v5, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 739
    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollEnabled(I)V

    .line 740
    iget-object v5, p0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v8, p0, Lorg/telegram/ui/UsersSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 741
    iget-object v5, p0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v8, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;

    invoke-direct {v8, p0, p1}, Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;-><init>(Lorg/telegram/ui/UsersSelectActivity;Landroid/content/Context;)V

    iput-object v8, p0, Lorg/telegram/ui/UsersSelectActivity;->adapter:Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;

    invoke-virtual {v5, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 742
    iget-object v5, p0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 743
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 744
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v8, 0x2

    if-eqz v5, :cond_9

    move v5, v3

    goto :goto_5

    :cond_9
    move v5, v8

    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVerticalScrollbarPosition(I)V

    .line 745
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/UsersSelectActivity$ItemDecoration;

    invoke-direct {v5, v1}, Lorg/telegram/ui/UsersSelectActivity$ItemDecoration;-><init>(Lorg/telegram/ui/UsersSelectActivity$1;)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 746
    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 747
    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/UsersSelectActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/UsersSelectActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/UsersSelectActivity;Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 836
    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/UsersSelectActivity$8;

    invoke-direct {v4, p0}, Lorg/telegram/ui/UsersSelectActivity$8;-><init>(Lorg/telegram/ui/UsersSelectActivity;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 845
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/UsersSelectActivity;->floatingButton:Landroid/widget/ImageView;

    .line 846
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v1, 0x38

    .line 848
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v9

    invoke-static {v4, v5, v9}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 849
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-ge v5, v9, :cond_a

    .line 850
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v10, Lorg/telegram/messenger/R$drawable;->floating_shadow:I

    invoke-virtual {p1, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 851
    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v11, -0x1000000

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 852
    new-instance v10, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v10, p1, v4, v0, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 853
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v10, p1, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setIconSize(II)V

    move-object v4, v10

    .line 856
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 857
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionIcon:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v10}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 858
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity;->floatingButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->floating_check:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x4

    if-lt v5, v9, :cond_b

    .line 860
    new-instance v1, Landroid/animation/StateListAnimator;

    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    new-array v4, v3, [I

    const v5, 0x10100a7

    aput v5, v4, v0

    .line 861
    iget-object v5, p0, Lorg/telegram/ui/UsersSelectActivity;->floatingButton:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v10, v8, [F

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    aput v11, v10, v0

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    aput v11, v10, v3

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v10, 0xc8

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array v4, v0, [I

    .line 862
    iget-object v5, p0, Lorg/telegram/ui/UsersSelectActivity;->floatingButton:Landroid/widget/ImageView;

    new-array v12, v8, [F

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    aput v13, v12, v0

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    aput v13, v12, v3

    invoke-static {v5, v9, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 863
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 864
    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/UsersSelectActivity$9;

    invoke-direct {v4, p0}, Lorg/telegram/ui/UsersSelectActivity$9;-><init>(Lorg/telegram/ui/UsersSelectActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 872
    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity;->floatingButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 873
    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity;->floatingButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/UsersSelectActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/UsersSelectActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/UsersSelectActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 878
    iget-object v1, p0, Lorg/telegram/ui/UsersSelectActivity;->floatingButton:Landroid/widget/ImageView;

    sget v2, Lorg/telegram/messenger/R$string;->Next:I

    const-string v4, "Next"

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 880
    iget-boolean v1, p0, Lorg/telegram/ui/UsersSelectActivity;->isInclude:Z

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    move v6, v7

    :goto_6
    move v1, v3

    :goto_7
    if-gt v1, v6, :cond_15

    .line 884
    iget-boolean v2, p0, Lorg/telegram/ui/UsersSelectActivity;->isInclude:Z

    if-eqz v2, :cond_11

    if-ne v1, v3, :cond_d

    .line 887
    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    const-string v4, "contacts"

    goto :goto_8

    :cond_d
    if-ne v1, v8, :cond_e

    .line 890
    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    const-string v4, "non_contacts"

    goto :goto_8

    :cond_e
    if-ne v1, v7, :cond_f

    .line 893
    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    const-string v4, "groups"

    goto :goto_8

    :cond_f
    if-ne v1, p1, :cond_10

    .line 896
    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    const-string v4, "channels"

    goto :goto_8

    .line 899
    :cond_10
    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    const-string v4, "bots"

    goto :goto_8

    :cond_11
    if-ne v1, v3, :cond_12

    .line 904
    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_MUTED:I

    const-string v4, "muted"

    goto :goto_8

    :cond_12
    if-ne v1, v8, :cond_13

    .line 907
    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    const-string v4, "read"

    goto :goto_8

    .line 910
    :cond_13
    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    const-string v4, "archived"

    .line 913
    :goto_8
    iget v5, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_14

    .line 914
    new-instance v2, Lorg/telegram/ui/Components/GroupCreateSpan;

    iget-object v5, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v5}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5, v4}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 915
    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->spansContainer:Lorg/telegram/ui/UsersSelectActivity$SpansContainer;

    invoke-virtual {v4, v2, v0}, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->addSpan(Lorg/telegram/ui/Components/GroupCreateSpan;Z)V

    .line 916
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 919
    :cond_15
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity;->initialIds:Ljava/util/ArrayList;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_18

    .line 921
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity;->initialIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v1, v0

    :goto_9
    if-ge v1, p1, :cond_18

    .line 922
    iget-object v2, p0, Lorg/telegram/ui/UsersSelectActivity;->initialIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 923
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_16

    .line 924
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    goto :goto_a

    .line 926
    :cond_16
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    :goto_a
    if-nez v2, :cond_17

    goto :goto_b

    .line 931
    :cond_17
    new-instance v3, Lorg/telegram/ui/Components/GroupCreateSpan;

    iget-object v4, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v4}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/telegram/ui/Components/GroupCreateSpan;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 932
    iget-object v2, p0, Lorg/telegram/ui/UsersSelectActivity;->spansContainer:Lorg/telegram/ui/UsersSelectActivity$SpansContainer;

    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->addSpan(Lorg/telegram/ui/Components/GroupCreateSpan;Z)V

    .line 933
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 937
    :cond_18
    invoke-direct {p0}, Lorg/telegram/ui/UsersSelectActivity;->updateHint()V

    .line 938
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 952
    sget p2, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    if-ne p1, p2, :cond_1

    .line 953
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    if-eqz p1, :cond_0

    .line 954
    invoke-virtual {p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 956
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity;->adapter:Lorg/telegram/ui/UsersSelectActivity$GroupCreateAdapter;

    if-eqz p1, :cond_5

    .line 957
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 959
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    if-ne p1, p2, :cond_4

    .line 960
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 961
    aget-object p2, p3, p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 962
    iget-object p3, p0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    .line 963
    sget v0, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_AVATAR:I

    and-int/2addr v0, p2

    if-nez v0, :cond_2

    sget v0, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_NAME:I

    and-int/2addr v0, p2

    if-nez v0, :cond_2

    sget v0, Lorg/telegram/messenger/MessagesController;->UPDATE_MASK_STATUS:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_5

    :cond_2
    :goto_0
    if-ge p1, p3, :cond_5

    .line 965
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 966
    instance-of v1, v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    if-eqz v1, :cond_3

    .line 967
    check-cast v0, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Cells/GroupCreateUserCell;->update(I)V

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 972
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    if-ne p1, p2, :cond_5

    .line 973
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :cond_5
    :goto_1
    return-void
.end method

.method public getContainerHeight()I
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 987
    iget v0, p0, Lorg/telegram/ui/UsersSelectActivity;->containerHeight:I

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1623
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1625
    new-instance v10, Lorg/telegram/ui/UsersSelectActivity$$ExternalSyntheticLambda2;

    invoke-direct {v10, v0}, Lorg/telegram/ui/UsersSelectActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/UsersSelectActivity;)V

    .line 1637
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v11

    move/from16 v9, v19

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1639
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move/from16 v27, v18

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1640
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1641
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1642
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1643
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1645
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/UsersSelectActivity;->scrollView:Landroid/widget/ScrollView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/16 v18, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1647
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1649
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollActive:I

    const/4 v14, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1650
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v21, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollInactive:I

    const/16 v22, 0x0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1651
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_FASTSCROLL:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_fastScrollText:I

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1653
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v11, 0x1

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    const/4 v12, 0x0

    aput-object v5, v4, v12

    sget-object v23, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v21, 0x0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v22, v4

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1655
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/UsersSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1656
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/UsersSelectActivity;->emptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1658
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1659
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_hintText:I

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1660
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CURSORCOLOR:I

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_cursor:I

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1662
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v5, v4, v12

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v25

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_graySectionText:I

    const/16 v23, 0x0

    const/16 v28, 0x0

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1663
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v4, v3, v12

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1665
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v6, v4, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v25

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_sectionText:I

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1666
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v4, v3, v12

    const-string v4, "checkBox"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_checkbox:I

    const/16 v20, 0x0

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1667
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v24, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v5, v11, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v6, v5, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v26

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxDisabled:I

    const/16 v29, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v5

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1668
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v15, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v5, v3, v12

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1669
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v24, v4, v5

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v5, v4, v12

    const-string v5, "statusTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v26

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1670
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v15, v3, v4

    new-array v3, v11, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v4, v3, v12

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v17

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    move-object v13, v2

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1671
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/UsersSelectActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/GroupCreateUserCell;

    aput-object v5, v4, v12

    sget-object v27, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    sget v29, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1672
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundRed:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v13

    move-object v8, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1673
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1674
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1675
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1676
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1677
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    move-object v2, v13

    move v9, v14

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1678
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    move-object v2, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1680
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/UsersSelectActivity;->spansContainer:Lorg/telegram/ui/UsersSelectActivity$SpansContainer;

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/GroupCreateSpan;

    aput-object v5, v4, v12

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanBackground:I

    const/16 v17, 0x0

    const/16 v21, 0x0

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1681
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/UsersSelectActivity;->spansContainer:Lorg/telegram/ui/UsersSelectActivity$SpansContainer;

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/GroupCreateSpan;

    aput-object v5, v4, v12

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanText:I

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1682
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/UsersSelectActivity;->spansContainer:Lorg/telegram/ui/UsersSelectActivity$SpansContainer;

    new-array v4, v11, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Components/GroupCreateSpan;

    aput-object v5, v4, v12

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_groupcreate_spanDelete:I

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1683
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/UsersSelectActivity;->spansContainer:Lorg/telegram/ui/UsersSelectActivity$SpansContainer;

    new-array v5, v11, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Components/GroupCreateSpan;

    aput-object v2, v5, v12

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    move v9, v14

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 437
    check-cast p1, Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 438
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->isDeleting()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 439
    iput-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 440
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->spansContainer:Lorg/telegram/ui/UsersSelectActivity$SpansContainer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/UsersSelectActivity$SpansContainer;->removeSpan(Lorg/telegram/ui/Components/GroupCreateSpan;)V

    .line 441
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 442
    iget p1, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    not-int v0, v0

    and-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    goto/16 :goto_0

    .line 443
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 444
    iget p1, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    not-int v0, v0

    and-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    goto/16 :goto_0

    .line 445
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide v0

    const-wide v2, -0x7ffffffffffffffeL    # -1.0E-323

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 446
    iget p1, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    not-int v0, v0

    and-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    goto :goto_0

    .line 447
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide v0

    const-wide v2, -0x7ffffffffffffffdL    # -1.5E-323

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 448
    iget p1, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    not-int v0, v0

    and-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    goto :goto_0

    .line 449
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide v0

    const-wide v2, -0x7ffffffffffffffcL    # -2.0E-323

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 450
    iget p1, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    not-int v0, v0

    and-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    goto :goto_0

    .line 451
    :cond_4
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide v0

    const-wide v2, -0x7ffffffffffffffbL    # -2.5E-323

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 452
    iget p1, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_MUTED:I

    not-int v0, v0

    and-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    goto :goto_0

    .line 453
    :cond_5
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide v0

    const-wide v2, -0x7ffffffffffffffaL    # -3.0E-323

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 454
    iget p1, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    not-int v0, v0

    and-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    goto :goto_0

    .line 455
    :cond_6
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->getUid()J

    move-result-wide v0

    const-wide v2, -0x7ffffffffffffff9L    # -3.5E-323

    cmp-long p1, v0, v2

    if-nez p1, :cond_7

    .line 456
    iget p1, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    not-int v0, v0

    and-int/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/UsersSelectActivity;->filterFlags:I

    .line 458
    :cond_7
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/UsersSelectActivity;->updateHint()V

    .line 459
    invoke-direct {p0}, Lorg/telegram/ui/UsersSelectActivity;->checkVisibleRows()V

    goto :goto_1

    .line 461
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    if-eqz v0, :cond_9

    .line 462
    invoke-virtual {v0}, Lorg/telegram/ui/Components/GroupCreateSpan;->cancelDeleteAnimation()V

    .line 464
    :cond_9
    iput-object p1, p0, Lorg/telegram/ui/UsersSelectActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;

    .line 465
    invoke-virtual {p1}, Lorg/telegram/ui/Components/GroupCreateSpan;->startDeleteAnimation()V

    :goto_1
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 416
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 417
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 418
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 419
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 424
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 426
    invoke-direct {p0}, Lorg/telegram/ui/UsersSelectActivity;->hasAllItemCategoryFilter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    sget-object v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->ALL_CHATS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    iput-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->selectedChatsGroupCreationFilter:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    .line 430
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 431
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 432
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatDidCreated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 943
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 944
    iget-object v0, p0, Lorg/telegram/ui/UsersSelectActivity;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_0

    .line 945
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 947
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 121
    new-instance v0, Lcom/iMe/utils/hints/HintUtils;

    invoke-direct {v0}, Lcom/iMe/utils/hints/HintUtils;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-virtual {v0, v1}, Lcom/iMe/utils/hints/HintUtils;->showSortingCreateadFolderOrTopic(Lorg/telegram/ui/ActionBar/INavigationLayout;)V

    .line 123
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    return-void
.end method

.method public setContainerHeight(I)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 979
    iput p1, p0, Lorg/telegram/ui/UsersSelectActivity;->containerHeight:I

    .line 980
    iget-object p1, p0, Lorg/telegram/ui/UsersSelectActivity;->spansContainer:Lorg/telegram/ui/UsersSelectActivity$SpansContainer;

    if-eqz p1, :cond_0

    .line 981
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/UsersSelectActivity$FilterUsersActivityDelegate;)V
    .locals 0

    .line 1107
    iput-object p1, p0, Lorg/telegram/ui/UsersSelectActivity;->delegate:Lorg/telegram/ui/UsersSelectActivity$FilterUsersActivityDelegate;

    return-void
.end method

.method public setTtlPeriod(I)V
    .locals 0

    .line 168
    iput p1, p0, Lorg/telegram/ui/UsersSelectActivity;->ttlPeriod:I

    return-void
.end method
