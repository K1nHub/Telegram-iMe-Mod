.class final Lcom/smedialink/bots/data/model/bot/NeuroBot$getOutputsFromModel$2$1;
.super Ljava/lang/Object;
.source "NeuroBot.kt"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/bots/data/model/bot/NeuroBot;->getOutputsFromModel(Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;Lcom/google/firebase/ml/custom/FirebaseModelInputs;Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener;"
    }
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smedialink/bots/data/model/bot/NeuroBot$getOutputsFromModel$2$1;->$continuation:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Lcom/google/firebase/ml/custom/FirebaseModelOutputs;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/smedialink/bots/data/model/bot/NeuroBot$getOutputsFromModel$2$1;->$continuation:Lkotlin/coroutines/Continuation;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/firebase/ml/custom/FirebaseModelOutputs;->getOutput(I)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 205
    check-cast p1, Lcom/google/firebase/ml/custom/FirebaseModelOutputs;

    invoke-virtual {p0, p1}, Lcom/smedialink/bots/data/model/bot/NeuroBot$getOutputsFromModel$2$1;->onSuccess(Lcom/google/firebase/ml/custom/FirebaseModelOutputs;)V

    return-void
.end method
