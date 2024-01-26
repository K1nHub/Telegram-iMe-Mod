.class Lorg/telegram/ui/DialogsActivity$56;
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
.method public static synthetic $r8$lambda$1yTlhAmj_JlIIAH0UFirDXeyBN0(Lorg/telegram/ui/DialogsActivity$56;Ljava/lang/Boolean;Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$56;->lambda$onItemClick$0(Ljava/lang/Boolean;Lcom/iMe/storage/domain/model/topics/TopicModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Fqu1zvlGwXg8__mCLcq47QqStE(Lorg/telegram/ui/DialogsActivity$56;Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$56;->lambda$onItemClick$3(Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c9vT2nZ2YMR1ulNRPsL_1U07KxI(Lorg/telegram/ui/DialogsActivity$56;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$56;->lambda$onItemClick$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$eCp4x637JV6-EU8fVF0Vbg5Ksxc(Lorg/telegram/ui/DialogsActivity$56;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$56;->lambda$onItemClick$2()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 9139
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(Ljava/lang/Boolean;Lcom/iMe/storage/domain/model/topics/TopicModel;)V
    .locals 9

    .line 9194
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 9197
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    .line 9199
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

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

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p2

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 9201
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$35500(Lorg/telegram/ui/DialogsActivity;Z)V

    return-void
.end method

.method private synthetic lambda$onItemClick$1()V
    .locals 2

    .line 9260
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$33800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$onItemClick$2()V
    .locals 2

    .line 9260
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$33800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$onItemClick$3(Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    .line 9297
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v15, 0x1

    const/4 v13, 0x0

    invoke-static {v1, v14, v2, v15, v13}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->getDialogsCount(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v14, :cond_0

    .line 9300
    iget-object v1, v14, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v13

    .line 9304
    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 9305
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitDefault:I

    if-le v1, v2, :cond_1

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->dialogFiltersChatsLimitPremium:I

    if-le v1, v2, :cond_3

    .line 9306
    :cond_2
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v8, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v2, v3, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x4

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$36400(Lorg/telegram/ui/DialogsActivity;)I

    move-result v6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :cond_3
    if-eqz v14, :cond_7

    .line 9310
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v13

    .line 9311
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 9312
    iget-object v2, v14, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9314
    :cond_4
    iget-object v1, v14, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9315
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

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

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

    .line 9318
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v15, :cond_6

    move-object/from16 v1, v18

    const/4 v2, 0x0

    .line 9319
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_3

    :cond_6
    move-object/from16 v1, v18

    const-wide/16 v2, 0x0

    .line 9323
    :goto_3
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/DialogsActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v4

    if-eqz v4, :cond_b

    const/16 v5, 0x14

    .line 9325
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

    .line 9329
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v15

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitDefault:I

    if-lt v2, v3, :cond_8

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/MessagesController;->dialogFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->dialogFiltersLimitPremium:I

    if-lt v2, v3, :cond_a

    .line 9330
    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v8, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x3

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$36500(Lorg/telegram/ui/DialogsActivity;)I

    move-result v6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_4

    .line 9332
    :cond_a
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v3, Lorg/telegram/ui/FilterCreateActivity;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 9334
    :cond_b
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v15}, Lorg/telegram/ui/DialogsActivity;->access$35500(Lorg/telegram/ui/DialogsActivity;Z)V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 9143
    sget v2, Lcom/iMe/common/IdFabric$Menu;->MESSAGE_SAVE_CLOUD:I

    if-ne v1, v2, :cond_0

    .line 9144
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$11100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

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

    .line 9148
    :cond_1
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$11100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 9149
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$11100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/SearchViewPager;->onActionBarItemClick(I)V

    return-void

    .line 9153
    :cond_2
    sget v2, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_ARCHIVE_LOCK:I

    if-ne v1, v2, :cond_3

    .line 9154
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->getLockedSection()Lcom/iMe/fork/enums/LockedSection;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/PasscodeActivity;->determineOpenFragment(Lcom/iMe/fork/enums/LockedSection;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_7

    .line 9155
    :cond_3
    sget v2, Lcom/iMe/common/IdFabric$Menu;->SEARCH_QR:I

    const/4 v3, 0x2

    if-eq v1, v2, :cond_34

    sget v4, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_SCAN_LOGIN_QR_CODE:I

    if-ne v1, v4, :cond_4

    goto/16 :goto_6

    .line 9165
    :cond_4
    sget v2, Lcom/iMe/common/IdFabric$Menu;->SEARCH_TEL:I

    if-ne v1, v2, :cond_5

    .line 9166
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$28900(Lorg/telegram/ui/DialogsActivity;)V

    .line 9167
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9168
    sget v2, Lcom/iMe/common/IdFabric$CustomType;->LOGIN_SEARCH_BY_TEL:I

    const-string v3, "custom_screen_type"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9169
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v3, Lorg/telegram/ui/LoginActivity;

    invoke-direct {v3, v1}, Lorg/telegram/ui/LoginActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_7

    .line 9170
    :cond_5
    sget v2, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_TOOLS_SETTINGS:I

    if-ne v1, v2, :cond_6

    .line 9171
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Lcom/iMe/fork/ui/fragment/SettingsToolsActivity;

    invoke-direct {v2}, Lcom/iMe/fork/ui/fragment/SettingsToolsActivity;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_7

    .line 9172
    :cond_6
    sget v2, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_CHAT_SETTINGS:I

    const/4 v4, 0x0

    if-ne v1, v2, :cond_7

    .line 9173
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Lorg/telegram/ui/ThemeActivity;

    invoke-direct {v2, v4}, Lorg/telegram/ui/ThemeActivity;-><init>(I)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_7

    .line 9174
    :cond_7
    sget v2, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_CLEAR_CACHE:I

    if-ne v1, v2, :cond_8

    .line 9175
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$34900(Lorg/telegram/ui/DialogsActivity;)V

    goto/16 :goto_7

    .line 9176
    :cond_8
    sget v2, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_SCROLL_TO_START:I

    const/4 v5, 0x1

    if-eq v1, v2, :cond_32

    sget v2, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_SCROLL_TO_END:I

    if-ne v1, v2, :cond_9

    goto/16 :goto_4

    .line 9178
    :cond_9
    sget v2, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_MOVE_TO_FOLDER:I

    if-ne v1, v2, :cond_a

    .line 9179
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$35000(Lorg/telegram/ui/DialogsActivity;)V

    goto/16 :goto_7

    .line 9180
    :cond_a
    sget v2, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_ALBUMS_CLOUD:I

    if-ne v1, v2, :cond_b

    .line 9181
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {}, Lorg/telegram/ui/ChatActivity;->newInstanceInCloudMode()Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_7

    .line 9182
    :cond_b
    sget v2, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_ALBUMS_OPEN_BY_DEFAULT:I

    if-ne v1, v2, :cond_c

    .line 9183
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/iMe/fork/controller/AlbumsController;->setOpenAlbumsInsteadCloudEnabled(Z)V

    .line 9184
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAlbumsController()Lcom/iMe/fork/controller/AlbumsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/fork/controller/AlbumsController;->saveConfig()V

    .line 9185
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$35100(Lorg/telegram/ui/DialogsActivity;)V

    goto/16 :goto_7

    .line 9186
    :cond_c
    sget v2, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_SORT_ALBUMS:I

    if-ne v1, v2, :cond_d

    .line 9187
    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->isSortCloudAlbumsByNameEnabled:Z

    xor-int/2addr v1, v5

    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setSortCloudAlbumsByNameEnabled(Z)V

    .line 9188
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$35100(Lorg/telegram/ui/DialogsActivity;)V

    .line 9189
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v4, v2, :cond_38

    aget-object v3, v1, v4

    .line 9190
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$1100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9192
    :cond_d
    sget v2, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_SELECT_TOPIC:I

    if-ne v1, v2, :cond_e

    .line 9193
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Lcom/iMe/ui/topics/TopicsAlert;

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/DialogsActivity$56$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lorg/telegram/ui/DialogsActivity$56$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$56;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/iMe/ui/topics/TopicsAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback2;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_7

    .line 9203
    :cond_e
    sget v2, Lcom/iMe/common/IdFabric$Menu;->SWITCH_ACCOUNT:I

    if-ne v1, v2, :cond_10

    .line 9204
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9205
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    const-string v4, "user_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 9206
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$35200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "expandPhoto"

    .line 9207
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9209
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v3, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_7

    .line 9210
    :cond_10
    sget v2, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_ARCHIVE:I

    if-ne v1, v2, :cond_12

    .line 9211
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$13500(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$13500(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    .line 9214
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$35300(Lorg/telegram/ui/DialogsActivity;)V

    goto/16 :goto_7

    :cond_12
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1d

    .line 9218
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$13700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 9219
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$2600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9220
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->hidePopup(Z)Z

    .line 9221
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->closeKeyboard()V

    goto/16 :goto_7

    .line 9222
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/ui/topics/TopicsBar;->isEditing()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 9223
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/iMe/ui/topics/TopicsBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/iMe/ui/topics/TopicsBar;->setEditing(Z)V

    .line 9224
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v4}, Lorg/telegram/ui/DialogsActivity;->access$25200(Lorg/telegram/ui/DialogsActivity;Z)V

    goto/16 :goto_7

    .line 9226
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lorg/telegram/ui/RightSlidingDialogContainer;->hasFragment()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 9227
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$35400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 9228
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$11100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$11100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$11100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SearchViewPager;->actionModeShowing()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 9229
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$11100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SearchViewPager;->hideActionMode()V

    goto/16 :goto_7

    .line 9231
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/DialogsActivity;->access$35500(Lorg/telegram/ui/DialogsActivity;Z)V

    goto/16 :goto_7

    .line 9234
    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/RightSlidingDialogContainer;->finishPreview()V

    .line 9235
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$11100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SearchViewPager;->updateTabs()V

    return-void

    .line 9238
    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FilterTabsView;->isEditing()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 9239
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/FilterTabsView;->setIsEditing(Z)V

    .line 9240
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v4}, Lorg/telegram/ui/DialogsActivity;->access$25200(Lorg/telegram/ui/DialogsActivity;Z)V

    goto/16 :goto_7

    .line 9241
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$35600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 9242
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$11100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$11100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$11100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SearchViewPager;->actionModeShowing()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 9243
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$11100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/SearchViewPager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SearchViewPager;->hideActionMode()V

    goto/16 :goto_7

    .line 9245
    :cond_19
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v5}, Lorg/telegram/ui/DialogsActivity;->access$35500(Lorg/telegram/ui/DialogsActivity;Z)V

    goto/16 :goto_7

    .line 9247
    :cond_1a
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$10800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$7700(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_1

    .line 9249
    :cond_1b
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$35700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    if-eqz v1, :cond_38

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$35800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 9250
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$35900(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getDrawerLayoutContainer()Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->openDrawer(Z)V

    goto/16 :goto_7

    .line 9248
    :cond_1c
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    goto/16 :goto_7

    :cond_1d
    if-ne v1, v5, :cond_1f

    .line 9253
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1e

    return-void

    .line 9256
    :cond_1e
    sput-boolean v5, Lorg/telegram/messenger/SharedConfig;->appLocked:Z

    .line 9257
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveConfig()V

    new-array v1, v3, [I

    .line 9259
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$33800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 9260
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/telegram/ui/LaunchActivity;

    const/4 v7, 0x0

    const/4 v8, 0x1

    aget v2, v1, v4

    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$33800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v3

    add-int v9, v2, v4

    aget v1, v1, v5

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$33800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    div-int/2addr v2, v3

    add-int v10, v1, v2

    new-instance v11, Lorg/telegram/ui/DialogsActivity$56$$ExternalSyntheticLambda1;

    invoke-direct {v11, v0}, Lorg/telegram/ui/DialogsActivity$56$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DialogsActivity$56;)V

    new-instance v12, Lorg/telegram/ui/DialogsActivity$56$$ExternalSyntheticLambda2;

    invoke-direct {v12, v0}, Lorg/telegram/ui/DialogsActivity$56$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/DialogsActivity$56;)V

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/LaunchActivity;->showPasscodeActivity(ZZIILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 9261
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$36000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/NotificationsController;->showNotifications()V

    .line 9262
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$23600(Lorg/telegram/ui/DialogsActivity;)V

    goto/16 :goto_7

    :cond_1f
    if-ne v1, v3, :cond_20

    .line 9264
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Lorg/telegram/ui/ProxyListActivity;

    invoke-direct {v2}, Lorg/telegram/ui/ProxyListActivity;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_7

    :cond_20
    const/4 v2, 0x3

    if-ne v1, v2, :cond_21

    .line 9266
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v5, v5, v5}, Lorg/telegram/ui/DialogsActivity;->access$24400(Lorg/telegram/ui/DialogsActivity;ZZZ)V

    .line 9267
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$36100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->openSearchField(Z)V

    goto/16 :goto_7

    :cond_21
    const/4 v2, 0x5

    if-ne v1, v2, :cond_22

    .line 9269
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Lorg/telegram/ui/ArchiveSettingsActivity;

    invoke-direct {v2}, Lorg/telegram/ui/ArchiveSettingsActivity;-><init>()V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_7

    :cond_22
    const/4 v2, 0x6

    if-ne v1, v2, :cond_23

    .line 9271
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$36200(Lorg/telegram/ui/DialogsActivity;)V

    goto/16 :goto_7

    :cond_23
    const/16 v2, 0xa

    if-lt v1, v2, :cond_27

    const/16 v3, 0xf

    if-ge v1, v3, :cond_27

    .line 9273
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_24

    return-void

    .line 9277
    :cond_24
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lorg/telegram/ui/LaunchActivity;

    if-nez v3, :cond_25

    return-void

    .line 9280
    :cond_25
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DialogsActivity;->isMainNoFolderDialogList()Z

    move-result v3

    .line 9282
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$30300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;

    move-result-object v6

    .line 9283
    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/LaunchActivity;

    sub-int/2addr v1, v2

    .line 9284
    invoke-virtual {v7, v1, v5}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    if-eqz v3, :cond_26

    return-void

    .line 9291
    :cond_26
    new-instance v1, Lorg/telegram/ui/DialogsActivity;

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$36300(Lorg/telegram/ui/DialogsActivity;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 9292
    invoke-virtual {v1, v6}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 9293
    invoke-virtual {v7, v1, v4, v5}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    goto/16 :goto_7

    :cond_27
    const/16 v2, 0x6d

    if-ne v1, v2, :cond_28

    .line 9295
    new-instance v1, Lorg/telegram/ui/Components/FiltersListBottomSheet;

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/ui/Components/FiltersListBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;)V

    .line 9296
    new-instance v2, Lorg/telegram/ui/DialogsActivity$56$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lorg/telegram/ui/DialogsActivity$56$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/DialogsActivity$56;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->setDelegate(Lorg/telegram/ui/Components/FiltersListBottomSheet$FiltersListBottomSheetDelegate;)V

    .line 9336
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_7

    :cond_28
    const/16 v2, 0x6e

    const/16 v3, 0x64

    if-ne v1, v2, :cond_30

    .line 9340
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$000(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$26000(Lorg/telegram/ui/DialogsActivity;I)Lorg/telegram/messenger/MessagesController$DialogFilter;

    move-result-object v1

    if-nez v1, :cond_29

    return-void

    .line 9345
    :cond_29
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v2, v1, v6, v4, v4}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->getDialogsCount(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesController$DialogFilter;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 9349
    iget-object v6, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 9353
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v6, v7

    if-le v6, v3, :cond_2a

    .line 9354
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

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

    .line 9357
    :cond_2a
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2d

    .line 9358
    iget-object v3, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v3, v4

    .line 9359
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2b

    .line 9360
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 9361
    iget-object v7, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->alwaysShow:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9362
    iget-object v7, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->pinnedDialogs:Lorg/telegram/messenger/support/LongSparseIntArray;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/support/LongSparseIntArray;->delete(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 9364
    :cond_2b
    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController$DialogFilter;->isChatlist()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 9365
    iget-object v3, v1, Lorg/telegram/messenger/MessagesController$DialogFilter;->neverShow:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 9367
    :cond_2c
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

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v18, 0x0

    move-object v6, v1

    move-object/from16 v17, v3

    invoke-static/range {v6 .. v18}, Lorg/telegram/ui/FilterCreateActivity;->saveFilterToServer(Lorg/telegram/messenger/MessagesController$DialogFilter;ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/support/LongSparseIntArray;ZZZZZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    .line 9370
    :cond_2d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_2e

    .line 9371
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_3

    :cond_2e
    const-wide/16 v5, 0x0

    :goto_3
    move-wide v7, v5

    .line 9375
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/DialogsActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v6

    if-eqz v6, :cond_2f

    const/16 v9, 0x15

    .line 9377
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v11, v1

    invoke-virtual/range {v6 .. v13}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 9379
    :cond_2f
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1, v4}, Lorg/telegram/ui/DialogsActivity;->access$35500(Lorg/telegram/ui/DialogsActivity;Z)V

    goto/16 :goto_7

    :cond_30
    if-eq v1, v3, :cond_31

    const/16 v2, 0x65

    if-eq v1, v2, :cond_31

    const/16 v2, 0x66

    if-eq v1, v2, :cond_31

    const/16 v2, 0x67

    if-eq v1, v2, :cond_31

    const/16 v2, 0x68

    if-eq v1, v2, :cond_31

    const/16 v2, 0x69

    if-eq v1, v2, :cond_31

    const/16 v2, 0x6a

    if-eq v1, v2, :cond_31

    const/16 v2, 0x6b

    if-eq v1, v2, :cond_31

    const/16 v2, 0x6c

    if-eq v1, v2, :cond_31

    .line 9380
    sget v2, Lcom/iMe/common/IdFabric$Menu;->TOGGLE_HIDDEN_CHATS:I

    if-ne v1, v2, :cond_38

    .line 9381
    :cond_31
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3, v1, v5, v4}, Lorg/telegram/ui/DialogsActivity;->access$18200(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;IZZ)V

    goto :goto_7

    .line 9177
    :cond_32
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    sget v3, Lcom/iMe/common/IdFabric$Menu;->DIALOGS_SCROLL_TO_END:I

    if-ne v1, v3, :cond_33

    goto :goto_5

    :cond_33
    move v5, v4

    :goto_5
    invoke-virtual {v2, v4, v4, v5}, Lorg/telegram/ui/DialogsActivity;->scrollToTop(ZZZ)V

    goto :goto_7

    .line 9156
    :cond_34
    :goto_6
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_35

    return-void

    .line 9159
    :cond_35
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    if-ne v1, v2, :cond_36

    sget v3, Lcom/iMe/common/IdFabric$CustomType;->QR_CODE_SCANNER_CHAT_LINK:I

    :cond_36
    invoke-static {v4, v3}, Lorg/telegram/ui/DialogsActivity;->access$102(Lorg/telegram/ui/DialogsActivity;I)I

    .line 9160
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_37

    .line 9161
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x22

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 9164
    :cond_37
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$34800(Lorg/telegram/ui/DialogsActivity;)V

    :cond_38
    :goto_7
    return-void
.end method
