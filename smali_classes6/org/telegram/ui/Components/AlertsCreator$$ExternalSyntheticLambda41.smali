.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda41;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lorg/telegram/messenger/browser/Browser$Progress;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;JZLorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda41;->f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda41;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda41;->f$2:J

    iput-boolean p5, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda41;->f$3:Z

    iput-object p6, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda41;->f$4:Lorg/telegram/messenger/browser/Browser$Progress;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda41;->f$0:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda41;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda41;->f$2:J

    iget-boolean v4, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda41;->f$3:Z

    iget-object v5, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda41;->f$4:Lorg/telegram/messenger/browser/Browser$Progress;

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$HYmFXb3ti4Cv09mxbJsp0rWOtUQ(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;JZLorg/telegram/messenger/browser/Browser$Progress;Landroid/content/DialogInterface;I)V

    return-void
.end method
