.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda80;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/content/SharedPreferences;

.field public final synthetic f$5:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

.field public final synthetic f$6:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>([IJIILandroid/content/SharedPreferences;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda80;->f$0:[I

    iput-wide p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda80;->f$1:J

    iput p4, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda80;->f$2:I

    iput p5, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda80;->f$3:I

    iput-object p6, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda80;->f$4:Landroid/content/SharedPreferences;

    iput-object p7, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda80;->f$5:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iput-object p8, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda80;->f$6:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda80;->f$0:[I

    iget-wide v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda80;->f$1:J

    iget v3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda80;->f$2:I

    iget v4, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda80;->f$3:I

    iget-object v5, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda80;->f$4:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda80;->f$5:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v7, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda80;->f$6:Ljava/lang/Runnable;

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$9Rx6u0RPWn2N4N7Ok0FzG4g8H08([IJIILandroid/content/SharedPreferences;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
