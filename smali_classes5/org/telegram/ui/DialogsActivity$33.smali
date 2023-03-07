.class Lorg/telegram/ui/DialogsActivity$33;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Lcom/smedialink/ui/topics/TopicsBar$TopicsBarDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method public static synthetic $r8$lambda$Nv0xnxg03g_DZFfKwZr7FBbVWPg(Lorg/telegram/ui/DialogsActivity$33;ILcom/smedialink/ui/topics/TopicView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/DialogsActivity$33;->lambda$didSelectTab$2(ILcom/smedialink/ui/topics/TopicView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UQb0f9QE5zmpGMpyLqS2tiKLLwo(Lorg/telegram/ui/DialogsActivity$33;Lcom/smedialink/storage/domain/model/topics/TopicModel;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/DialogsActivity$33;->lambda$showDeleteAlert$0(Lcom/smedialink/storage/domain/model/topics/TopicModel;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vUZNSIpnRXz93J3U7gfiVrKbLdk(Lorg/telegram/ui/DialogsActivity$33;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$33;->lambda$didSelectTab$1(Landroid/view/KeyEvent;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 6491
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$didSelectTab$1(Landroid/view/KeyEvent;)V
    .locals 2

    .line 6553
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6554
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$didSelectTab$2(ILcom/smedialink/ui/topics/TopicView;Landroid/view/View;)V
    .locals 2

    const/4 p3, 0x1

    if-nez p1, :cond_0

    .line 6613
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$16700(Lorg/telegram/ui/DialogsActivity;)V

    .line 6614
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/smedialink/ui/topics/TopicsBar;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/smedialink/ui/topics/TopicsBar;->setEditing(Z)V

    .line 6615
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, p3}, Lorg/telegram/ui/DialogsActivity;->access$25300(Lorg/telegram/ui/DialogsActivity;Z)V

    goto :goto_0

    :cond_0
    if-ne p1, p3, :cond_1

    .line 6617
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance p2, Lorg/telegram/ui/FiltersSetupActivity;

    sget-object p3, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    invoke-direct {p2, p3}, Lorg/telegram/ui/FiltersSetupActivity;-><init>(Lorg/fork/enums/FilterActivityType;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 6619
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance p3, Lorg/telegram/ui/FilterCreateActivity;

    invoke-virtual {p2}, Lcom/smedialink/ui/topics/TopicView;->getTopic()Lcom/smedialink/storage/domain/model/topics/TopicModel;

    move-result-object p2

    const/4 v0, 0x0

    sget-object v1, Lorg/fork/enums/FilterActivityType;->TOPIC:Lorg/fork/enums/FilterActivityType;

    invoke-direct {p3, p2, v0, v1}, Lorg/telegram/ui/FilterCreateActivity;-><init>(Lcom/smedialink/storage/domain/model/topics/TopicModel;Ljava/util/Set;Lorg/fork/enums/FilterActivityType;)V

    invoke-virtual {p1, p3}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 6621
    invoke-virtual {p2}, Lcom/smedialink/ui/topics/TopicView;->getTopic()Lcom/smedialink/storage/domain/model/topics/TopicModel;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6622
    invoke-virtual {p2}, Lcom/smedialink/ui/topics/TopicView;->getTopic()Lcom/smedialink/storage/domain/model/topics/TopicModel;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$33;->showDeleteAlert(Lcom/smedialink/storage/domain/model/topics/TopicModel;)V

    goto :goto_0

    .line 6625
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled()Z

    move-result p2

    xor-int/2addr p2, p3

    invoke-virtual {p1, p2}, Lorg/fork/controller/ForkTopicsController;->setNoTopicFirstEnabled(Z)V

    .line 6626
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/fork/controller/ForkTopicsController;->saveConfig()V

    .line 6627
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$31500(Lorg/telegram/ui/DialogsActivity;)V

    .line 6629
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 6630
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$showDeleteAlert$0(Lcom/smedialink/storage/domain/model/topics/TopicModel;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 6498
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/fork/controller/ForkTopicsController;->removeTopicFilterDialogs(Lcom/smedialink/storage/domain/model/topics/TopicModel;)V

    return-void
.end method

.method private showDeleteAlert(Lcom/smedialink/storage/domain/model/topics/TopicModel;)V
    .locals 3

    .line 6494
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6495
    sget v1, Lorg/telegram/messenger/R$string;->topics_remove:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6496
    sget v1, Lorg/telegram/messenger/R$string;->topics_remove_alert:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6497
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v2, "Cancel"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6498
    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v2, "Delete"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/DialogsActivity$33$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/DialogsActivity$33$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$33;Lcom/smedialink/storage/domain/model/topics/TopicModel;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 6499
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 6500
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v0, -0x1

    .line 6501
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const-string v0, "dialogTextRed2"

    .line 6503
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public canPerformActions()Z
    .locals 2

    .line 6509
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterTabsView;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 6512
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$13200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$30600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public didSelectTab(Lcom/smedialink/ui/topics/TopicView;)Z
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 6517
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$30700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_14

    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v0

    iget-object v1, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/fork/controller/ForkTopicsController;->hasSelectedTopic(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    .line 6520
    :cond_0
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6521
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 6522
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$26202(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 6523
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$26302(Lorg/telegram/ui/DialogsActivity;[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return v9

    .line 6527
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 6528
    new-instance v10, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v1, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v10, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    .line 6529
    new-instance v1, Lorg/telegram/ui/DialogsActivity$33$1;

    invoke-direct {v1, v7, v0}, Lorg/telegram/ui/DialogsActivity$33$1;-><init>(Lorg/telegram/ui/DialogsActivity$33;Landroid/graphics/Rect;)V

    invoke-virtual {v10, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6552
    new-instance v0, Lorg/telegram/ui/DialogsActivity$33$$ExternalSyntheticLambda2;

    invoke-direct {v0, v7}, Lorg/telegram/ui/DialogsActivity$33$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/DialogsActivity$33;)V

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setDispatchKeyEventListener(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$OnDispatchKeyEventListener;)V

    .line 6557
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 6558
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6559
    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 6560
    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "actionBarDefaultSubmenuBackground"

    .line 6561
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 6563
    new-instance v12, Landroid/widget/LinearLayout;

    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 6564
    new-instance v13, Lorg/telegram/ui/DialogsActivity$33$2;

    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lorg/telegram/messenger/R$style;->scrollbarShapeStyle:I

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/DialogsActivity$33$2;-><init>(Lorg/telegram/ui/DialogsActivity$33;Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/widget/LinearLayout;)V

    .line 6571
    invoke-virtual {v13, v9}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    const/4 v0, -0x2

    .line 6572
    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v10, v13, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0xc8

    .line 6573
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    const/4 v1, 0x1

    .line 6574
    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6576
    invoke-virtual/range {p1 .. p1}, Lcom/smedialink/ui/topics/TopicView;->getTopic()Lcom/smedialink/storage/domain/model/topics/TopicModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/topics/TopicModel;->getTopicId()J

    move-result-wide v2

    const-wide/16 v4, -0x2

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    .line 6578
    iget-object v4, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-array v5, v3, [Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-static {v4, v5}, Lorg/telegram/ui/DialogsActivity;->access$26302(Lorg/telegram/ui/DialogsActivity;[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ge v4, v3, :cond_f

    .line 6580
    new-instance v14, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v15, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v15}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v15

    if-nez v4, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    const/4 v9, 0x4

    if-ne v4, v9, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    invoke-direct {v14, v15, v3, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    if-nez v4, :cond_6

    .line 6582
    iget-object v3, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$300(Lorg/telegram/ui/DialogsActivity;)Lcom/smedialink/ui/topics/TopicsBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/ui/topics/TopicsBar;->allowReorder()Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v2, :cond_5

    goto/16 :goto_5

    .line 6585
    :cond_5
    sget v3, Lorg/telegram/messenger/R$string;->FilterReorder:I

    const-string v5, "FilterReorder"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$drawable;->tabs_reorder:I

    invoke-virtual {v14, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_4

    :cond_6
    if-ne v4, v1, :cond_7

    .line 6587
    sget v3, Lorg/telegram/messenger/R$string;->Settings:I

    const-string v5, "Settings"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_settings:I

    invoke-virtual {v14, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_4

    :cond_7
    if-ne v4, v6, :cond_9

    if-eqz v2, :cond_8

    goto :goto_5

    .line 6592
    :cond_8
    sget v3, Lorg/telegram/messenger/R$string;->topic_edit:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    invoke-virtual {v14, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_4

    :cond_9
    if-ne v4, v5, :cond_b

    if-eqz v2, :cond_a

    goto :goto_5

    .line 6597
    :cond_a
    sget v3, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v5, "Delete"

    invoke-static {v5, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v14, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_4

    :cond_b
    if-nez v2, :cond_c

    goto :goto_5

    .line 6602
    :cond_c
    iget-object v3, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fork/controller/ForkTopicsController;->isNoTopicFirstEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 6603
    sget v3, Lorg/telegram/messenger/R$string;->topics_move_no_topic_to_end:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$drawable;->tabs_reorder:I

    invoke-virtual {v14, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    goto :goto_4

    .line 6605
    :cond_d
    sget v3, Lorg/telegram/messenger/R$string;->topics_move_no_topic_to_beginning:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$drawable;->fork_move_to_beginning:I

    invoke-virtual {v14, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 6608
    :goto_4
    iget-object v3, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$26300(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v3

    aput-object v14, v3, v4

    .line 6609
    invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6611
    new-instance v3, Lorg/telegram/ui/DialogsActivity$33$$ExternalSyntheticLambda1;

    invoke-direct {v3, v7, v4, v8}, Lorg/telegram/ui/DialogsActivity$33$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/DialogsActivity$33;ILcom/smedialink/ui/topics/TopicView;)V

    invoke-virtual {v14, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_e
    :goto_5
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x5

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_f
    const/16 v2, 0x33

    .line 6634
    invoke-static {v0, v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v13, v12, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6635
    iget-object v3, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v4, Lorg/telegram/ui/DialogsActivity$33$3;

    invoke-direct {v4, v7, v10, v0, v0}, Lorg/telegram/ui/DialogsActivity$33$3;-><init>(Lorg/telegram/ui/DialogsActivity$33;Landroid/view/View;II)V

    invoke-static {v3, v4}, Lorg/telegram/ui/DialogsActivity;->access$26202(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 6670
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    const/16 v3, 0xdc

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 6671
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 6672
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 6673
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 6674
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/16 v0, 0x3e8

    .line 6675
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v10, v3, v0}, Landroid/widget/FrameLayout;->measure(II)V

    .line 6676
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 6677
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 6678
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 6679
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$9300(Lorg/telegram/ui/DialogsActivity;)[I

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 6680
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$9300(Lorg/telegram/ui/DialogsActivity;)[I

    move-result-object v0

    aget v0, v0, v3

    iget v3, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v0, v3

    const/4 v3, 0x6

    .line 6681
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    if-ge v0, v4, :cond_10

    .line 6682
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_6

    .line 6683
    :cond_10
    iget-object v4, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$31000(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v4, v9

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v4, v9

    if-le v0, v4, :cond_11

    .line 6684
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$31100(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v0, v3

    .line 6687
    :cond_11
    :goto_6
    iget-object v3, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/fork/controller/ForkTopicsController;->isTopicsBarAtBottomEnabled()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 6688
    iget-object v3, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$9300(Lorg/telegram/ui/DialogsActivity;)[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_7

    .line 6690
    :cond_12
    iget-object v3, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$9300(Lorg/telegram/ui/DialogsActivity;)[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    .line 6692
    :goto_7
    iget-object v4, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v4

    iget-object v5, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$31200(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 6693
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v8}, Lorg/telegram/ui/DialogsActivity;->access$9102(Lorg/telegram/ui/DialogsActivity;Landroid/view/View;)Landroid/view/View;

    .line 6694
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$9602(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 6695
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$31300(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 6696
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26500(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 6697
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26500(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6699
    :cond_13
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v2}, Lorg/telegram/ui/DialogsActivity;->access$26502(Lorg/telegram/ui/DialogsActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 6700
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6701
    iget-object v2, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$9200(Lorg/telegram/ui/DialogsActivity;)Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Lorg/telegram/ui/Components/AnimationProperties;->PAINT_ALPHA:Landroid/util/Property;

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6702
    iget-object v2, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$26500(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 6703
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26500(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 6704
    iget-object v0, v7, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26500(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return v1

    :cond_14
    :goto_8
    const/4 v0, 0x0

    return v0

    nop

    :array_0
    .array-data 4
        0x0
        0x32
    .end array-data
.end method

.method public isTabMenuVisible()Z
    .locals 1

    .line 6732
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onTopicSelected(J)V
    .locals 5

    .line 6711
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6712
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$8900(Lorg/telegram/ui/DialogsActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6713
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$8900(Lorg/telegram/ui/DialogsActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6715
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/fork/controller/ForkTopicsController;->getSelectedTopicId(Z)J

    move-result-wide v2

    const/4 v0, 0x1

    cmp-long v4, v2, p1

    if-nez v4, :cond_2

    .line 6716
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6717
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$8900(Lorg/telegram/ui/DialogsActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6718
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$8900(Lorg/telegram/ui/DialogsActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6720
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/FilterTabsView;->getDefaultTabId()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FilterTabsView;->notifyTabCounterChanged(I)V

    return-void

    :cond_2
    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_3

    .line 6723
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$31400(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 6724
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/FilterTabsView;->getCurrentTabId()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/DialogsActivity;->access$31402(Lorg/telegram/ui/DialogsActivity;I)I

    .line 6726
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getTopicsController()Lorg/fork/controller/ForkTopicsController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result v2

    invoke-virtual {v1, v2, p1, p2}, Lorg/fork/controller/ForkTopicsController;->selectTopic(ZJ)V

    .line 6727
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$33;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0, v0}, Lorg/telegram/ui/DialogsActivity;->access$27500(Lorg/telegram/ui/DialogsActivity;ZZ)V

    return-void
.end method
