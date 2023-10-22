.class Lorg/telegram/ui/Stories/recorder/PaintView$22;
.super Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;
.source "PaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/PaintView;->openStickersView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

.field final synthetic val$wasSelectedIndex:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 0

    .line 1738
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$22;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    iput p5, p0, Lorg/telegram/ui/Stories/recorder/PaintView$22;->val$wasSelectedIndex:I

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public canClickWidget(Ljava/lang/Integer;)Z
    .locals 6

    .line 1752
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    move v2, p1

    move v3, v2

    .line 1754
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView$22;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1755
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PaintView$22;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget-object v4, v4, Lorg/telegram/ui/Stories/recorder/PaintView;->entitiesView:Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lorg/telegram/ui/Components/Paint/Views/ReactionWidgetEntityView;

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lt v3, v1, :cond_2

    .line 1759
    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1760
    sget v0, Lorg/telegram/messenger/R$string;->StoryPremiumWidgets:I

    const-string v1, "StoryPremiumWidgets"

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;->showPremiumBulletin(Ljava/lang/String;I)V

    return p1

    :cond_2
    const/4 v2, 0x5

    if-lt v3, v2, :cond_3

    .line 1764
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    .line 1765
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    sget v3, Lorg/telegram/messenger/R$string;->LimitReached:I

    const-string v4, "LimitReached"

    .line 1766
    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->StoryReactionsWidgetLimit:I

    const-string v5, "StoryReactionsWidgetLimit"

    .line 1767
    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1765
    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 1768
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return p1

    :cond_3
    return v1
.end method

.method public canShowWidget(Ljava/lang/Integer;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected checkAudioPermission(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1777
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$22;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->checkAudioPermission(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public onDismissAnimationStart()V
    .locals 2

    .line 1741
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onDismissAnimationStart()V

    .line 1742
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$22;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$22;->val$wasSelectedIndex:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->access$3800(Lorg/telegram/ui/Stories/recorder/PaintView;I)V

    return-void
.end method
