.class public final synthetic Lcom/iMe/utils/dialogs/DialogExtKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/utils/dialogs/DialogExtKt$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/iMe/utils/dialogs/DialogExtKt$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p3, p0, Lcom/iMe/utils/dialogs/DialogExtKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/iMe/utils/dialogs/DialogExtKt$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/iMe/utils/dialogs/DialogExtKt$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iMe/utils/dialogs/DialogExtKt$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v2, p0, Lcom/iMe/utils/dialogs/DialogExtKt$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/iMe/utils/dialogs/DialogExtKt$$ExternalSyntheticLambda0;->f$3:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/iMe/utils/dialogs/DialogExtKt;->$r8$lambda$ncpJxMl1QE3Xpv9x88OZnTQN_F4(Landroid/widget/TextView;Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;)V

    return-void
.end method
