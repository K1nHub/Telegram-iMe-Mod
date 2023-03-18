.class public final synthetic Lcom/smedialink/utils/dialogs/DialogUtils$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/model/dialog/EditTextDialogModel;

.field public final synthetic f$1:Lorg/telegram/ui/Components/EditTextBoldCursor;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/model/dialog/EditTextDialogModel;Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/utils/dialogs/DialogUtils$$ExternalSyntheticLambda8;->f$0:Lcom/smedialink/model/dialog/EditTextDialogModel;

    iput-object p2, p0, Lcom/smedialink/utils/dialogs/DialogUtils$$ExternalSyntheticLambda8;->f$1:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/smedialink/utils/dialogs/DialogUtils$$ExternalSyntheticLambda8;->f$0:Lcom/smedialink/model/dialog/EditTextDialogModel;

    iget-object v1, p0, Lcom/smedialink/utils/dialogs/DialogUtils$$ExternalSyntheticLambda8;->f$1:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v0, v1, p1}, Lcom/smedialink/utils/dialogs/DialogUtils;->$r8$lambda$gckfK6DVZtVXQqTHk_ss0ze7XmU(Lcom/smedialink/model/dialog/EditTextDialogModel;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V

    return-void
.end method
