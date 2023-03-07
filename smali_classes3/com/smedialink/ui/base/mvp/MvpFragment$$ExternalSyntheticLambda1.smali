.class public final synthetic Lcom/smedialink/ui/base/mvp/MvpFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/fork/utils/Callbacks$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/fork/utils/Callbacks$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/base/mvp/MvpFragment$$ExternalSyntheticLambda1;->f$0:Lorg/fork/utils/Callbacks$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/smedialink/ui/base/mvp/MvpFragment$$ExternalSyntheticLambda1;->f$0:Lorg/fork/utils/Callbacks$Callback;

    invoke-interface {v0}, Lorg/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method
