.class public final synthetic Lcom/smedialink/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/base/mvp/base/BaseView;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/base/mvp/base/BaseView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda2;->f$0:Lcom/smedialink/ui/base/mvp/base/BaseView;

    iput-boolean p2, p0, Lcom/smedialink/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda2;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/smedialink/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda2;->f$0:Lcom/smedialink/ui/base/mvp/base/BaseView;

    iget-boolean v1, p0, Lcom/smedialink/utils/extentions/rx/RxExtKt$$ExternalSyntheticLambda2;->f$1:Z

    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-static {v0, v1, p1}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->$r8$lambda$ZEOkOeN6lTkYTm6kFMnVCiujxPg(Lcom/smedialink/ui/base/mvp/base/BaseView;ZLio/reactivex/disposables/Disposable;)V

    return-void
.end method
