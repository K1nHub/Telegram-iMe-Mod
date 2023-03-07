.class public final synthetic Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity$12;

.field public final synthetic f$1:Lorg/telegram/messenger/MessagesController$DialogFilter;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity$12;Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/DialogsActivity$12;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/messenger/MessagesController$DialogFilter;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/DialogsActivity$12;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$12$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/DialogsActivity$12;->$r8$lambda$SLB067Y3j_3Bv5H0Q7zktCfQtlU(Lorg/telegram/ui/DialogsActivity$12;Lorg/telegram/messenger/MessagesController$DialogFilter;Landroid/content/DialogInterface;I)V

    return-void
.end method
