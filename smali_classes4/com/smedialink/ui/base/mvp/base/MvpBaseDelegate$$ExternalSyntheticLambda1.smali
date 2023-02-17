.class public final synthetic Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lio/reactivex/disposables/Disposable;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate;ZZLio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate;

    iput-boolean p2, p0, Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate$$ExternalSyntheticLambda1;->f$1:Z

    iput-boolean p3, p0, Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate$$ExternalSyntheticLambda1;->f$2:Z

    iput-object p4, p0, Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate$$ExternalSyntheticLambda1;->f$3:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate;

    iget-boolean v1, p0, Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate$$ExternalSyntheticLambda1;->f$1:Z

    iget-boolean v2, p0, Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate$$ExternalSyntheticLambda1;->f$2:Z

    iget-object v3, p0, Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate$$ExternalSyntheticLambda1;->f$3:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, v1, v2, v3}, Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate;->$r8$lambda$2YQqymUuhxbWhq6r9OYPRo2XozI(Lcom/smedialink/ui/base/mvp/base/MvpBaseDelegate;ZZLio/reactivex/disposables/Disposable;)V

    return-void
.end method
