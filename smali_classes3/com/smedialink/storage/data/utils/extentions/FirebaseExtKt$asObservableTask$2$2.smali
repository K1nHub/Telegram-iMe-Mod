.class final Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$asObservableTask$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FirebaseExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt;->asObservableTask(Lcom/google/android/gms/tasks/Task;Landroid/app/Activity;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "TTResult;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $emitter:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "TTResult;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$asObservableTask$2$2;->$emitter:Lio/reactivex/ObservableEmitter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$asObservableTask$2$2;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$asObservableTask$2$2;->$emitter:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/smedialink/storage/data/utils/extentions/FirebaseExtKt$asObservableTask$2$2;->$emitter:Lio/reactivex/ObservableEmitter;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Observables can\'t emit null values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
