.class public final synthetic Lcom/smedialink/utils/dialogs/DialogUtils$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/fork/utils/Callbacks$Callback1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;


# direct methods
.method public synthetic constructor <init>(Lorg/fork/utils/Callbacks$Callback1;ILorg/telegram/ui/ActionBar/AlertDialog$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/utils/dialogs/DialogUtils$$ExternalSyntheticLambda9;->f$0:Lorg/fork/utils/Callbacks$Callback1;

    iput p2, p0, Lcom/smedialink/utils/dialogs/DialogUtils$$ExternalSyntheticLambda9;->f$1:I

    iput-object p3, p0, Lcom/smedialink/utils/dialogs/DialogUtils$$ExternalSyntheticLambda9;->f$2:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/smedialink/utils/dialogs/DialogUtils$$ExternalSyntheticLambda9;->f$0:Lorg/fork/utils/Callbacks$Callback1;

    iget v1, p0, Lcom/smedialink/utils/dialogs/DialogUtils$$ExternalSyntheticLambda9;->f$1:I

    iget-object v2, p0, Lcom/smedialink/utils/dialogs/DialogUtils$$ExternalSyntheticLambda9;->f$2:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-static {v0, v1, v2, p1}, Lcom/smedialink/utils/dialogs/DialogUtils;->$r8$lambda$oKDZyq6B_8OT39KI2A2DnH7_uIw(Lorg/fork/utils/Callbacks$Callback1;ILorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method
