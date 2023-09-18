.class public final synthetic Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/iMe/fork/utils/Callbacks$Callback1;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/fork/utils/Callbacks$Callback1;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda0;->f$0:Lcom/iMe/fork/utils/Callbacks$Callback1;

    iput-object p2, p0, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda0;->f$0:Lcom/iMe/fork/utils/Callbacks$Callback1;

    iget-object v1, p0, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-static {v0, v1, p1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->$r8$lambda$yqsfO4QEYg0n439HK7vGbpLkIOE(Lcom/iMe/fork/utils/Callbacks$Callback1;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/view/View;)V

    return-void
.end method
