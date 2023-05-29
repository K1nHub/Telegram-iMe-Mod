.class Lorg/telegram/ui/DialogsActivity$49;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createActionMode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method public static synthetic $r8$lambda$FVUJtlRZPHh_hxUiLWmkGM77o2k(Lorg/telegram/ui/DialogsActivity$49;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$49;->lambda$onItemClick$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$GsRqrRyjZSVaqlbQI28_O4KSqnE(Lorg/telegram/ui/DialogsActivity$49;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$49;->lambda$onItemClick$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fUqYgSXIW-5URAsIGvgz863ttFQ(Lorg/telegram/ui/DialogsActivity$49;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$49;->lambda$onItemClick$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$sejETzK0rbM__wJRc-fM-k96FQU(Lorg/telegram/ui/DialogsActivity$49;Ljava/lang/Boolean;Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$49;->lambda$onItemClick$1(Ljava/lang/Boolean;Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t4-ZRTL25uqAB5O8d5TKTjaY2e0(Lorg/telegram/ui/DialogsActivity$49;Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$49;->lambda$onItemClick$4(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 7977
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(Ljava/lang/Boolean;)V
    .locals 1

    .line 7997
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7998
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getBookmarksController()Lcom/iMe/fork/controller/BookmarksController;

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v0}, Lcom/iMe/fork/controller/BookmarksController;->setNewBookmarks(Ljava/util/Map;)V

    .line 7999
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->loadManagementBookmarks()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onItemClick$1(Ljava/lang/Boolean;Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 10

    .line 8046
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 8049
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v9, 0x0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x14

    goto :goto_1

    :cond_2
    const/16 p1, 0x15

    :goto_1
    move v4, p1

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$2500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p2

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 8050
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v9}, Lorg/telegram/ui/DialogsActivity;->access$35600(Lorg/telegram/ui/DialogsActivity;Z)V

    return-void
.end method

.method private synthetic lambda$onItemClick$2()V
    .locals 2

    .line 8109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$33800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$onItemClick$3()V
    .locals 2

    .line 8109
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$33800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$onItemClick$4(Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    .line 8160
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v15, 0x1

    const/4 v13, 0x0

    invoke-static {v1, v14, v2, v15, v13}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->getDialogsCount(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v14, :cond_0

    .line 8163
    iget-object v1, v14, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v13

    .line 8167
    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 8168
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitDefault:I

    if-le v1, v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitPremium:I

    if-le v1, v2, :cond_3

    .line 8169
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$36900(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x4

    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$37000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;II)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_3
    if-eqz v14, :cond_7

    .line 8173
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v13

    .line 8174
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 8175
    iget-object v2, v14, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8177
    :cond_4
    iget-object v1, v14, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8178
    iget v2, v14, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    iget-object v3, v14, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    iget-object v4, v14, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    iget-object v5, v14, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    iget-object v6, v14, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    move-object/from16 v18, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v16

    invoke-static/range {v1 .. v13}, Lorg/telegram/ui/FilterCreateActivity;->saveFilterToServer(Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/support/LongSparseIntArray;ZZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    move-object/from16 v18, v12

    .line 8181
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v15, :cond_6

    move-object/from16 v1, v18

    const/4 v2, 0x0

    .line 8182
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_3

    :cond_6
    move-object/from16 v1, v18

    const-wide/16 v2, 0x0

    .line 8186
    :goto_3
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/DialogsActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v4

    if-eqz v4, :cond_b

    const/16 v5, 0x14

    .line 8188
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v4

    move v4, v5

    move-object v5, v6

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_7
    move-object v1, v12

    .line 8192
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v15

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitDefault:I

    if-lt v2, v3, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitPremium:I

    if-lt v2, v3, :cond_a

    .line 8193
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x3

    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$37100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;II)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_4

    .line 8195
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v3, Lorg/telegram/ui/FilterCreateActivity;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 8197
    :cond_b
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v15}, Lorg/telegram/ui/DialogsActivity;->access$35600(Lorg/telegram/ui/DialogsActivity;Z)V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 7981
    sget v2, Lcom/iMe/common/IdFabric$Menu;->MESSAGE_FORWARD_CLOUD:I

    if-ne v1, v2, :cond_0

    .line 7982
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$5700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/SearchViewPager;->onActionBarItemClick(I)V

    return-void

    :cond_0
    const/16 v2, 0xc9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    const/16 v2, 0xca

    if-eq v1, v2, :cond_1

    const/16 v2, 0xcb

    if-ne v1, v2, :cond_2

    .line 7986
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$5700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7987
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$5700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/SearchViewPager;->onActionBarItemClick(I)V

    return-void

    .line 7991
    :cond_2
    sget v2, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_MANAGEMENT_DELETE_ALL:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_5

    .line 7992
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 7995
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16800(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_4

    .line 7996
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    sget v1, Lorg/telegram/messenger/R$string;->DeleteAll:I

    const-string v2, "DeleteAll"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget v1, Lorg/telegram/messenger/R$string;->management_bookmarks_delete_all_alert_message:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v6

    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v2, "Delete"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/DialogsActivity$49$$ExternalSyntheticLambda0;

    invoke-direct {v10, v0}, Lorg/telegram/ui/DialogsActivity$49$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$49;)V

    invoke-static/range {v3 .. v10}, Lorg/telegram/ui/Components/AlertsCreator;->showConfirmationDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/ActionBar/AlertDialog;

    goto/16 :goto_8

    .line 8003
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/Components/AlertsCreator;->showDeleteAllCloudDraftsAlert(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto/16 :goto_8

    .line 8005
    :cond_5
    sget v2, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_ARCHIVE_LOCK:I

    if-ne v1, v2, :cond_6

    .line 8006
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->getLockedSection()Lcom/iMe/fork/enums/LockedSection;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/PasscodeActivity;->determineOpenFragment(Lcom/iMe/fork/enums/LockedSection;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_8

    .line 8007
    :cond_6
    sget v2, Lcom/iMe/common/IdFabric$Menu;->SEARCH_QR:I

    const/4 v4, 0x2

    if-eq v1, v2, :cond_38

    sget v5, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_SCAN_LOGIN_QR_CODE:I

    if-ne v1, v5, :cond_7

    goto/16 :goto_7

    .line 8017
    :cond_7
    sget v2, Lcom/iMe/common/IdFabric$Menu;->SEARCH_TEL:I

    if-ne v1, v2, :cond_8

    .line 8018
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$29700(Lorg/telegram/ui/DialogsActivity;)V

    .line 8019
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8020
    sget v2, Lcom/iMe/common/IdFabric$CustomType;->LOGIN_SEARCH_BY_TEL:I

    const-string v3, "custom_screen_type"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8021
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v3, Lorg/telegram/ui/LoginActivity;

    invoke-direct {v3, v1}, Lorg/telegram/ui/LoginActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_8

    .line 8022
    :cond_8
    sget v2, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_TOOLS_SETTINGS:I

    if-ne v1, v2, :cond_9

    .line 8023
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Lcom/iMe/fork/ui/fragment/SettingsToolsActivity;

    invoke-direct {v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsActivity;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_8

    .line 8024
    :cond_9
    sget v2, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_CHAT_SETTINGS:I

    if-ne v1, v2, :cond_a

    .line 8025
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Lorg/telegram/ui/ThemeActivity;

    invoke-direct {v2, v3}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_8

    .line 8026
    :cond_a
    sget v2, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_CLEAR_CACHE:I

    if-ne v1, v2, :cond_b

    .line 8027
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$34900(Lorg/telegram/ui/DialogsActivity;)V

    goto/16 :goto_8

    .line 8028
    :cond_b
    sget v2, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_SCROLL_TO_START:I

    const/4 v5, 0x1

    if-eq v1, v2, :cond_36

    sget v2, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_SCROLL_TO_END:I

    if-ne v1, v2, :cond_c

    goto/16 :goto_6

    .line 8030
    :cond_c
    sget v2, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_MOVE_TO_FOLDER:I

    if-ne v1, v2, :cond_d

    .line 8031
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$35100(Lorg/telegram/ui/DialogsActivity;)V

    goto/16 :goto_8

    .line 8032
    :cond_d
    sget v2, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_ALBUMS_CLOUD:I

    if-ne v1, v2, :cond_e

    .line 8033
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {}, Lorg/telegram/ui/ChatActivity;->newInstanceInCloudMode()Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_8

    .line 8034
    :cond_e
    sget v2, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_ALBUMS_OPEN_BY_DEFAULT:I

    if-ne v1, v2, :cond_f

    .line 8035
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/iMe/fork/controller/AlbumsController;->setOpenAlbumsInsteadCloudEnabled(Z)V

    .line 8036
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/AlbumsController;->saveConfig()V

    .line 8037
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$35200(Lorg/telegram/ui/DialogsActivity;)V

    goto/16 :goto_8

    .line 8038
    :cond_f
    sget v2, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_SORT_ALBUMS:I

    if-ne v1, v2, :cond_10

    .line 8039
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isSortCloudAlbumsByNameEnabled:Z

    xor-int/2addr v1, v5

    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setSortCloudAlbumsByNameEnabled(Z)V

    .line 8040
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$35200(Lorg/telegram/ui/DialogsActivity;)V

    .line 8041
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_3c

    aget-object v4, v1, v3

    .line 8042
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1500(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8044
    :cond_10
    sget v2, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_SELECT_TOPIC:I

    if-ne v1, v2, :cond_11

    .line 8045
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Lcom/iMe/ui/topics/TopicsAlert;

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$2500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/DialogsActivity$49$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$49$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DialogsActivity$49;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/iMe/ui/topics/TopicsAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback2;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_8

    .line 8052
    :cond_11
    sget v2, Lcom/iMe/common/IdFabric$Menu;->SWITCH_ACCOUNT:I

    if-ne v1, v2, :cond_13

    .line 8053
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8054
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    const-string v4, "user_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 8055
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$35300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "expandPhoto"

    .line 8056
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8058
    :cond_12
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v3, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_8

    .line 8059
    :cond_13
    sget v2, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_ARCHIVE:I

    if-ne v1, v2, :cond_15

    .line 8060
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$13700(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$13700(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_14

    return-void

    .line 8063
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$35400(Lorg/telegram/ui/DialogsActivity;)V

    goto/16 :goto_8

    :cond_15
    const/4 v2, -0x1

    if-ne v1, v2, :cond_20

    .line 8067
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$13900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 8068
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8069
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(Z)Z

    .line 8070
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    goto/16 :goto_8

    .line 8071
    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/ui/topics/TopicsBar;->isEditing()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 8072
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/iMe/ui/topics/TopicsBar;->setEditing(Z)V

    .line 8073
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/DialogsActivity;->access$25800(Lorg/telegram/ui/DialogsActivity;Z)V

    goto/16 :goto_8

    .line 8075
    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 8076
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$35500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 8077
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$5700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$5700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$5700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SearchViewPager;->actionModeShowing()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 8078
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$5700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SearchViewPager;->hideActionMode()V

    goto/16 :goto_8

    .line 8080
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/DialogsActivity;->access$35600(Lorg/telegram/ui/DialogsActivity;Z)V

    goto/16 :goto_8

    .line 8083
    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/RightSlidingDialogContainer;->finishPreview()V

    .line 8084
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$5700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SearchViewPager;->updateTabs()V

    return-void

    .line 8087
    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FilterTabsView;->isEditing()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 8088
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/FilterTabsView;->setIsEditing(Z)V

    .line 8089
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/DialogsActivity;->access$25800(Lorg/telegram/ui/DialogsActivity;Z)V

    goto/16 :goto_8

    .line 8090
    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$35700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 8091
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$5700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$5700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$5700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SearchViewPager;->actionModeShowing()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 8092
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$5700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SearchViewPager;->hideActionMode()V

    goto/16 :goto_8

    .line 8094
    :cond_1c
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/DialogsActivity;->access$35600(Lorg/telegram/ui/DialogsActivity;Z)V

    goto/16 :goto_8

    .line 8096
    :cond_1d
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$11000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$8200(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_1

    .line 8098
    :cond_1e
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$35800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 8099
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$35900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->openDrawer(Z)V

    goto/16 :goto_8

    .line 8097
    :cond_1f
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    goto/16 :goto_8

    :cond_20
    if-ne v1, v5, :cond_22

    .line 8102
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_21

    return-void

    .line 8105
    :cond_21
    sput-boolean v5, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    .line 8106
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    new-array v1, v4, [I

    .line 8108
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$33800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 8109
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/telegram/ui/LaunchActivity;

    const/4 v7, 0x0

    const/4 v8, 0x1

    aget v2, v1, v3

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$33800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    div-int/2addr v3, v4

    add-int v9, v2, v3

    aget v1, v1, v5

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$33800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    div-int/2addr v2, v4

    add-int v10, v1, v2

    new-instance v11, Lorg/telegram/ui/DialogsActivity$49$$ExternalSyntheticLambda3;

    invoke-direct {v11, v0}, Lorg/telegram/ui/DialogsActivity$49$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/DialogsActivity$49;)V

    new-instance v12, Lorg/telegram/ui/DialogsActivity$49$$ExternalSyntheticLambda2;

    invoke-direct {v12, v0}, Lorg/telegram/ui/DialogsActivity$49$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/DialogsActivity$49;)V

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity(ZZIILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 8110
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$36000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/NotificationsController;->showNotifications()V

    .line 8111
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$23800(Lorg/telegram/ui/DialogsActivity;)V

    goto/16 :goto_8

    :cond_22
    if-ne v1, v4, :cond_23

    .line 8113
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Lorg/telegram/ui/ProxyListActivity;

    invoke-direct {v2}, Lorg/telegram/ui/ProxyListActivity;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_8

    :cond_23
    const/4 v2, 0x3

    if-ne v1, v2, :cond_24

    .line 8115
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v5, v5, v5}, Lorg/telegram/ui/DialogsActivity;->access$24700(Lorg/telegram/ui/DialogsActivity;ZZZ)V

    .line 8116
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$36100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->openSearchField(Z)V

    goto/16 :goto_8

    :cond_24
    const/16 v2, 0xa

    if-lt v1, v2, :cond_2b

    const/16 v4, 0xf

    if-ge v1, v4, :cond_2b

    .line 8118
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_25

    return-void

    .line 8122
    :cond_25
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/LaunchActivity;

    if-nez v4, :cond_26

    return-void

    .line 8126
    :cond_26
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$31000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    move-result-object v4

    .line 8127
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/LaunchActivity;

    sub-int/2addr v1, v2

    .line 8130
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$36200(Lorg/telegram/ui/DialogsActivity;)I

    move-result v2

    if-ne v2, v1, :cond_27

    return-void

    .line 8133
    :cond_27
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->isMainNoFolderDialogList()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 8134
    invoke-virtual {v6, v1, v5}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    return-void

    .line 8137
    :cond_28
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 8138
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    const-string v3, "selectAlertStringGroup"

    const-string v7, "selectAlertString"

    if-ne v1, v2, :cond_29

    .line 8139
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$36300(Lorg/telegram/ui/DialogsActivity;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 8140
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$36400(Lorg/telegram/ui/DialogsActivity;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_2

    .line 8142
    :cond_29
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$36500(Lorg/telegram/ui/DialogsActivity;)Landroid/os/Bundle;

    move-result-object v2

    sget v8, Lorg/telegram/messenger/R$string;->SendMessagesToText:I

    const-string v9, "SendMessagesToText"

    invoke-static {v9, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8143
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$36600(Lorg/telegram/ui/DialogsActivity;)Landroid/os/Bundle;

    move-result-object v2

    sget v7, Lorg/telegram/messenger/R$string;->SendMessagesToGroupText:I

    const-string v8, "SendMessagesToGroupText"

    invoke-static {v8, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8145
    :goto_2
    new-instance v2, Lorg/telegram/ui/DialogsActivity;

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$36700(Lorg/telegram/ui/DialogsActivity;)Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 8146
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->setCurrentAccount(I)V

    .line 8147
    invoke-virtual {v2, v4}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 8148
    invoke-virtual {v6, v2, v5, v5}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    return-void

    .line 8152
    :cond_2a
    invoke-virtual {v6, v1, v5}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 8154
    new-instance v1, Lorg/telegram/ui/DialogsActivity;

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$36800(Lorg/telegram/ui/DialogsActivity;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 8155
    invoke-virtual {v1, v4}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 8156
    invoke-virtual {v6, v1, v3, v5}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    goto/16 :goto_8

    :cond_2b
    const/16 v2, 0x6d

    if-ne v1, v2, :cond_2c

    .line 8158
    new-instance v1, Lorg/telegram/ui/Components/FiltersListBottomSheet;

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/FiltersListBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;)V

    .line 8159
    new-instance v2, Lorg/telegram/ui/DialogsActivity$49$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lorg/telegram/ui/DialogsActivity$49$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/DialogsActivity$49;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->setDelegate(Lorg/telegram/ui/Components/FiltersListBottomSheet$FiltersListBottomSheetDelegate;)V

    .line 8199
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_8

    :cond_2c
    const/16 v2, 0x6e

    const/16 v4, 0x64

    if-ne v1, v2, :cond_34

    .line 8201
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getDialogFilters()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 8202
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v2, v1, v6, v3, v3}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->getDialogsCount(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v1, :cond_2d

    .line 8206
    iget-object v6, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_3

    :cond_2d
    move v6, v3

    .line 8210
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v6, v7

    if-le v6, v4, :cond_2e

    .line 8211
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->FilterAddToAlertFullTitle:I

    const-string v4, "FilterAddToAlertFullTitle"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->FilterAddToAlertFullText:I

    const-string v5, "FilterAddToAlertFullText"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/AlertsCreator;->createSimpleAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 8214
    :cond_2e
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_31

    .line 8215
    iget-object v4, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v4, v3

    .line 8216
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_2f

    .line 8217
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 8218
    iget-object v7, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8219
    iget-object v7, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/support/LongSparseIntArray;->delete(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 8221
    :cond_2f
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isChatlist()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 8222
    iget-object v4, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 8224
    :cond_30
    iget v7, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    iget-object v8, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    iget-object v9, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    iget-object v10, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    iget-object v11, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v18, 0x0

    move-object v6, v1

    move-object/from16 v17, v4

    invoke-static/range {v6 .. v18}, Lorg/telegram/ui/FilterCreateActivity;->saveFilterToServer(Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/support/LongSparseIntArray;ZZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    .line 8227
    :cond_31
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_32

    .line 8228
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_5

    :cond_32
    const-wide/16 v4, 0x0

    :goto_5
    move-wide v7, v4

    .line 8232
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/DialogsActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v6

    if-eqz v6, :cond_33

    const/16 v9, 0x15

    .line 8234
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v11, v1

    invoke-virtual/range {v6 .. v13}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 8236
    :cond_33
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v3}, Lorg/telegram/ui/DialogsActivity;->access$35600(Lorg/telegram/ui/DialogsActivity;Z)V

    goto/16 :goto_8

    :cond_34
    if-eq v1, v4, :cond_35

    const/16 v2, 0x65

    if-eq v1, v2, :cond_35

    const/16 v2, 0x66

    if-eq v1, v2, :cond_35

    const/16 v2, 0x67

    if-eq v1, v2, :cond_35

    const/16 v2, 0x68

    if-eq v1, v2, :cond_35

    const/16 v2, 0x69

    if-eq v1, v2, :cond_35

    const/16 v2, 0x6a

    if-eq v1, v2, :cond_35

    const/16 v2, 0x6b

    if-eq v1, v2, :cond_35

    const/16 v2, 0x6c

    if-eq v1, v2, :cond_35

    .line 8237
    sget v2, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_HIDDEN_CHATS:I

    if-ne v1, v2, :cond_3c

    .line 8238
    :cond_35
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v2, v4, v1, v5, v3}, Lorg/telegram/ui/DialogsActivity;->access$18500(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;IZZ)V

    goto :goto_8

    .line 8029
    :cond_36
    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    sget v4, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_SCROLL_TO_END:I

    if-ne v1, v4, :cond_37

    move v3, v5

    :cond_37
    invoke-static {v2, v3}, Lorg/telegram/ui/DialogsActivity;->access$35000(Lorg/telegram/ui/DialogsActivity;Z)V

    goto :goto_8

    .line 8008
    :cond_38
    :goto_7
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_39

    return-void

    .line 8011
    :cond_39
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    if-ne v1, v2, :cond_3a

    sget v4, Lcom/iMe/common/IdFabric$CustomType;->QR_CODE_SCANNER_CHAT_LINK:I

    :cond_3a
    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$102(Lorg/telegram/ui/DialogsActivity;I)I

    .line 8012
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3b

    .line 8013
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x22

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 8016
    :cond_3b
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$49;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$34800(Lorg/telegram/ui/DialogsActivity;)V

    :cond_3c
    :goto_8
    return-void
.end method
