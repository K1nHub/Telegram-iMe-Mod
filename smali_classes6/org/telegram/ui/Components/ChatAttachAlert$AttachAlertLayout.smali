.class public Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
.super Lcom/iMe/ui/base/mvp/view/MvpFrameLayout;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttachAlertLayout"
.end annotation


# instance fields
.field protected parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

.field protected final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 778
    invoke-direct {p0, p2}, Lcom/iMe/ui/base/mvp/view/MvpFrameLayout;-><init>(Landroid/content/Context;)V

    .line 779
    iput-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 780
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-void
.end method


# virtual methods
.method applyCaption(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method canDismissWithTouchOutside()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method canScheduleMessages()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method checkColors()V
    .locals 0

    return-void
.end method

.method public getButtonsHideOffset()I
    .locals 1

    .line 923
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->needsActionBar()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    return v0
.end method

.method public getCurrentItemTop()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getCustomActionBarBackground()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getCustomBackground()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFirstOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getKoin()Lorg/koin/core/Koin;
    .locals 1

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/view/ICustomMvpView$-CC;->$default$getKoin(Lcom/iMe/ui/base/mvp/view/ICustomMvpView;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public getListTopPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getMvpDelegate()Lmoxy/MvpDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmoxy/MvpDelegate<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/view/ICustomMvpView$-CC;->$default$getMvpDelegate(Lcom/iMe/ui/base/mvp/view/ICustomMvpView;)Lmoxy/MvpDelegate;

    move-result-object v0

    return-object v0
.end method

.method getSelectedItemsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getThemedColor(I)I
    .locals 1

    .line 959
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    return p1
.end method

.method hasCustomActionBarBackground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method hasCustomBackground()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needsActionBar()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method onButtonsTranslationYUpdated()V
    .locals 0

    return-void
.end method

.method public onContainerTranslationUpdated(F)V
    .locals 0

    return-void
.end method

.method onContainerViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method onDismiss()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method onDismissWithButtonClick(I)V
    .locals 0

    return-void
.end method

.method onDismissWithTouchOutside()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method onHidden()V
    .locals 0

    return-void
.end method

.method public onHide()V
    .locals 0

    return-void
.end method

.method onHideShowProgress(F)V
    .locals 0

    return-void
.end method

.method public onMenuItemClick(I)V
    .locals 0

    return-void
.end method

.method onOpenAnimationEnd()V
    .locals 0

    return-void
.end method

.method public onPanTransitionEnd()V
    .locals 0

    return-void
.end method

.method public onPanTransitionStart(ZI)V
    .locals 0

    return-void
.end method

.method onPause()V
    .locals 0

    return-void
.end method

.method public onPreMeasure(II)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method onSelectedItemsCountChanged(I)V
    .locals 0

    return-void
.end method

.method onSheetKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 0

    return-void
.end method

.method onShown()V
    .locals 0

    return-void
.end method

.method public scrollToTop()V
    .locals 0

    return-void
.end method

.method sendSelectedItems(ZILjava/lang/String;ZZ)V
    .locals 0

    return-void
.end method

.method shouldHideBottomButtons()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
