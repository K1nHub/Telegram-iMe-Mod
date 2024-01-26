.class public Lorg/telegram/ui/Cells/AppIconsSelectorCell;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "AppIconsSelectorCell.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/AppIconsSelectorCell$AdaptiveIconImageView;,
        Lorg/telegram/ui/Cells/AppIconsSelectorCell$IconHolderView;
    }
.end annotation


# instance fields
.field private availableIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/LauncherIconController$LauncherIcon;",
            ">;"
        }
    .end annotation
.end field

.field private linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method public static synthetic $r8$lambda$2vFCdrO0f8Kb0BH0tCtea51fq_8(Lorg/telegram/ui/Cells/AppIconsSelectorCell;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Cells/AppIconsSelectorCell;->lambda$new$0(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;I)V
    .locals 2

    .line 63
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lorg/telegram/ui/Cells/AppIconsSelectorCell;->availableIcons:Ljava/util/List;

    const/16 p3, 0xc

    .line 65
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, p3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 67
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 68
    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const/4 p3, 0x0

    .line 69
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 70
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 72
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p3, p1, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p3, p0, Lorg/telegram/ui/Cells/AppIconsSelectorCell;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 73
    new-instance p3, Lorg/telegram/ui/Cells/AppIconsSelectorCell$1;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Cells/AppIconsSelectorCell$1;-><init>(Lorg/telegram/ui/Cells/AppIconsSelectorCell;)V

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 95
    new-instance p3, Lorg/telegram/ui/Cells/AppIconsSelectorCell$2;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Cells/AppIconsSelectorCell$2;-><init>(Lorg/telegram/ui/Cells/AppIconsSelectorCell;)V

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 114
    new-instance p3, Lorg/telegram/ui/Cells/AppIconsSelectorCell$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/Cells/AppIconsSelectorCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/AppIconsSelectorCell;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;)V

    invoke-virtual {p0, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 152
    invoke-direct {p0}, Lorg/telegram/ui/Cells/AppIconsSelectorCell;->updateIconsVisibility()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/AppIconsSelectorCell;)Ljava/util/List;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/telegram/ui/Cells/AppIconsSelectorCell;->availableIcons:Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$new$0(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Landroid/view/View;I)V
    .locals 3

    .line 115
    check-cast p3, Lorg/telegram/ui/Cells/AppIconsSelectorCell$IconHolderView;

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Cells/AppIconsSelectorCell;->availableIcons:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 117
    iget-boolean v1, v0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->premium:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->hasPremiumOnAccounts()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    new-instance p2, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    const/16 p3, 0xa

    invoke-direct {p2, p1, p3, v2}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 122
    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/LauncherIconController;->isEnabled(Lorg/telegram/ui/LauncherIconController$LauncherIcon;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 126
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/AppIconsSelectorCell$3;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Cells/AppIconsSelectorCell$3;-><init>(Lorg/telegram/ui/Cells/AppIconsSelectorCell;Landroid/content/Context;)V

    .line 137
    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 138
    iget-object p2, p0, Lorg/telegram/ui/Cells/AppIconsSelectorCell;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 140
    invoke-static {v0}, Lorg/telegram/ui/LauncherIconController;->setIcon(Lorg/telegram/ui/LauncherIconController$LauncherIcon;)V

    .line 141
    invoke-static {p3, v2, v2}, Lorg/telegram/ui/Cells/AppIconsSelectorCell$IconHolderView;->access$400(Lorg/telegram/ui/Cells/AppIconsSelectorCell$IconHolderView;ZZ)V

    const/4 p1, 0x0

    move p2, p1

    .line 143
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    if-ge p2, p4, :cond_3

    .line 144
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lorg/telegram/ui/Cells/AppIconsSelectorCell$IconHolderView;

    if-eq p4, p3, :cond_2

    .line 146
    invoke-static {p4, p1, v2}, Lorg/telegram/ui/Cells/AppIconsSelectorCell$IconHolderView;->access$400(Lorg/telegram/ui/Cells/AppIconsSelectorCell$IconHolderView;ZZ)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 150
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p4, p1

    aput-object v0, p4, v2

    invoke-virtual {p2, p3, p4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private updateIconsVisibility()V
    .locals 4

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/Cells/AppIconsSelectorCell;->availableIcons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 158
    iget-object v0, p0, Lorg/telegram/ui/Cells/AppIconsSelectorCell;->availableIcons:Ljava/util/List;

    invoke-static {}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->values()[Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    move v1, v0

    .line 160
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/AppIconsSelectorCell;->availableIcons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 161
    iget-object v2, p0, Lorg/telegram/ui/Cells/AppIconsSelectorCell;->availableIcons:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    iget-boolean v2, v2, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->premium:Z

    if-eqz v2, :cond_0

    .line 162
    iget-object v2, p0, Lorg/telegram/ui/Cells/AppIconsSelectorCell;->availableIcons:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isStandaloneBuild()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    iget-object v1, p0, Lorg/telegram/ui/Cells/AppIconsSelectorCell;->availableIcons:Ljava/util/List;

    sget-object v2, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->DEFAULT:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 170
    iget-object v2, p0, Lorg/telegram/ui/Cells/AppIconsSelectorCell;->availableIcons:Ljava/util/List;

    sget-object v3, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->ROCKET:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 171
    iget-object v3, p0, Lorg/telegram/ui/Cells/AppIconsSelectorCell;->availableIcons:Ljava/util/List;

    invoke-static {v3, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 174
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 175
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 177
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Cells/AppIconsSelectorCell;->availableIcons:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 178
    iget-object v1, p0, Lorg/telegram/ui/Cells/AppIconsSelectorCell;->availableIcons:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 179
    invoke-static {v1}, Lorg/telegram/ui/LauncherIconController;->isEnabled(Lorg/telegram/ui/LauncherIconController$LauncherIcon;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 180
    iget-object v1, p0, Lorg/telegram/ui/Cells/AppIconsSelectorCell;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 214
    sget p2, Lorg/telegram/messenger/NotificationCenter;->premiumStatusChangedGlobal:I

    if-ne p1, p2, :cond_0

    .line 215
    invoke-direct {p0}, Lorg/telegram/ui/Cells/AppIconsSelectorCell;->updateIconsVisibility()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 200
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onAttachedToWindow()V

    .line 202
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->premiumStatusChangedGlobal:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 207
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onDetachedFromWindow()V

    .line 209
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->premiumStatusChangedGlobal:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 195
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/RecyclerListView;->onSizeChanged(IIII)V

    .line 190
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    return-void
.end method
