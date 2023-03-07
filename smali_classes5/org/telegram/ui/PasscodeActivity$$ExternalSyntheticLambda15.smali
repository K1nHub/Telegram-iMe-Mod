.class public final synthetic Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PasscodeActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PasscodeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda15;->f$0:Lorg/telegram/ui/PasscodeActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$$ExternalSyntheticLambda15;->f$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    return-void
.end method
