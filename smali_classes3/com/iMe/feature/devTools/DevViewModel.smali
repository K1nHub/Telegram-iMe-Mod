.class public final Lcom/iMe/feature/devTools/DevViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "DevViewModel.kt"

# interfaces
.implements Lorg/orbitmvi/orbit/ContainerHost;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/ViewModel;",
        "Lorg/orbitmvi/orbit/ContainerHost<",
        "Lcom/iMe/feature/devTools/DevState;",
        "Lcom/iMe/feature/devTools/DevSideEffects;",
        ">;"
    }
.end annotation


# instance fields
.field private final container:Lorg/orbitmvi/orbit/Container;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/orbitmvi/orbit/Container<",
            "Lcom/iMe/feature/devTools/DevState;",
            "Lcom/iMe/feature/devTools/DevSideEffects;",
            ">;"
        }
    .end annotation
.end field

.field private final devUseCase:Lcom/iMe/feature/devTools/DevUseCase;


# direct methods
.method public constructor <init>(Lcom/iMe/feature/devTools/DevUseCase;)V
    .locals 7

    const-string v0, "devUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/iMe/feature/devTools/DevViewModel;->devUseCase:Lcom/iMe/feature/devTools/DevUseCase;

    .line 16
    new-instance v2, Lcom/iMe/feature/devTools/DevState;

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {v2, p1, v0, v1, p1}, Lcom/iMe/feature/devTools/DevState;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    new-instance v4, Lcom/iMe/feature/devTools/DevViewModel$container$1;

    invoke-direct {v4, p0}, Lcom/iMe/feature/devTools/DevViewModel$container$1;-><init>(Lcom/iMe/feature/devTools/DevViewModel;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lorg/orbitmvi/orbit/viewmodel/ViewModelExtensionsKt;->container$default(Landroidx/lifecycle/ViewModel;Ljava/lang/Object;Lorg/orbitmvi/orbit/Container$Settings;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/orbitmvi/orbit/Container;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/feature/devTools/DevViewModel;->container:Lorg/orbitmvi/orbit/Container;

    return-void
.end method

.method public static final synthetic access$getDevUseCase$p(Lcom/iMe/feature/devTools/DevViewModel;)Lcom/iMe/feature/devTools/DevUseCase;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/iMe/feature/devTools/DevViewModel;->devUseCase:Lcom/iMe/feature/devTools/DevUseCase;

    return-object p0
.end method

.method public static final synthetic access$onCreate(Lcom/iMe/feature/devTools/DevViewModel;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/iMe/feature/devTools/DevViewModel;->onCreate()V

    return-void
.end method

.method private final onCreate()V
    .locals 4

    .line 20
    new-instance v0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;-><init>(Lcom/iMe/feature/devTools/DevViewModel;Lkotlin/coroutines/Continuation;)V

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
            "Lcom/iMe/feature/devTools/DevState;",
            "Lcom/iMe/feature/devTools/DevSideEffects;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/iMe/feature/devTools/DevViewModel;->container:Lorg/orbitmvi/orbit/Container;

    return-object v0
.end method
