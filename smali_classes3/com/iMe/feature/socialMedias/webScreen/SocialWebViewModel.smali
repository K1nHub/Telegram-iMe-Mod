.class public final Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SocialWebViewModel.kt"

# interfaces
.implements Lorg/orbitmvi/orbit/ContainerHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/ViewModel;",
        "Lorg/orbitmvi/orbit/ContainerHost<",
        "Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;",
        "Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects;",
        ">;"
    }
.end annotation


# instance fields
.field private final container:Lorg/orbitmvi/orbit/Container;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/orbitmvi/orbit/Container<",
            "Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;",
            "Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects;",
            ">;"
        }
    .end annotation
.end field

.field private final socialUseCase:Lcom/iMe/feature/socialMedias/SocialUseCase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/feature/socialMedias/SocialUseCase;)V
    .locals 7

    const-string v0, "socialUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;->socialUseCase:Lcom/iMe/feature/socialMedias/SocialUseCase;

    .line 22
    new-instance p1, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;-><init>(Ljava/lang/String;Lcom/iMe/feature/socialMedias/SocialNetwork;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    sget-object v0, Lcom/iMe/utils/base/ErrorHandler;->INSTANCE:Lcom/iMe/utils/base/ErrorHandler;

    invoke-virtual {v0}, Lcom/iMe/utils/base/ErrorHandler;->settings()Lorg/orbitmvi/orbit/Container$Settings;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v1, p0

    move-object v2, p1

    .line 21
    invoke-static/range {v1 .. v6}, Lorg/orbitmvi/orbit/viewmodel/ViewModelExtensionsKt;->container$default(Landroidx/lifecycle/ViewModel;Ljava/lang/Object;Lorg/orbitmvi/orbit/Container$Settings;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/orbitmvi/orbit/Container;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;->container:Lorg/orbitmvi/orbit/Container;

    return-void
.end method

.method public static final synthetic access$getSocialUseCase$p(Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;)Lcom/iMe/feature/socialMedias/SocialUseCase;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;->socialUseCase:Lcom/iMe/feature/socialMedias/SocialUseCase;

    return-object p0
.end method

.method public static final synthetic access$processUrl(Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;->processUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$resetCookiesAndFinish(Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;->resetCookiesAndFinish()V

    return-void
.end method

.method private final processUrl(Ljava/lang/String;)V
    .locals 3

    .line 53
    new-instance v0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$processUrl$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v2, v1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->intent$default(Lorg/orbitmvi/orbit/ContainerHost;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method private final resetCookiesAndFinish()V
    .locals 4

    .line 61
    new-instance v0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$resetCookiesAndFinish$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$resetCookiesAndFinish$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v3, v1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->intent$default(Lorg/orbitmvi/orbit/ContainerHost;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getContainer()Lorg/orbitmvi/orbit/Container;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/orbitmvi/orbit/Container<",
            "Lcom/iMe/feature/socialMedias/webScreen/SocialWebState;",
            "Lcom/iMe/feature/socialMedias/webScreen/SocialSideEffects;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;->container:Lorg/orbitmvi/orbit/Container;

    return-object v0
.end method

.method public final onMenuClicked()V
    .locals 4

    .line 66
    new-instance v0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onMenuClicked$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onMenuClicked$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v3, v1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->intent$default(Lorg/orbitmvi/orbit/ContainerHost;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public final onMenuOpenInClicked()V
    .locals 4

    .line 40
    new-instance v0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onMenuOpenInClicked$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onMenuOpenInClicked$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v3, v1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->intent$default(Lorg/orbitmvi/orbit/ContainerHost;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public final onMenuResetClicked()V
    .locals 4

    .line 35
    new-instance v0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onMenuResetClicked$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onMenuResetClicked$1;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v3, v1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->intent$default(Lorg/orbitmvi/orbit/ContainerHost;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public final onResetClicked()V
    .locals 4

    .line 45
    new-instance v0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onResetClicked$1;-><init>(Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v3, v1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->intent$default(Lorg/orbitmvi/orbit/ContainerHost;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method

.method public final onWebViewCreated(Lcom/iMe/feature/socialMedias/SocialNetwork;)V
    .locals 3

    const-string v0, "socialNetwork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel$onWebViewCreated$1;-><init>(Lcom/iMe/feature/socialMedias/SocialNetwork;Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v2, v1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleSyntaxExtensionsKt;->intent$default(Lorg/orbitmvi/orbit/ContainerHost;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method
