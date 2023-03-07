.class public final synthetic Lorg/telegram/ui/ActionBar/INavigationLayout$-CC;
.super Ljava/lang/Object;
.source "INavigationLayout.java"


# direct methods
.method public static $default$addFragmentToStack(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 1
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v0, -0x1

    .line 235
    invoke-interface {p0, p1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->addFragmentToStack(Lorg/telegram/ui/ActionBar/BaseFragment;I)Z

    move-result p1

    return p1
.end method

.method public static $default$animateThemedValues(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;IZZ)V
    .locals 1
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 164
    new-instance v0, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;IZZ)V

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->animateThemedValues(Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static $default$animateThemedValues(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;IZZLjava/lang/Runnable;)V
    .locals 1
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 168
    new-instance v0, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;IZZ)V

    invoke-interface {p0, v0, p5}, Lorg/telegram/ui/ActionBar/INavigationLayout;->animateThemedValues(Lorg/telegram/ui/ActionBar/INavigationLayout$ThemeAnimationSettings;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static $default$closeLastFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 1
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v0, 0x1

    .line 208
    invoke-interface {p0, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->closeLastFragment(Z)V

    return-void
.end method

.method public static $default$closeLastFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Z)V
    .locals 1
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v0, 0x0

    .line 212
    invoke-interface {p0, p1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->closeLastFragment(ZZ)V

    return-void
.end method

.method public static $default$dismissDialogs(Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 2
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 271
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    .line 272
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 274
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialog()V

    :cond_0
    return-void
.end method

.method public static $default$drawHeaderShadow(Lorg/telegram/ui/ActionBar/INavigationLayout;Landroid/graphics/Canvas;I)V
    .locals 1
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/16 v0, 0xff

    .line 152
    invoke-interface {p0, p1, v0, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->drawHeaderShadow(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public static $default$getBackgroundFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 2
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 156
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    :goto_0
    return-object v0
.end method

.method public static $default$getLastFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 2
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 160
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BaseFragment;

    :goto_0
    return-object v0
.end method

.method public static $default$getParentActivity(Lorg/telegram/ui/ActionBar/INavigationLayout;)Landroid/app/Activity;
    .locals 2
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 193
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 194
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 195
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NavigationLayout added in non-activity context!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static $default$getView(Lorg/telegram/ui/ActionBar/INavigationLayout;)Landroid/view/ViewGroup;
    .locals 2
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 201
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 202
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You should override getView() if you\'re not inheriting from it."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static $default$hasIntegratedBlurInPreview(Lorg/telegram/ui/ActionBar/INavigationLayout;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static $default$isActionBarInCrossfade(Lorg/telegram/ui/ActionBar/INavigationLayout;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static $default$presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 1
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 239
    new-instance v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-interface {p0, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    move-result p1

    return p1
.end method

.method public static $default$presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z
    .locals 1
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 243
    new-instance v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setRemoveLast(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    move-result p1

    return p1
.end method

.method public static $default$presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZZ)Z
    .locals 1
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/INavigationLayout;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 259
    new-instance v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setRemoveLast(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setNoAnimation(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setCheckPresentFromDelegate(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setPreview(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    move-result p1

    return p1
.end method

.method public static $default$presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZZLorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z
    .locals 1
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/INavigationLayout;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 267
    new-instance v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setRemoveLast(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setNoAnimation(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setCheckPresentFromDelegate(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-virtual {p1, p5}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setPreview(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-virtual {p1, p6}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setMenuView(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    move-result p1

    return p1
.end method

.method public static $default$presentFragmentAsPreview(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)Z
    .locals 1
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 247
    new-instance v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setPreview(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    move-result p1

    return p1
.end method

.method public static $default$presentFragmentAsPreviewWithMenu(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z
    .locals 1
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 251
    new-instance v0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setPreview(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->setMenuView(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragment(Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;)Z

    move-result p1

    return p1
.end method

.method public static $default$rebuildAllFragmentViews(Lorg/telegram/ui/ActionBar/INavigationLayout;ZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static $default$rebuildFragments(Lorg/telegram/ui/ActionBar/INavigationLayout;I)V
    .locals 1
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/INavigationLayout;

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->showLastFragment()V

    return-void

    :cond_0
    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 120
    :goto_0
    invoke-interface {p0, v0, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->rebuildAllFragmentViews(ZZ)V

    return-void
.end method

.method public static $default$rebuildLogout(Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static $default$removeAllFragments(Lorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 2
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 188
    invoke-interface {p0, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static $default$removeFragmentFromStack(Lorg/telegram/ui/ActionBar/INavigationLayout;I)V
    .locals 1
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-ltz p1, :cond_1

    .line 228
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-interface {p0, p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static $default$removeFragmentFromStack(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1
    .param p0, "_this"    # Lorg/telegram/ui/ActionBar/INavigationLayout;

    const/4 v0, 0x0

    .line 104
    invoke-interface {p0, p1, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    return-void
.end method

.method public static newLayout(Landroid/content/Context;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 1

    .line 100
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->useLNavigation:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/ui/LNavigation/LNavigation;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LNavigation/LNavigation;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    :goto_0
    return-object v0
.end method
