.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:[Z

.field public final synthetic f$3:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;[Z[ZLorg/telegram/messenger/MessagesStorage$BooleanCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$1:[Z

    iput-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$2:[Z

    iput-object p4, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$3:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$1:[Z

    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$2:[Z

    iget-object v3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda44;->f$3:Lorg/telegram/messenger/MessagesStorage$BooleanCallback;

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$1L3aSLMMX2o_imHNbQhgageNK90(Lorg/telegram/ui/ActionBar/BaseFragment;[Z[ZLorg/telegram/messenger/MessagesStorage$BooleanCallback;Landroid/content/DialogInterface;I)V

    return-void
.end method
