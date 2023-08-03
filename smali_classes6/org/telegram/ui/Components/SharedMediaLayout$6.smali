.class Lorg/telegram/ui/Components/SharedMediaLayout$6;
.super Ljava/lang/Object;
.source "SharedMediaLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;-><init>(Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public static synthetic $r8$lambda$OmeOoHAXKOZk6y2YcCLAzJankxo(Lorg/telegram/ui/Components/SharedMediaLayout$6;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SharedMediaLayout$6;->lambda$onClick$2(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ifnMwSqUfhBqfVmTdtv1gaPMQzk(Lorg/telegram/ui/Components/SharedMediaLayout$6;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/SharedMediaLayout$6;->lambda$onClick$3(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oHZQYnWniQ7DeMIbgWw0_hLxN_I(Lorg/telegram/ui/Components/SharedMediaLayout$6;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$6;->lambda$onClick$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zOjolG-huQr3jfktrf7zJ18zSSI(Lorg/telegram/ui/Components/SharedMediaLayout$6;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$6;->lambda$onClick$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1818
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0(Landroid/view/View;)V
    .locals 0

    .line 1844
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->zoomIn()Ljava/lang/Boolean;

    return-void
.end method

.method private synthetic lambda$onClick$1(Landroid/view/View;)V
    .locals 0

    .line 1848
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->zoomOut()Ljava/lang/Boolean;

    return-void
.end method

