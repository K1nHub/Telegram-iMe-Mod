.class public Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;
.super Ljava/lang/Object;
.source "INavigationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/INavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavigationParams"
.end annotation


# instance fields
.field public checkPresentFromDelegate:Z

.field public delayDone:Z

.field public fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public isFromDelay:Z

.field public menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

.field public needDelayWithoutAnimation:Z

.field public noAnimation:Z

.field public preview:Z

.field public removeLast:Z


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 1

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->checkPresentFromDelegate:Z

    .line 320
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method


# virtual methods
.method public setCheckPresentFromDelegate(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;
    .locals 0

    .line 334
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->checkPresentFromDelegate:Z

    return-object p0
.end method

.method public setMenuView(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;
    .locals 0

    .line 344
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->menuView:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    return-object p0
.end method

.method public setNoAnimation(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;
    .locals 0

    .line 329
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->noAnimation:Z

    return-object p0
.end method

.method public setPreview(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;
    .locals 0

    .line 339
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->preview:Z

    return-object p0
.end method

.method public setRemoveLast(Z)Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;
    .locals 0

    .line 324
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/INavigationLayout$NavigationParams;->removeLast:Z

    return-object p0
.end method
