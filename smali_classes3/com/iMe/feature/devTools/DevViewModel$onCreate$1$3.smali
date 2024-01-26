.class final Lcom/iMe/feature/devTools/DevViewModel$onCreate$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "DevViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/devTools/DevViewModel$onCreate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/orbitmvi/orbit/syntax/simple/SimpleContext<",
        "Lcom/iMe/feature/devTools/DevState;",
        ">;",
        "Lcom/iMe/feature/devTools/DevState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $repoName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1$3;->$repoName:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/orbitmvi/orbit/syntax/simple/SimpleContext;)Lcom/iMe/feature/devTools/DevState;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/orbitmvi/orbit/syntax/simple/SimpleContext<",
            "Lcom/iMe/feature/devTools/DevState;",
            ">;)",
            "Lcom/iMe/feature/devTools/DevState;"
        }
    .end annotation

    const-string v0, "$this$reduce"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleContext;->getState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/devTools/DevState;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This is data from repo:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1$3;->$repoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/iMe/feature/devTools/DevState;->copy$default(Lcom/iMe/feature/devTools/DevState;Ljava/lang/String;ZILjava/lang/Object;)Lcom/iMe/feature/devTools/DevState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lorg/orbitmvi/orbit/syntax/simple/SimpleContext;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1$3;->invoke(Lorg/orbitmvi/orbit/syntax/simple/SimpleContext;)Lcom/iMe/feature/devTools/DevState;

    move-result-object p1

    return-object p1
.end method
