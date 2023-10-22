.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda127;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Ljava/lang/Long;

.field public final synthetic f$4:Ljava/lang/Integer;

.field public final synthetic f$5:Ljava/lang/Integer;

.field public final synthetic f$6:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$7:I

.field public final synthetic f$8:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Runnable;ZLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/telegram/ui/ActionBar/BaseFragment;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda127;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda127;->f$1:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda127;->f$2:Z

    iput-object p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda127;->f$3:Ljava/lang/Long;

    iput-object p5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda127;->f$4:Ljava/lang/Integer;

    iput-object p6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda127;->f$5:Ljava/lang/Integer;

    iput-object p7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda127;->f$6:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput p8, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda127;->f$7:I

    iput-object p9, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda127;->f$8:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda127;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda127;->f$1:Ljava/lang/Runnable;

    iget-boolean v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda127;->f$2:Z

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda127;->f$3:Ljava/lang/Long;

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda127;->f$4:Ljava/lang/Integer;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda127;->f$5:Ljava/lang/Integer;

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda127;->f$6:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget v7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda127;->f$7:I

    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda127;->f$8:Landroid/os/Bundle;

    move-object v9, p1

    move-object v10, p2

    invoke-static/range {v0 .. v10}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$IiC8Tj5Fhng74SZya7rZEdt9HoA(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Runnable;ZLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lorg/telegram/ui/ActionBar/BaseFragment;ILandroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
