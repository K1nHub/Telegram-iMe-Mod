.class public final synthetic Lcom/iMe/utils/dialogs/DialogUtils$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/iMe/fork/utils/Callbacks$Callback;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/fork/utils/Callbacks$Callback;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/utils/dialogs/DialogUtils$$ExternalSyntheticLambda10;->f$0:Lcom/iMe/fork/utils/Callbacks$Callback;

    iput-object p2, p0, Lcom/iMe/utils/dialogs/DialogUtils$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/iMe/utils/dialogs/DialogUtils$$ExternalSyntheticLambda10;->f$0:Lcom/iMe/fork/utils/Callbacks$Callback;

    iget-object v1, p0, Lcom/iMe/utils/dialogs/DialogUtils$$ExternalSyntheticLambda10;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-static {v0, v1, p1, p2}, Lcom/iMe/utils/dialogs/DialogUtils;->$r8$lambda$I_ii6NuOJGNp_QEwJEpJPWU8uKA(Lcom/iMe/fork/utils/Callbacks$Callback;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/content/DialogInterface;I)V

    return-void
.end method
