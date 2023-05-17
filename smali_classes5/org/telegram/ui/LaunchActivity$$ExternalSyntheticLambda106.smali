.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda106;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Ljava/lang/Integer;

.field public final synthetic f$3:Ljava/lang/Long;

.field public final synthetic f$4:Ljava/lang/Integer;

.field public final synthetic f$5:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$6:I

.field public final synthetic f$7:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Runnable;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Lorg/telegram/ui/ActionBar/BaseFragment;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda106;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda106;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda106;->f$2:Ljava/lang/Integer;

    iput-object p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda106;->f$3:Ljava/lang/Long;

    iput-object p5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda106;->f$4:Ljava/lang/Integer;

    iput-object p6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda106;->f$5:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput p7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda106;->f$6:I

    iput-object p8, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda106;->f$7:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda106;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda106;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda106;->f$2:Ljava/lang/Integer;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda106;->f$3:Ljava/lang/Long;

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda106;->f$4:Ljava/lang/Integer;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda106;->f$5:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget v6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda106;->f$6:I

    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda106;->f$7:Landroid/os/Bundle;

    move-object v8, p1

    move-object v9, p2

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$0LB21kVr15bBIEBleaQheYpk2LQ(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Runnable;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Lorg/telegram/ui/ActionBar/BaseFragment;ILandroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
