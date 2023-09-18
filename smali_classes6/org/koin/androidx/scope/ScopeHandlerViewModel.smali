.class public final Lorg/koin/androidx/scope/ScopeHandlerViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ScopeHandlerViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScopeHandlerViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeHandlerViewModel.kt\norg/koin/androidx/scope/ScopeHandlerViewModel\n+ 2 Logger.kt\norg/koin/core/logger/Logger\n*L\n1#1,39:1\n28#2:40\n46#2,2:41\n29#2:43\n*S KotlinDebug\n*F\n+ 1 ScopeHandlerViewModel.kt\norg/koin/androidx/scope/ScopeHandlerViewModel\n*L\n33#1:40\n33#1:41,2\n33#1:43\n*E\n"
.end annotation


# instance fields
.field private scope:Lorg/koin/core/scope/Scope;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method public final getScope()Lorg/koin/core/scope/Scope;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/koin/androidx/scope/ScopeHandlerViewModel;->scope:Lorg/koin/core/scope/Scope;

    return-object v0
.end method

.method protected onCleared()V
    .locals 5

    .line 30
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 31
    iget-object v0, p0, Lorg/koin/androidx/scope/ScopeHandlerViewModel;->scope:Lorg/koin/core/scope/Scope;

    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->isNotClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->getLogger()Lorg/koin/core/logger/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing scope "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/koin/androidx/scope/ScopeHandlerViewModel;->scope:Lorg/koin/core/scope/Scope;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 28
    sget-object v3, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .line 46
    invoke-virtual {v1, v3}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3, v2}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 34
    :cond_0
    invoke-virtual {v0}, Lorg/koin/core/scope/Scope;->close()V

    :cond_1
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lorg/koin/androidx/scope/ScopeHandlerViewModel;->scope:Lorg/koin/core/scope/Scope;

    return-void
.end method

.method public final setScope(Lorg/koin/core/scope/Scope;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lorg/koin/androidx/scope/ScopeHandlerViewModel;->scope:Lorg/koin/core/scope/Scope;

    return-void
.end method
