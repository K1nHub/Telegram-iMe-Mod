.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:[I

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(I[ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda3;->f$0:I

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda3;->f$1:[I

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda3;->f$0:I

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda3;->f$1:[I

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$FCq2GaUgc1NSOTrMfg1BeLEYVkM(I[ILjava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void
.end method
