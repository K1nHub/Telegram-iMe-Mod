.class public final synthetic Lorg/fork/utils/FileSavingHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fork/utils/FileSavingHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/fork/utils/FileSavingHelper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/smedialink/utils/extentions/common/ThrowableExtKt;->showToast(Ljava/lang/Throwable;)V

    return-void
.end method
