.class public final synthetic Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic f$0:Lcom/google/android/gms/tasks/Task;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/tasks/Task;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda6;->f$0:Lcom/google/android/gms/tasks/Task;

    iput-object p2, p0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda6;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda6;->f$0:Lcom/google/android/gms/tasks/Task;

    iget-object v1, p0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda6;->f$1:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt;->$r8$lambda$THXo7Kc8QMPQ-gefK0SHxSKr6iI(Lcom/google/android/gms/tasks/Task;Landroid/app/Activity;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
