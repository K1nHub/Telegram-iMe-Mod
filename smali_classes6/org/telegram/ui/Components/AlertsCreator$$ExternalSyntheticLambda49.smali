.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda49;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$3:Landroid/content/Context;

.field public final synthetic f$4:J

.field public final synthetic f$5:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public synthetic constructor <init>([IILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda49;->f$0:[I

    iput p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda49;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda49;->f$2:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p4, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda49;->f$3:Landroid/content/Context;

    iput-wide p5, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda49;->f$4:J

    iput-object p7, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda49;->f$5:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda49;->f$0:[I

    iget v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda49;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda49;->f$2:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda49;->f$3:Landroid/content/Context;

    iget-wide v4, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda49;->f$4:J

    iget-object v6, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda49;->f$5:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v7, p1

    move v8, p2

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$uXww_sw92P4Rop5Ron8iL5JEWUY([IILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;JLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/DialogInterface;I)V

    return-void
.end method
