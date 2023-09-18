.class public final Lcom/iMe/feature/socialMedias/auth/AuthViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "AuthViewModel.kt"

# interfaces
.implements Lorg/orbitmvi/orbit/ContainerHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/feature/socialMedias/auth/AuthViewModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/ViewModel;",
        "Lorg/orbitmvi/orbit/ContainerHost<",
        "Lcom/iMe/feature/socialMedias/auth/AuthState;",
        "Lcom/iMe/feature/socialMedias/auth/AuthSideEffects;",
        ">;"
    }
.end annotation


# instance fields
.field private final authUseCase:Lcom/iMe/feature/socialMedias/auth/AuthUseCase;

.field private final container:Lorg/orbitmvi/orbit/Container;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/orbitmvi/orbit/Container<",
            "Lcom/iMe/feature/socialMedias/auth/AuthState;",
            "Lcom/iMe/feature/socialMedias/auth/AuthSideEffects;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/feature/socialMedias/auth/AuthUseCase;)V
    .locals 7

    const-string v0, "authUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel;->authUseCase:Lcom/iMe/feature/socialMedias/auth/AuthUseCase;

    .line 19
    new-instance p1, Lcom/iMe/feature/socialMedias/auth/AuthState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/iMe/feature/socialMedias/auth/AuthState;-><init>(Ljava/lang/String;Lcom/iMe/feature/socialMedias/SocialType;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lorg/orbitmvi/orbit/viewmodel/ViewModelExtensionsKt;->container$default(Landroidx/lifecycle/ViewModel;Ljava/lang/Object;Lorg/orbitmvi/orbit/Container$Settings;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/orbitmvi/orbit/Container;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel;->container:Lorg/orbitmvi/orbit/Container;

    return-void
.end method

.method public static final synthetic access$getAuthUseCase$p(Lcom/iMe/feature/socialMedias/auth/AuthViewModel;)Lcom/iMe/feature/socialMedias/auth/AuthUseCase;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel;->authUseCase:Lcom/iMe/feature/socialMedias/auth/AuthUseCase;

    return-object p0
.end method


# virtual methods
.method public getContainer()Lorg/orbitmvi/orbit/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/orbitmvi/orbit/Container<",
            "Lcom/iMe/feature/socialMedias/auth/AuthState;",
            "Lcom/iMe/feature/socialMedias/auth/AuthSideEffects;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel;->container:Lorg/orbitmvi/orbit/Container;

    return-object v0
.end method

.method public final onErrorReceived()V
    .locals 4

    .line 46
    new-instance v0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onErrorReceived$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onErrorReceived$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v3, v1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->intent$default(Lorg/orbitmvi/orbit/ContainerHost;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public final onMenuResetClicked()V
    .locals 4

    .line 53
    new-instance v0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onMenuResetClicked$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onMenuResetClicked$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v3, v1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->intent$default(Lorg/orbitmvi/orbit/ContainerHost;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public final onOverrideUrl(Ljava/lang/String;)V
    .locals 3

    const-string v0, "overrideUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onOverrideUrl$1;-><init>(Lcom/iMe/feature/socialMedias/auth/AuthViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v2, v1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->intent$default(Lorg/orbitmvi/orbit/ContainerHost;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public final onPageFinished()V
    .locals 4

    .line 44
    new-instance v0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onPageFinished$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onPageFinished$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v3, v1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->intent$default(Lorg/orbitmvi/orbit/ContainerHost;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public final onPageStared()V
    .locals 4

    .line 42
    new-instance v0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onPageStared$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onPageStared$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v3, v1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->intent$default(Lorg/orbitmvi/orbit/ContainerHost;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public final onRefreshPageMenuClicked()V
    .locals 4

    .line 48
    new-instance v0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onRefreshPageMenuClicked$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onRefreshPageMenuClicked$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v3, v1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->intent$default(Lorg/orbitmvi/orbit/ContainerHost;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public final onWebViewCreated(Lcom/iMe/feature/socialMedias/SocialAuthDomain;)V
    .locals 3

    const-string v0, "socialAuthDomain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/iMe/feature/socialMedias/auth/AuthViewModel$onWebViewCreated$1;-><init>(Lcom/iMe/feature/socialMedias/SocialAuthDomain;Lcom/iMe/feature/socialMedias/auth/AuthViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v2, v1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->intent$default(Lorg/orbitmvi/orbit/ContainerHost;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method
