.class public final synthetic Lcom/smedialink/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field public final synthetic f$1:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field public final synthetic f$2:Lorg/fork/utils/Callbacks$Callback1;

.field public final synthetic f$3:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lorg/fork/utils/Callbacks$Callback1;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    iput-object p2, p0, Lcom/smedialink/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda0;->f$1:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    iput-object p3, p0, Lcom/smedialink/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda0;->f$2:Lorg/fork/utils/Callbacks$Callback1;

    iput-object p4, p0, Lcom/smedialink/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda0;->f$3:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/smedialink/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    iget-object v1, p0, Lcom/smedialink/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda0;->f$1:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    iget-object v2, p0, Lcom/smedialink/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda0;->f$2:Lorg/fork/utils/Callbacks$Callback1;

    iget-object v3, p0, Lcom/smedialink/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda0;->f$3:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/smedialink/utils/dialogs/DialogsFactoryKt;->$r8$lambda$secRQxZS3U5fh5lbUuRRLzqNevs(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lorg/fork/utils/Callbacks$Callback1;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method