.method private synthetic lambda$onClick$2(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;Landroid/view/View;)V
    .locals 2

    .line 1895
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3300(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1898
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1899
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result p2

    neg-float p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3402(Lorg/telegram/ui/Components/SharedMediaLayout;F)F

    move-result p1

    invoke-static {p4, p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    .line 1902
    :cond_1
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p4

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p4, v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 1903
    iget-object p3, p3, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result p2

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result p1

    invoke-virtual {p3, p2, p1}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->updateFilters(ZZ)V

    return-void
.end method

.method private synthetic lambda$onClick$3(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;Landroid/view/View;)V
    .locals 2

    .line 1906
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3300(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1909
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1910
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result p2

    neg-float p2, p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3402(Lorg/telegram/ui/Components/SharedMediaLayout;F)F

    move-result p1

    invoke-static {p4, p1}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    return-void

    .line 1913
    :cond_1
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p4

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p4, v0, v1}, Lorg/telegram/ui/Components/CheckBox2;->setChecked(ZZ)V

    .line 1914
    iget-object p3, p3, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result p1

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getCheckView()Lorg/telegram/ui/Components/CheckBox2;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/CheckBox2;->isChecked()Z

    move-result p2

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->updateFilters(ZZ)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 23

    move-object/from16 v0, p0

    .line 1821
    new-instance v1, Lorg/telegram/ui/Cells/DividerCell;

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Cells/DividerCell;-><init>(Landroid/content/Context;)V

    .line 1822
    new-instance v2, Lorg/telegram/ui/Components/SharedMediaLayout$6$1;

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->val$context:Landroid/content/Context;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v2, v0, v3, v4, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$6$1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$6;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    .line 1837
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->getClosestTab()I

    move-result v3

    const/16 v4, 0x9

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v8, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v6

    .line 1840
    :goto_1
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    new-instance v10, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->val$context:Landroid/content/Context;

    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v10, v11, v6, v7, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2402(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1841
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    new-instance v10, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->val$context:Landroid/content/Context;

    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v10, v11, v7, v7, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2502(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1843
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$string;->MediaZoomIn:I

    const-string v11, "MediaZoomIn"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->msg_zoomin:I

    invoke-virtual {v9, v10, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1844
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/Components/SharedMediaLayout$6$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$6$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$6;)V

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1845
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 1847
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/R$string;->MediaZoomOut:I

    const-string v11, "MediaZoomOut"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    sget v11, Lorg/telegram/messenger/R$drawable;->msg_zoomout:I

    invoke-virtual {v9, v10, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1848
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/Components/SharedMediaLayout$6$$ExternalSyntheticLambda0;

    invoke-direct {v10, v0}, Lorg/telegram/ui/Components/SharedMediaLayout$6$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$6;)V

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1849
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    const/4 v9, 0x2

    const/high16 v10, 0x3f000000    # 0.5f

    if-eqz v8, :cond_2

    .line 1851
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2600(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1852
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1853
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1854
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1855
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_2

    .line 1856
    :cond_2
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2700(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v11

    aget v11, v11, v8

    if-ne v11, v9, :cond_3

    .line 1857
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1858
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_2

    .line 1859
    :cond_3
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2700(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v11

    aget v11, v11, v8

    if-ne v11, v4, :cond_4

    .line 1860
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1861
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_4
    :goto_2
    if-nez v8, :cond_7

    .line 1864
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v4

    aget-object v4, v4, v7

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v4

    aget-object v4, v4, v7

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->access$2900(Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_5
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v4

    aget-object v4, v4, v7

    iget-object v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_7

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v4

    aget-object v4, v4, v7

    iget-object v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v4, v4, v6

    if-eqz v4, :cond_7

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v4

    aget-object v4, v4, v7

    iget-boolean v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->startReached:Z

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    move v4, v7

    goto :goto_4

    :cond_7
    :goto_3
    move v4, v6

    .line 1865
    :goto_4
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3000(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v10

    if-nez v10, :cond_e

    .line 1866
    new-instance v10, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->val$context:Landroid/content/Context;

    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v10, v11, v7, v7, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1867
    sget v11, Lorg/telegram/messenger/R$string;->Calendar:I

    const-string v12, "Calendar"

    invoke-static {v12, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    sget v12, Lorg/telegram/messenger/R$drawable;->msg_calendar2:I

    invoke-virtual {v10, v11, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1868
    invoke-virtual {v2, v10}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 1869
    new-instance v11, Lorg/telegram/ui/Components/SharedMediaLayout$6$2;

    invoke-direct {v11, v0, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$6$2;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$6;I)V

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v4, :cond_e

    .line 1880
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 1881
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->val$context:Landroid/content/Context;

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v12, v1

    move-object/from16 v17, v4

    invoke-direct/range {v12 .. v17}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1882
    new-instance v4, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->val$context:Landroid/content/Context;

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x1

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->val$resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    move-object/from16 v22, v11

    invoke-direct/range {v17 .. v22}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1884
    sget v10, Lorg/telegram/messenger/R$string;->MediaShowPhotos:I

    const-string v11, "MediaShowPhotos"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1885
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 1887
    sget v10, Lorg/telegram/messenger/R$string;->MediaShowVideos:I

    const-string v11, "MediaShowVideos"

    invoke-static {v11, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1888
    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    if-eqz v8, :cond_9

    if-ne v3, v5, :cond_8

    .line 1891
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v3

    goto :goto_5

    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3200(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v3

    .line 1892
    :goto_5
    iget-object v5, v3, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showPhotos()Z

    move-result v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 1893
    iget-object v5, v3, Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;->storiesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/StoriesController$StoriesList;->showVideos()Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 1894
    new-instance v5, Lorg/telegram/ui/Components/SharedMediaLayout$6$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0, v4, v1, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$6$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$6;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;)V

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1905
    new-instance v5, Lorg/telegram/ui/Components/SharedMediaLayout$6$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0, v1, v4, v3}, Lorg/telegram/ui/Components/SharedMediaLayout$6$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$6;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9

    .line 1917
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v7

    iget v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-eqz v3, :cond_b

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v7

    iget v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v3, v6, :cond_a

    goto :goto_6

    :cond_a
    move v3, v7

    goto :goto_7

    :cond_b
    :goto_6
    move v3, v6

    :goto_7
    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 1918
    new-instance v3, Lorg/telegram/ui/Components/SharedMediaLayout$6$3;

    invoke-direct {v3, v0, v4, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$6$3;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$6;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1937
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v7

    iget v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-eqz v3, :cond_d

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$700(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v7

    iget v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->filterType:I

    if-ne v3, v9, :cond_c

    goto :goto_8

    :cond_c
    move v6, v7

    :cond_d
    :goto_8
    invoke-virtual {v4, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 1938
    new-instance v3, Lorg/telegram/ui/Components/SharedMediaLayout$6$4;

    invoke-direct {v3, v0, v1, v4}, Lorg/telegram/ui/Components/SharedMediaLayout$6$4;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$6;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1961
    :cond_e
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$6;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v3, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->photoVideoOptionsItem:Landroid/widget/ImageView;

    const/16 v4, 0x38

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    neg-int v4, v4

    invoke-static {v2, v3, v7, v4}, Lorg/telegram/ui/Components/AlertsCreator;->showPopupMenu(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Landroid/view/View;II)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/ui/Components/SharedMediaLayout;->optionsWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-void
.end method
