.class public final Lcom/iMe/feature/devTools/DevUseCase;
.super Ljava/lang/Object;
.source "DevUseCase.kt"


# instance fields
.field private final devRepository:Lcom/iMe/feature/devTools/DevToolRepository;


# direct methods
.method public constructor <init>(Lcom/iMe/feature/devTools/DevToolRepository;)V
    .locals 1

    const-string v0, "devRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/feature/devTools/DevUseCase;->devRepository:Lcom/iMe/feature/devTools/DevToolRepository;

    return-void
.end method


# virtual methods
.method public final getRepoName(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/iMe/feature/devTools/DevUseCase;->devRepository:Lcom/iMe/feature/devTools/DevToolRepository;

    invoke-virtual {v0, p1}, Lcom/iMe/feature/devTools/DevToolRepository;->getRepoName(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
