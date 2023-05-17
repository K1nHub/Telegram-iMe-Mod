.class final Lcom/iMe/feature/devTools/DevViewModel$container$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DevViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/feature/devTools/DevViewModel;-><init>(Lcom/iMe/feature/devTools/DevUseCase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/feature/devTools/DevState;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/feature/devTools/DevViewModel;


# direct methods
.method constructor <init>(Lcom/iMe/feature/devTools/DevViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/feature/devTools/DevViewModel$container$1;->this$0:Lcom/iMe/feature/devTools/DevViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Lcom/iMe/feature/devTools/DevState;

    invoke-virtual {p0, p1}, Lcom/iMe/feature/devTools/DevViewModel$container$1;->invoke(Lcom/iMe/feature/devTools/DevState;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/feature/devTools/DevState;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/iMe/feature/devTools/DevViewModel$container$1;->this$0:Lcom/iMe/feature/devTools/DevViewModel;

    invoke-static {p1}, Lcom/iMe/feature/devTools/DevViewModel;->access$onCreate(Lcom/iMe/feature/devTools/DevViewModel;)V

    return-void
.end method
