.class Lorg/telegram/ui/CacheControlActivity$1;
.super Lorg/telegram/ui/CacheControlActivity;
.source "CacheControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CacheControlActivity;->newInstanceAsBackend(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/CacheControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$frontendFragment:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lorg/telegram/ui/CacheControlActivity$1;->val$frontendFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-direct {p0}, Lorg/telegram/ui/CacheControlActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$1;->val$frontendFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getParentActivity()Landroid/app/Activity;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$1;->val$frontendFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/CacheControlActivity$1;->val$frontendFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
