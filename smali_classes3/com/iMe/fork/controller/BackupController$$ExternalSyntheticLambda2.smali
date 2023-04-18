.class public final synthetic Lcom/iMe/fork/controller/BackupController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Exception;

.field public final synthetic f$1:Lcom/iMe/fork/utils/Callbacks$Callback1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/fork/controller/BackupController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Exception;

    iput-object p2, p0, Lcom/iMe/fork/controller/BackupController$$ExternalSyntheticLambda2;->f$1:Lcom/iMe/fork/utils/Callbacks$Callback1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/iMe/fork/controller/BackupController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Exception;

    iget-object v1, p0, Lcom/iMe/fork/controller/BackupController$$ExternalSyntheticLambda2;->f$1:Lcom/iMe/fork/utils/Callbacks$Callback1;

    invoke-static {v0, v1}, Lcom/iMe/fork/controller/BackupController;->$r8$lambda$mJhq8qIdr1zoNF8fVJB85kCDUqA(Ljava/lang/Exception;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method
