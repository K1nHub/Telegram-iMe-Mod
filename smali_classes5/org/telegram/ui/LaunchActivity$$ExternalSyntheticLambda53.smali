.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda53;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z

.field public final synthetic f$5:Lorg/telegram/messenger/browser/Browser$Progress;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Landroid/content/Intent;ZZZLorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda53;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda53;->f$1:Landroid/content/Intent;

    iput-boolean p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda53;->f$2:Z

    iput-boolean p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda53;->f$3:Z

    iput-boolean p5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda53;->f$4:Z

    iput-object p6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda53;->f$5:Lorg/telegram/messenger/browser/Browser$Progress;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda53;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda53;->f$1:Landroid/content/Intent;

    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda53;->f$2:Z

    iget-boolean v3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda53;->f$3:Z

    iget-boolean v4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda53;->f$4:Z

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda53;->f$5:Lorg/telegram/messenger/browser/Browser$Progress;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$ibI9tjgW7JS0F1GDI4XoeuBlCE4(Lorg/telegram/ui/LaunchActivity;Landroid/content/Intent;ZZZLorg/telegram/messenger/browser/Browser$Progress;)V

    return-void
.end method
