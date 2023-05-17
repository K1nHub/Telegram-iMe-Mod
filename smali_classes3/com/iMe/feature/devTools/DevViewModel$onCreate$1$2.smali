.class final Lcom/iMe/feature/devTools/DevViewModel$onCreate$1$2;
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


# static fields
.field public static final INSTANCE:Lcom/iMe/feature/devTools/DevViewModel$onCreate$1$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1$2;

    invoke-direct {v0}, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1$2;-><init>()V

    sput-object v0, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1$2;->INSTANCE:Lcom/iMe/feature/devTools/DevViewModel$onCreate$1$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

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

    .line 25
    invoke-virtual {p1}, Lorg/orbitmvi/orbit/syntax/simple/SimpleContext;->getState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/devTools/DevState;

    const-string v0, "My name is: Ime"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/iMe/feature/devTools/DevState;->copy$default(Lcom/iMe/feature/devTools/DevState;Ljava/lang/String;ZILjava/lang/Object;)Lcom/iMe/feature/devTools/DevState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Lorg/orbitmvi/orbit/syntax/simple/SimpleContext;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/devTools/DevViewModel$onCreate$1$2;->invoke(Lorg/orbitmvi/orbit/syntax/simple/SimpleContext;)Lcom/iMe/feature/devTools/DevState;

    move-result-object p1

    return-object p1
.end method
