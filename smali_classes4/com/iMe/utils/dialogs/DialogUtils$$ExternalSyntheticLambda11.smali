.class public final synthetic Lcom/iMe/utils/dialogs/DialogUtils$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/iMe/fork/utils/Callbacks$Callback1;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/fork/utils/Callbacks$Callback1;ILorg/telegram/ui/ActionBar/AlertDialog$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/utils/dialogs/DialogUtils$$ExternalSyntheticLambda11;->f$0:Lcom/iMe/fork/utils/Callbacks$Callback1;

    iput p2, p0, Lcom/iMe/utils/dialogs/DialogUtils$$ExternalSyntheticLambda11;->f$1:I

    iput-object p3, p0, Lcom/iMe/utils/dialogs/DialogUtils$$ExternalSyntheticLambda11;->f$2:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/iMe/utils/dialogs/DialogUtils$$ExternalSyntheticLambda11;->f$0:Lcom/iMe/fork/utils/Callbacks$Callback1;

    iget v1, p0, Lcom/iMe/utils/dialogs/DialogUtils$$ExternalSyntheticLambda11;->f$1:I

    iget-object v2, p0, Lcom/iMe/utils/dialogs/DialogUtils$$ExternalSyntheticLambda11;->f$2:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-static {v0, v1, v2, p1}, Lcom/iMe/utils/dialogs/DialogUtils;->$r8$lambda$_vEVNryX5sAcH__kqIB2IpMF6dg(Lcom/iMe/fork/utils/Callbacks$Callback1;ILorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method
