.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lcom/iMe/fork/utils/Callbacks$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda1;->f$0:Lcom/iMe/fork/utils/Callbacks$Callback;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda1;->f$0:Lcom/iMe/fork/utils/Callbacks$Callback;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$ozZwcFJ0ujZ5V2lc5fP7rsVlRx0(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/content/DialogInterface;)V

    return-void
.end method
