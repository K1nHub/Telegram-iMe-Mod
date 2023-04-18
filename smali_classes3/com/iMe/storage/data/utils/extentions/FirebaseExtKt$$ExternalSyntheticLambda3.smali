.class public final synthetic Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Lio/reactivex/SingleEmitter;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda3;->f$0:Lio/reactivex/SingleEmitter;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt$$ExternalSyntheticLambda3;->f$0:Lio/reactivex/SingleEmitter;

    invoke-static {v0, p1}, Lcom/iMe/storage/data/utils/extentions/FirebaseExtKt;->$r8$lambda$GGZdsaY2KsTOE6dTFZaWbEuI4Io(Lio/reactivex/SingleEmitter;Ljava/lang/Exception;)V

    return-void
.end method
