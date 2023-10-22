.class Lorg/telegram/ui/PasscodeActivity$9;
.super Lorg/telegram/ui/CodeFieldContainer;
.source "PasscodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PasscodeActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PasscodeActivity;


# direct methods
.method public static synthetic $r8$lambda$f4bRMZbwu8GL51YxuINyHr_3E_I(Lorg/telegram/ui/PasscodeActivity$9;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PasscodeActivity$9;->lambda$processNextPressed$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;)V
    .locals 0

    .line 953
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$9;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/CodeFieldContainer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$processNextPressed$0()V
    .locals 1

    .line 957
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$9;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1700(Lorg/telegram/ui/PasscodeActivity;)V

    return-void
.end method


# virtual methods
.method protected processNextPressed()V
    .locals 3

    .line 956
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$9;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1200(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 957
    new-instance v0, Lorg/telegram/ui/PasscodeActivity$9$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PasscodeActivity$9$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PasscodeActivity$9;)V

    const-wide/16 v1, 0x104

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 960
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$9;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1500(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 961
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$9;->this$0:Lorg/telegram/ui/PasscodeActivity;

    iget-object v1, v0, Lorg/telegram/ui/PasscodeActivity;->walletCreatePinPresenter:Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$600(Lorg/telegram/ui/PasscodeActivity;)Lorg/telegram/ui/CodeFieldContainer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->onPinChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 963
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$9;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1600(Lorg/telegram/ui/PasscodeActivity;)V

    :goto_0
    return-void
.end method
