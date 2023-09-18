.class public final synthetic Lcom/iMe/utils/helper/wallet/BackupPdfHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/utils/helper/wallet/BackupPdfHelper$$ExternalSyntheticLambda1;->f$0:Ljava/io/File;

    iput-object p2, p0, Lcom/iMe/utils/helper/wallet/BackupPdfHelper$$ExternalSyntheticLambda1;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/iMe/utils/helper/wallet/BackupPdfHelper$$ExternalSyntheticLambda1;->f$0:Ljava/io/File;

    iget-object v1, p0, Lcom/iMe/utils/helper/wallet/BackupPdfHelper$$ExternalSyntheticLambda1;->f$1:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/iMe/utils/helper/wallet/BackupPdfHelper;->$r8$lambda$oRhJuuebDMGjhPJwHc30-YbRumI(Ljava/io/File;Landroid/app/Activity;)V

    return-void
.end method
