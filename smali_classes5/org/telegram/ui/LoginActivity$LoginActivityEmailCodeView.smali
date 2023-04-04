.class public Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;
.super Lorg/telegram/ui/Components/SlideView;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginActivityEmailCodeView"
.end annotation


# instance fields
.field private cantAccessEmailFrameLayout:Landroid/widget/FrameLayout;

.field private cantAccessEmailView:Landroid/widget/TextView;

.field private codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

.field private confirmTextView:Landroid/widget/TextView;

.field private currentParams:Landroid/os/Bundle;

.field private email:Ljava/lang/String;

.field private emailPhone:Ljava/lang/String;

.field private emailResetInView:Landroid/widget/TextView;

.field private errorColorTimeout:Ljava/lang/Runnable;

.field private errorViewSwitcher:Landroid/widget/ViewSwitcher;

.field private googleAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private isFromSetup:Z

.field private isSetup:Z

.field private length:I

.field private loginOrView:Lorg/telegram/ui/Components/LoginOrView;

.field private nextPressed:Z

.field private phone:Ljava/lang/String;

.field private phoneHash:Ljava/lang/String;

.field private postedErrorColorTimeout:Z

.field private requestPhone:Ljava/lang/String;

.field private requestingEmailReset:Z

.field private resendCodeTimeout:Ljava/lang/Runnable;

.field private resendCodeView:Landroid/widget/TextView;

.field private resendFrameLayout:Landroid/widget/FrameLayout;

.field private resetAvailablePeriod:I

.field private resetPendingDate:I

.field private resetRequestPending:Z

.field private signInWithGoogleView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field private titleView:Landroid/widget/TextView;

.field private updateResetPendingDateCallback:Ljava/lang/Runnable;

.field private wrongCodeView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$-7LIHvJ1F04cuxdCq33ckhCMFcY(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$onNextPressed$20(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-ok6O7fpYoPySH2wZjvV7DkUUv4(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$new$11(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2wcUlobohGsFfN9_0OI_7V6cw2E(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$onNextPressed$19(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$48_b0ccIaK8loahFtmbWCbOZtko(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$new$7(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7ndNiSg_7q-UhSPpoieyQtXnKqE(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$requestEmailReset$13(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8oDHcQHVff_bx-LpIgWr4v_JkcI(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$DjwWKh2mHn5cTBvM2b_mpyZVI5s(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestEmailReset()V

    return-void
.end method

.method public static synthetic $r8$lambda$FNn89XdKeG3O5YNradTEa4WCOE4(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$onPasscodeError$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$KApAZiGmkU6DUGyZlCKEcZJ48_U(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$animateSuccess$25(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KOnYGgKKbJ2qQJ5xvuJ5lWgSo1U(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$requestEmailReset$12(Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M3huWlHVch1uxOZfUXL1-qhxGao(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$onNextPressed$21(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QYDaXrOHBjMIUwvOCSMOxqDIe_Y(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$shakeWrongCode$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$R8zxfZSgrdh9eHYAVkt8ee8zGaA(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$onNextPressed$18(Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SMhNbIl8fkVatAra4GV79e2ygWs(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$animateSuccess$24(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WIyPFnVFWtPsj7NHYnMYS_bAFCI(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$new$5(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z1d1VYLpAQpjhG6Ro6RPRsy1Sa0(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$onNextPressed$17(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZEGskOn1zFNzmVYY87eqRa1cuMU(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ckxVEwzWt87K1pVDZcoYa0NDRA0(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$onPasscodeError$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$jv-r6cYXgUgh2IWyjTL6DVVAdls(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$onNextPressed$23(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kYWWuv49VrvRRkR58_QIqN6xx7Q(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$new$10(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m-dp8fOf8jZmHTw5L1Ry8VLmZOc(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->updateResetPendingDate()V

    return-void
.end method

.method public static synthetic $r8$lambda$o3OZdQ40n9dZJ_ymcdeJgn-5-8g(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$new$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oRLAu2m_umlEDwdUBsD4Sy6PeW0(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$setParams$14(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$rp1gIR4vLMRlzl9p4gRZwD29VA8(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$onNextPressed$22(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rw9SnSuI4NMCfTH1dgbm9ur40xY(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$new$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sjB-sgLwCaWNNq3zLKGT4gB-Kog(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$shakeWrongCode$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$wtY20W-DthX7RJCor1m26C7NSBA(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$new$2(Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xJTWqtYuaPa2I3Na1WHfkhLk664(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$onShow$28()V

    return-void
.end method

.method public static synthetic $r8$lambda$yx73vToqCd2Cx5Smbfx5rUE8Ikg(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$new$4(Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zNIqRlH8Z_nVZl5coyJK9sLHlcA(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$zeGWzjDLt_bbByCU3ufoaev5mUc(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$new$9(Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;Z)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 6052
    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 6053
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    .line 6038
    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda15;

    invoke-direct {v4, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    iput-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorColorTimeout:Ljava/lang/Runnable;

    .line 6049
    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda7;

    invoke-direct {v4, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    iput-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeTimeout:Ljava/lang/Runnable;

    .line 6050
    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda12;

    invoke-direct {v4, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    iput-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->updateResetPendingDateCallback:Ljava/lang/Runnable;

    .line 6054
    iput-boolean v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->isSetup:Z

    const/4 v4, 0x1

    .line 6056
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6058
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6059
    new-instance v6, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v6, v2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v6, 0x3

    const/16 v7, 0x78

    if-eqz v3, :cond_1

    .line 6060
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v8

    if-ne v8, v6, :cond_0

    goto :goto_0

    .line 6063
    :cond_0
    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v9, Lorg/telegram/messenger/R$raw;->email_setup_heart:I

    invoke-virtual {v8, v9, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto :goto_1

    .line 6061
    :cond_1
    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v9, Lorg/telegram/messenger/R$raw;->email_check_inbox:I

    invoke-virtual {v8, v9, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 6065
    :goto_1
    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 6066
    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v7, v7, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6067
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-le v10, v7, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    move v7, v9

    goto :goto_3

    :cond_3
    :goto_2
    const/16 v7, 0x8

    :goto_3
    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v7, -0x1

    const/4 v10, -0x2

    .line 6068
    invoke-static {v7, v10, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6070
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->titleView:Landroid/widget/TextView;

    const/high16 v11, 0x41900000    # 18.0f

    .line 6071
    invoke-virtual {v5, v4, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6072
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->titleView:Landroid/widget/TextView;

    const-string v11, "fonts/rmedium.ttf"

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 6073
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->titleView:Landroid/widget/TextView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v11

    if-ne v11, v6, :cond_4

    sget v11, Lorg/telegram/messenger/R$string;->CheckYourNewEmail:I

    goto :goto_4

    :cond_4
    if-eqz v3, :cond_5

    sget v11, Lorg/telegram/messenger/R$string;->VerificationCode:I

    goto :goto_4

    :cond_5
    sget v11, Lorg/telegram/messenger/R$string;->CheckYourEmail:I

    :goto_4
    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6074
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->titleView:Landroid/widget/TextView;

    const/16 v11, 0x11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 6075
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->titleView:Landroid/widget/TextView;

    const/4 v12, 0x2

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v5, v13, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 6076
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->titleView:Landroid/widget/TextView;

    const/4 v15, -0x1

    const/16 v16, -0x2

    const/16 v17, 0x1

    const/16 v18, 0x20

    const/16 v19, 0x10

    const/16 v20, 0x20

    const/16 v21, 0x0

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v5, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6078
    new-instance v5, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-direct {v5, v2, v9}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;-><init>(Landroid/content/Context;Z)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->confirmTextView:Landroid/widget/TextView;

    const/high16 v13, 0x41600000    # 14.0f

    .line 6079
    invoke-virtual {v5, v4, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6080
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->confirmTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 6081
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->confirmTextView:Landroid/widget/TextView;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v5, v15, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 6082
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->confirmTextView:Landroid/widget/TextView;

    const/4 v15, -0x2

    const/16 v18, 0x18

    const/16 v19, 0x8

    const/16 v20, 0x18

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v0, v5, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6084
    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$1;

    invoke-direct {v5, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/4 v15, -0x2

    const/16 v16, 0x2a

    const/16 v18, 0x0

    if-eqz v3, :cond_6

    const/16 v19, 0x30

    goto :goto_5

    :cond_6
    const/16 v19, 0x20

    :goto_5
    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 6091
    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v0, v5, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6093
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->signInWithGoogleView:Landroid/widget/TextView;

    .line 6094
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 6095
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->signInWithGoogleView:Landroid/widget/TextView;

    invoke-virtual {v5, v4, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6096
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->signInWithGoogleView:Landroid/widget/TextView;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v5, v15, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 6097
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->signInWithGoogleView:Landroid/widget/TextView;

    const/16 v15, 0x10

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-virtual {v5, v7, v10, v8, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 6098
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->signInWithGoogleView:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 6100
    new-instance v5, Landroid/text/SpannableStringBuilder;

    const-string v7, "d "

    invoke-direct {v5, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6101
    sget v7, Lorg/telegram/messenger/R$drawable;->googleg_standard_color_18:I

    invoke-static {v2, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/16 v8, 0x9

    .line 6102
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    const/16 v10, 0x12

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    const/16 v13, 0x1b

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-virtual {v7, v9, v8, v10, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6103
    new-instance v8, Landroid/text/style/ImageSpan;

    invoke-direct {v8, v7, v9}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 v7, 0x21

    invoke-virtual {v5, v8, v9, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6104
    new-instance v8, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$2;

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v5, v8, v4, v12, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6113
    sget v7, Lorg/telegram/messenger/R$string;->SignInWithGoogle:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6114
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->signInWithGoogleView:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6116
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->signInWithGoogleView:Landroid/widget/TextView;

    new-instance v7, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6143
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->cantAccessEmailFrameLayout:Landroid/widget/FrameLayout;

    .line 6144
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v7

    if-eq v7, v6, :cond_7

    iget-boolean v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->isSetup:Z

    if-nez v7, :cond_7

    move v7, v4

    goto :goto_6

    :cond_7
    move v7, v9

    :goto_6
    invoke-static {v5, v7, v14, v9}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 6146
    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$4;

    invoke-direct {v5, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$4;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->cantAccessEmailView:Landroid/widget/TextView;

    .line 6152
    sget v7, Lorg/telegram/messenger/R$string;->LoginCantAccessThisEmail:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6153
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->cantAccessEmailView:Landroid/widget/TextView;

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 6154
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->cantAccessEmailView:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6155
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->cantAccessEmailView:Landroid/widget/TextView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-virtual {v5, v7, v8, v10, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 6156
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->cantAccessEmailView:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 6157
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->cantAccessEmailView:Landroid/widget/TextView;

    new-instance v7, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda4;

    invoke-direct {v7, v0, v2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6203
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->cantAccessEmailFrameLayout:Landroid/widget/FrameLayout;

    iget-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->cantAccessEmailView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 6205
    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$5;

    invoke-direct {v5, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$5;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->emailResetInView:Landroid/widget/TextView;

    .line 6211
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 6212
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->emailResetInView:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6213
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->emailResetInView:Landroid/widget/TextView;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v7, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 6214
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->emailResetInView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 6215
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->emailResetInView:Landroid/widget/TextView;

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda3;

    invoke-direct {v6, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6216
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->emailResetInView:Landroid/widget/TextView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v5, v9, v6, v9, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 6217
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->emailResetInView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6218
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->cantAccessEmailFrameLayout:Landroid/widget/FrameLayout;

    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->emailResetInView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 6220
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    .line 6221
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 6222
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6223
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 6224
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-virtual {v5, v6, v7, v8, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 6225
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 6226
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->ResendCode:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6227
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda1;

    invoke-direct {v6, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6254
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    invoke-static {v5, v9, v14, v9}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 6256
    new-instance v5, Lorg/telegram/ui/Components/LoginOrView;

    invoke-direct {v5, v2}, Lorg/telegram/ui/Components/LoginOrView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->loginOrView:Lorg/telegram/ui/Components/LoginOrView;

    .line 6257
    invoke-static {v5}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    .line 6259
    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$6;

    invoke-direct {v5, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$6;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 6265
    sget v1, Lorg/telegram/messenger/R$anim;->text_in:I

    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 6266
    sget-object v5, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6267
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v6, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 6269
    sget v1, Lorg/telegram/messenger/R$anim;->text_out:I

    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 6270
    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 6271
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 6273
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendFrameLayout:Landroid/widget/FrameLayout;

    .line 6274
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    const/4 v6, -0x2

    invoke-static {v6, v6, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6275
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    .line 6277
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->wrongCodeView:Landroid/widget/TextView;

    .line 6278
    sget v5, Lorg/telegram/messenger/R$string;->WrongCode:I

    const-string v6, "WrongCode"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6279
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->wrongCodeView:Landroid/widget/TextView;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5, v14}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 6280
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->wrongCodeView:Landroid/widget/TextView;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6281
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->wrongCodeView:Landroid/widget/TextView;

    const/16 v4, 0x31

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 6282
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->wrongCodeView:Landroid/widget/TextView;

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 6283
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->wrongCodeView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    .line 6285
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    if-eqz v3, :cond_8

    .line 6287
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v15, -0x1

    const/16 v16, -0x2

    const/16 v17, 0x50

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x20

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    .line 6289
    :cond_8
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    const/16 v3, 0x30

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-static {v4, v5, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6290
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->cantAccessEmailFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v4, v5, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6291
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->loginOrView:Lorg/telegram/ui/Components/LoginOrView;

    const/4 v15, -0x1

    const/16 v16, 0x10

    const/16 v17, 0x11

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x10

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6292
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->signInWithGoogleView:Landroid/widget/TextView;

    const/16 v16, -0x2

    const/16 v17, 0x50

    invoke-static/range {v15 .. v21}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_7
    const/4 v2, -0x1

    .line 6294
    invoke-static {v2, v9, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$14400(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)Z
    .locals 0

    .line 6008
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->postedErrorColorTimeout:Z

    return p0
.end method

.method static synthetic access$14500(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)Ljava/lang/Runnable;
    .locals 0

    .line 6008
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorColorTimeout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$15202(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 0

    .line 6008
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->googleAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object p1
.end method

.method private animateSuccess(Ljava/lang/Runnable;)V
    .locals 7

    .line 6741
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->googleAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz v0, :cond_0

    .line 6742
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6745
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v2

    const-wide/16 v3, 0x4b

    if-ge v0, v2, :cond_1

    .line 6747
    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;I)V

    int-to-long v5, v0

    mul-long/2addr v5, v3

    invoke-virtual {v1, v2, v5, v6}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6749
    :cond_1
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length p1, p1

    int-to-long v5, p1

    mul-long/2addr v5, v3

    const-wide/16 v2, 0x190

    add-long/2addr v5, v2

    invoke-virtual {v1, v0, v5, v6}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getTimePattern(I)Ljava/lang/String;
    .locals 8

    const v0, 0x15180

    .line 6502
    div-int v1, p1, v0

    .line 6503
    rem-int/2addr p1, v0

    div-int/lit16 v0, p1, 0xe10

    .line 6504
    rem-int/lit16 p1, p1, 0xe10

    div-int/lit8 p1, p1, 0x3c

    const/4 v2, 0x1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 6507
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    const-string v3, "Days"

    const/4 v4, 0x2

    const-string v5, "Hours"

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 6512
    sget p1, Lorg/telegram/messenger/R$string;->LoginEmailResetInDoublePattern:I

    new-array v4, v4, [Ljava/lang/Object;

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v3, v1, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {p1, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v7, "Minutes"

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 6514
    sget v1, Lorg/telegram/messenger/R$string;->LoginEmailResetInDoublePattern:I

    new-array v3, v4, [Ljava/lang/Object;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v5, v0, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v7, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 6516
    sget p1, Lorg/telegram/messenger/R$string;->LoginEmailResetInSinglePattern:I

    new-array v0, v2, [Ljava/lang/Object;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 6518
    sget p1, Lorg/telegram/messenger/R$string;->LoginEmailResetInSinglePattern:I

    new-array v0, v2, [Ljava/lang/Object;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6520
    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->LoginEmailResetInSinglePattern:I

    new-array v1, v2, [Ljava/lang/Object;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, p1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getTimePatternForTimer(I)Ljava/lang/String;
    .locals 8

    const v0, 0x15180

    .line 6482
    div-int v1, p1, v0

    .line 6483
    rem-int/2addr p1, v0

    div-int/lit16 v0, p1, 0xe10

    .line 6484
    rem-int/lit16 p1, p1, 0xe10

    div-int/lit8 v2, p1, 0x3c

    .line 6485
    rem-int/lit8 p1, p1, 0x3c

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 6493
    sget p1, Lorg/telegram/messenger/R$string;->LoginEmailResetInSinglePattern:I

    new-array v0, v4, [Ljava/lang/Object;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "Days"

    invoke-static {v4, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 6495
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%02d:"

    if-eqz v0, :cond_2

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-static {v6, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-static {v0, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "%02d"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6496
    sget v0, Lorg/telegram/messenger/R$string;->LoginEmailResetInSinglePattern:I

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private synthetic lambda$animateSuccess$24(I)V
    .locals 1

    .line 6747
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object p1, v0, p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lorg/telegram/ui/CodeNumberField;->animateSuccessProgress(F)V

    return-void
.end method

.method private synthetic lambda$animateSuccess$25(Ljava/lang/Runnable;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 6750
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 6751
    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/CodeNumberField;->animateSuccessProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6753
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 6754
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iput-boolean v0, p1, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 5

    const/4 v0, 0x0

    .line 6039
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->postedErrorColorTimeout:Z

    move v1, v0

    .line 6040
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 6041
    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6044
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendFrameLayout:Landroid/widget/FrameLayout;

    if-eq v1, v2, :cond_2

    .line 6045
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 6046
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->cantAccessEmailFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->isSetup:Z

    if-nez v2, :cond_1

    move v0, v3

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    const/4 v0, 0x1

    .line 6049
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->showResendCodeView(Z)V

    return-void
.end method

.method private synthetic lambda$new$10(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 6244
    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda21;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$11(Landroid/view/View;)V
    .locals 3

    .line 6228
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6232
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->showResendCodeView(Z)V

    .line 6234
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;-><init>()V

    .line 6235
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestPhone:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_number:Ljava/lang/String;

    .line 6236
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->phoneHash:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_code_hash:Ljava/lang/String;

    .line 6238
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6239
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->phone:Ljava/lang/String;

    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6240
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->emailPhone:Ljava/lang/String;

    const-string v2, "ephone"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6241
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestPhone:Ljava/lang/String;

    const-string v2, "phoneFormated"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6243
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$14900(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;)V

    const/16 v0, 0xa

    invoke-virtual {v1, p1, v2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2(Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 6140
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0xc8

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 2

    .line 6117
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onActivityResultReceived:I

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 6136
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>()V

    sget-object v1, Lorg/telegram/messenger/BuildVars;->GOOGLE_AUTH_CLIENT_ID:Ljava/lang/String;

    .line 6137
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 6138
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 6139
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 6136
    invoke-static {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    .line 6140
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;)V
    .locals 2

    .line 6182
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 6183
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    .line 6184
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$auth_SentCode;->type:Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;

    instance-of p4, p3, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCodeTypeEmailCode;

    if-eqz p4, :cond_0

    .line 6185
    iget-object p4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    const-string v0, "emailPattern"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p3, Lorg/telegram/tgnet/TLRPC$auth_SentCodeType;->email_pattern:Ljava/lang/String;

    .line 6186
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resetRequestPending:Z

    .line 6188
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p3, p2, p1}, Lorg/telegram/ui/LoginActivity;->access$8500(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    .line 6189
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string p2, "PHONE_CODE_EXPIRED"

    .line 6190
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 6191
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 6192
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, v1, p3, v1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 6193
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->CodeExpired:I

    const-string p4, "CodeExpired"

    invoke-static {p4, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6195
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$15100(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p3, v0, p4, p2}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$5(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 6181
    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda23;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 6173
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6174
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->phone:Ljava/lang/String;

    const-string v0, "phone"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6175
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->emailPhone:Ljava/lang/String;

    const-string v0, "ephone"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6176
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestPhone:Ljava/lang/String;

    const-string v0, "phoneFormated"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6178
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;-><init>()V

    .line 6179
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestPhone:Ljava/lang/String;

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;->phone_number:Ljava/lang/String;

    .line 6180
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->phoneHash:Ljava/lang/String;

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;->phone_code_hash:Ljava/lang/String;

    .line 6181
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;)V

    const/16 p1, 0xa

    invoke-virtual {v0, p2, v1, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private synthetic lambda$new$7(Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    .line 6158
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    const-string v0, "emailPattern"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6159
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0x2a

    .line 6160
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eq v2, p2, :cond_0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    if-eq p2, v4, :cond_0

    .line 6162
    new-instance v4, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v4}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 6163
    iget v5, v4, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 6164
    iput v2, v4, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    add-int/2addr p2, v1

    .line 6165
    iput p2, v4, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    .line 6166
    new-instance v5, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v5, v4}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-virtual {v0, v5, v2, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6169
    :cond_0
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lorg/telegram/messenger/R$string;->LoginEmailResetTitle:I

    .line 6170
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->LoginEmailResetMessage:I

    .line 6171
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object v0, v2, v3

    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resetAvailablePeriod:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->getTimePattern(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    invoke-static {p2, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatSpannable(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->LoginEmailResetButton:I

    .line 6172
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 6200
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 6201
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private synthetic lambda$new$8(Landroid/view/View;)V
    .locals 0

    .line 6215
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestEmailReset()V

    return-void
.end method

.method private synthetic lambda$new$9(Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;)V
    .locals 1

    .line 6245
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    if-eqz v0, :cond_0

    .line 6246
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    .line 6247
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p3, p2, p1}, Lorg/telegram/ui/LoginActivity;->access$8500(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 6248
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 6249
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$15000(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p3, p2, p4, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onNextPressed$17(Landroid/os/Bundle;)V
    .locals 4

    .line 6663
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$18(Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;)V
    .locals 2

    .line 6666
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_account_emailVerified;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 6667
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 6668
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$14100(Lorg/telegram/ui/LoginActivity;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 6669
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_account_emailVerifiedLogin;

    if-eqz v0, :cond_1

    .line 6670
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_account_emailVerifiedLogin;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_account_emailVerifiedLogin;->sent_code:Lorg/telegram/tgnet/TLRPC$auth_SentCode;

    invoke-static {v0, p2, p1}, Lorg/telegram/ui/LoginActivity;->access$8500(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    goto :goto_0

    .line 6671
    :cond_1
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    if-eqz p2, :cond_2

    .line 6672
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    invoke-static {p2, p1}, Lorg/telegram/ui/LoginActivity;->access$8400(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$onNextPressed$19(Landroid/os/Bundle;)V
    .locals 4

    .line 6696
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$20(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 6680
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->nextPressed:Z

    .line 6681
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/LoginActivity;->access$2700(Lorg/telegram/ui/LoginActivity;ZZ)V

    if-nez p1, :cond_1

    .line 6683
    check-cast p2, Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 6684
    invoke-static {p2, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/TLRPC$account_Password;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6685
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    const-string p3, "UpdateAppAlert"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 6688
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6689
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {p2}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 6690
    invoke-virtual {p2, v0}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 6691
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    const-string v0, "password"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6692
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestPhone:Ljava/lang/String;

    const-string v0, "phoneFormated"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6693
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->phoneHash:Ljava/lang/String;

    const-string v0, "phoneHash"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "code"

    .line 6694
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6696
    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda17;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->animateSuccess(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6698
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p3, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onNextPressed$21(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 6679
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$22(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 5

    .line 6645
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Z)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    .line 6647
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->nextPressed:Z

    .line 6648
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$2700(Lorg/telegram/ui/LoginActivity;ZZ)V

    .line 6650
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6651
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->phone:Ljava/lang/String;

    const-string v2, "phone"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6652
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->emailPhone:Ljava/lang/String;

    const-string v2, "ephone"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6653
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestPhone:Ljava/lang/String;

    const-string v2, "phoneFormated"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6654
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->phoneHash:Ljava/lang/String;

    const-string v2, "phoneHash"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "code"

    .line 6655
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6658
    instance-of p2, p3, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;

    if-eqz p2, :cond_1

    .line 6659
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;

    .line 6660
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;->terms_of_service:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    if-eqz p2, :cond_0

    .line 6661
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p3, p2}, Lorg/telegram/ui/LoginActivity;->access$8302(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    .line 6663
    :cond_0
    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda18;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->animateSuccess(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 6665
    :cond_1
    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda20;

    invoke-direct {p2, p0, p3, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->animateSuccess(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 6677
    :cond_2
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "SESSION_PASSWORD_NEEDED"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 6678
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;-><init>()V

    .line 6679
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p3}, Lorg/telegram/ui/LoginActivity;->access$14700(Lorg/telegram/ui/LoginActivity;)I

    move-result p3

    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Ljava/lang/String;)V

    const/16 p2, 0xa

    invoke-virtual {p3, p1, v1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_4

    .line 6702
    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->nextPressed:Z

    .line 6703
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$2700(Lorg/telegram/ui/LoginActivity;ZZ)V

    .line 6705
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "EMAIL_ADDRESS_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 6706
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->EmailAddressInvalid:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6707
    :cond_4
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_NUMBER_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 6708
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    const-string v2, "InvalidPhoneNumber"

    invoke-static {v2, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6709
    :cond_5
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "CODE_EMPTY"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "CODE_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "EMAIL_CODE_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto/16 :goto_1

    .line 6712
    :cond_6
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "EMAIL_TOKEN_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 6713
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->EmailTokenInvalid:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6714
    :cond_7
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "EMAIL_VERIFY_EXPIRED"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 6715
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 6716
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1, v1, v2, v0, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 6717
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->CodeExpired:I

    const-string v2, "CodeExpired"

    invoke-static {v2, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6718
    :cond_8
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "FLOOD_WAIT"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 6719
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->FloodWait:I

    const-string v2, "FloodWait"

    invoke-static {v2, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6721
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p3, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    const-string v4, "ErrorOccurred"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v2, v1

    goto :goto_2

    .line 6710
    :cond_a
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->shakeWrongCode()V

    :goto_2
    if-nez v2, :cond_d

    .line 6725
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    if-eqz p1, :cond_c

    move p1, v1

    .line 6726
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p2, p2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length p3, p2

    if-ge p1, p3, :cond_b

    .line 6727
    aget-object p2, p2, p1

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 6729
    :cond_b
    aget-object p1, p2, v1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 6732
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iput-boolean v1, p1, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 6736
    :cond_d
    :goto_4
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->googleAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method

.method private synthetic lambda$onNextPressed$23(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 6644
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onPasscodeError$15()V
    .locals 3

    .line 6565
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 6566
    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 6568
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 6569
    aget-object v0, v0, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$onPasscodeError$16()V
    .locals 3

    .line 6564
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6573
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorColorTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6574
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorColorTimeout:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 6575
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->postedErrorColorTimeout:Z

    return-void
.end method

.method private synthetic lambda$onShow$28()V
    .locals 3

    .line 6795
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 6796
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 6798
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    if-eqz v2, :cond_0

    const-string v2, ""

    .line 6799
    invoke-virtual {v0, v2}, Lorg/telegram/ui/CodeFieldContainer;->setText(Ljava/lang/String;)V

    .line 6800
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestEmailReset$12(Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;)V
    .locals 4

    const/4 v0, 0x0

    .line 6313
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestingEmailReset:Z

    .line 6314
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    if-eqz v1, :cond_0

    .line 6315
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    .line 6316
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p3, p2, p1}, Lorg/telegram/ui/LoginActivity;->access$8500(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    goto/16 :goto_0

    :cond_0
    if-eqz p3, :cond_3

    .line 6317
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string p2, "TASK_ALREADY_EXISTS"

    .line 6318
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 6319
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p3, Lorg/telegram/messenger/R$string;->LoginEmailResetPremiumRequiredTitle:I

    .line 6320
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$string;->LoginEmailResetPremiumRequiredMessage:I

    new-array p4, v1, [Ljava/lang/Object;

    .line 6321
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestPhone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->addNbsp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v0

    invoke-static {p3, p4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/R$string;->OK:I

    .line 6322
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 6323
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    goto :goto_0

    .line 6324
    :cond_1
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v2, "PHONE_CODE_EXPIRED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6325
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 6326
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1, v0, v1, p2, v1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 6327
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->CodeExpired:I

    const-string p4, "CodeExpired"

    invoke-static {p4, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6329
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$14800(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p3, p2, p4, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$requestEmailReset$13(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 6312
    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda22;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setParams$14(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 6434
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$600(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    move-result-object p2

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setEditText(Landroid/widget/EditText;)V

    .line 6435
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$600(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setDispatchBackWhenEmpty(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$shakeWrongCode$26()V
    .locals 3

    .line 6774
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 6775
    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 6777
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 6778
    aget-object v0, v0, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$shakeWrongCode$27()V
    .locals 3

    .line 6773
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private onPasscodeError(Z)V
    .locals 5

    .line 6548
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6552
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 6555
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    const-string v4, ""

    .line 6556
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6559
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, p1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 6560
    invoke-virtual {v3, v4}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6562
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 6563
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestEmailReset()V
    .locals 4

    .line 6299
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestingEmailReset:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 6302
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestingEmailReset:Z

    .line 6304
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6305
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->phone:Ljava/lang/String;

    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6306
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->emailPhone:Ljava/lang/String;

    const-string v2, "ephone"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6307
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestPhone:Ljava/lang/String;

    const-string v2, "phoneFormated"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6309
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;-><init>()V

    .line 6310
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestPhone:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;->phone_number:Ljava/lang/String;

    .line 6311
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->phoneHash:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;->phone_code_hash:Ljava/lang/String;

    .line 6312
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda27;

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_resetLoginEmail;)V

    const/16 v0, 0xa

    invoke-virtual {v2, v1, v3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private shakeWrongCode()V
    .locals 5

    .line 6760
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    move v1, v0

    .line 6763
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v1, v3, :cond_0

    .line 6764
    aget-object v2, v2, v1

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6765
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v2, v2, v1

    invoke-virtual {v2, v4}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6767
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendFrameLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 6768
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 6769
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->cantAccessEmailFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v1, v0, v4, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 6771
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 6772
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/high16 v1, 0x41200000    # 10.0f

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;FLjava/lang/Runnable;)V

    .line 6782
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorColorTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6783
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorColorTimeout:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6784
    iput-boolean v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->postedErrorColorTimeout:Z

    return-void
.end method

.method private showResendCodeView(Z)V
    .locals 9

    .line 6357
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    .line 6358
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->cantAccessEmailFrameLayout:Landroid/widget/FrameLayout;

    if-nez p1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->isSetup:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    .line 6360
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->loginOrView:Lorg/telegram/ui/Components/LoginOrView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 6361
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->loginOrView:Lorg/telegram/ui/Components/LoginOrView;

    const/4 v2, -0x1

    const/16 v3, 0x10

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    move v8, v1

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6362
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->loginOrView:Lorg/telegram/ui/Components/LoginOrView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method private updateResetPendingDate()V
    .locals 9

    .line 6526
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resetPendingDate:I

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 6527
    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resetPendingDate:I

    const/4 v2, 0x0

    if-lez v1, :cond_2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 6533
    :cond_0
    sget v1, Lorg/telegram/messenger/R$string;->LoginEmailResetInTime:I

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->getTimePatternForTimer(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6534
    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const/16 v2, 0x2a

    .line 6535
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v6, v0, :cond_1

    const/4 v2, -0x1

    if-eq v6, v2, :cond_1

    if-eq v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    const-string v7, ""

    .line 6537
    invoke-virtual {v1, v0, v2, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v6, 0x1

    .line 6538
    invoke-virtual {v1, v6, v2, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6539
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    const-string v8, "windowBackgroundWhiteBlueText4"

    invoke-virtual {v7, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v2, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sub-int/2addr v0, v3

    const/16 v3, 0x21

    invoke-virtual {v1, v2, v6, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6542
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->emailResetInView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6544
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->updateResetPendingDateCallback:Ljava/lang/Runnable;

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 6528
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->emailResetInView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6529
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->emailResetInView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->LoginEmailResetPleaseWait:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6530
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .line 6378
    sget v0, Lorg/telegram/messenger/R$string;->VerificationCode:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCustomKeyboard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needBackButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 6351
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 6352
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorColorTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6353
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHide()V
    .locals 1

    .line 6474
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onHide()V

    .line 6476
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resetPendingDate:I

    if-eqz v0, :cond_0

    .line 6477
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->updateResetPendingDateCallback:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onNextPressed(Ljava/lang/String;)V
    .locals 6

    .line 6581
    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->nextPressed:Z

    if-eqz p1, :cond_0

    return-void

    .line 6584
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeTimeout:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 6586
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 6587
    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 6588
    array-length v3, p1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p1, v4

    .line 6589
    invoke-virtual {v5, v1}, Lorg/telegram/ui/CodeNumberField;->animateFocusedProgress(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6593
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object p1

    .line 6594
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->googleAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez v3, :cond_2

    .line 6595
    invoke-direct {p0, v2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->onPasscodeError(Z)V

    return-void

    .line 6598
    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->nextPressed:Z

    .line 6599
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v3, v2}, Lorg/telegram/ui/LoginActivity;->access$7300(Lorg/telegram/ui/LoginActivity;I)V

    .line 6602
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 6603
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_account_verifyEmail;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_account_verifyEmail;-><init>()V

    .line 6604
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginChange;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginChange;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_verifyEmail;->purpose:Lorg/telegram/tgnet/TLRPC$EmailVerifyPurpose;

    .line 6605
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationCode;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationCode;-><init>()V

    .line 6606
    iput-object p1, v4, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationCode;->code:Ljava/lang/String;

    .line 6607
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_verifyEmail;->verification:Lorg/telegram/tgnet/TLRPC$EmailVerification;

    goto :goto_2

    .line 6609
    :cond_3
    iget-boolean v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->isFromSetup:Z

    if-eqz v3, :cond_4

    .line 6610
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_account_verifyEmail;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_account_verifyEmail;-><init>()V

    .line 6611
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginSetup;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginSetup;-><init>()V

    .line 6612
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestPhone:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginSetup;->phone_number:Ljava/lang/String;

    .line 6613
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->phoneHash:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginSetup;->phone_code_hash:Ljava/lang/String;

    .line 6614
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_verifyEmail;->purpose:Lorg/telegram/tgnet/TLRPC$EmailVerifyPurpose;

    .line 6615
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationCode;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationCode;-><init>()V

    .line 6616
    iput-object p1, v4, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationCode;->code:Ljava/lang/String;

    .line 6617
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_account_verifyEmail;->verification:Lorg/telegram/tgnet/TLRPC$EmailVerification;

    goto :goto_2

    .line 6620
    :cond_4
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;-><init>()V

    .line 6621
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestPhone:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_number:Ljava/lang/String;

    .line 6622
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->phoneHash:Ljava/lang/String;

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code_hash:Ljava/lang/String;

    .line 6623
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->googleAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz v4, :cond_5

    .line 6624
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationGoogle;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationGoogle;-><init>()V

    .line 6625
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->googleAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationGoogle;->token:Ljava/lang/String;

    .line 6626
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->email_verification:Lorg/telegram/tgnet/TLRPC$EmailVerification;

    goto :goto_1

    .line 6628
    :cond_5
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationCode;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationCode;-><init>()V

    .line 6629
    iput-object p1, v4, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationCode;->code:Ljava/lang/String;

    .line 6630
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->email_verification:Lorg/telegram/tgnet/TLRPC$EmailVerification;

    .line 6632
    :goto_1
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->flags:I

    .line 6636
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iput-boolean v0, v4, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 6637
    iget-object v0, v4, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    if-eqz v0, :cond_6

    .line 6638
    array-length v4, v0

    :goto_3
    if-ge v2, v4, :cond_6

    aget-object v5, v0, v2

    .line 6639
    invoke-virtual {v5, v1}, Lorg/telegram/ui/CodeNumberField;->animateFocusedProgress(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 6644
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$14600(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-virtual {v0, v3, v1, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method public onShow()V
    .locals 3

    .line 6789
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 6790
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resetRequestPending:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6791
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resetRequestPending:Z

    return-void

    .line 6794
    :cond_0
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    .line 6802
    invoke-static {}, Lorg/telegram/ui/LoginActivity;->access$7800()I

    move-result v1

    int-to-long v1, v1

    .line 6794
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "emailcode_params"

    .line 6818
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 6820
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->setParams(Landroid/os/Bundle;Z)V

    :cond_0
    const-string v0, "emailcode_code"

    .line 6822
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6824
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/CodeFieldContainer;->setText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .locals 2

    .line 6807
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6808
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "emailcode_code"

    .line 6809
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6811
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "emailcode_params"

    .line 6812
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public setParams(Landroid/os/Bundle;Z)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 6387
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    const-string v0, "phoneFormated"

    .line 6388
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestPhone:Ljava/lang/String;

    .line 6389
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    const-string v1, "phoneHash"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->phoneHash:Ljava/lang/String;

    .line 6390
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->phone:Ljava/lang/String;

    .line 6391
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    const-string v1, "ephone"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->emailPhone:Ljava/lang/String;

    .line 6392
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    const-string v1, "setup"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->isFromSetup:Z

    .line 6393
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    const-string v1, "length"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->length:I

    .line 6394
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    const-string v1, "email"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->email:Ljava/lang/String;

    .line 6395
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    const-string v1, "resetAvailablePeriod"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resetAvailablePeriod:I

    .line 6396
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    const-string v1, "resetPendingDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resetPendingDate:I

    .line 6398
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    const/4 v1, 0x3

    const/16 v2, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v1, :cond_1

    .line 6399
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->confirmTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->CheckYourNewEmailSubtitle:I

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->email:Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6400
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->cantAccessEmailFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v0, v5, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    goto :goto_2

    .line 6401
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->isSetup:Z

    if-eqz v0, :cond_2

    .line 6402
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->confirmTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->VerificationCodeSubtitle:I

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->email:Ljava/lang/String;

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6403
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->cantAccessEmailFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v0, v5, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    goto :goto_2

    .line 6405
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->cantAccessEmailFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v0, v4, v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 6407
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->cantAccessEmailView:Landroid/widget/TextView;

    iget v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resetPendingDate:I

    if-nez v3, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6408
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->emailResetInView:Landroid/widget/TextView;

    iget v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resetPendingDate:I

    if-eqz v3, :cond_4

    move v3, v5

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6409
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resetPendingDate:I

    if-eqz v0, :cond_5

    .line 6410
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->updateResetPendingDate()V

    .line 6414
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->length:I

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/CodeFieldContainer;->setNumbersCount(II)V

    .line 6415
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v0

    move v6, v5

    :goto_3
    if-ge v6, v3, :cond_8

    aget-object v7, v0, v6

    .line 6416
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->hasCustomKeyboard()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v8}, Lorg/telegram/ui/LoginActivity;->access$700(Lorg/telegram/ui/LoginActivity;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    move v8, v5

    goto :goto_5

    :cond_7
    :goto_4
    move v8, v4

    :goto_5
    invoke-virtual {v7, v8}, Lorg/telegram/ui/CodeNumberField;->setShowSoftInputOnFocusCompat(Z)V

    .line 6417
    new-instance v8, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$7;

    invoke-direct {v8, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$7;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6432
    new-instance v8, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda5;

    invoke-direct {v8, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 6439
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const-string v3, ""

    invoke-virtual {v0, v3}, Lorg/telegram/ui/CodeFieldContainer;->setText(Ljava/lang/String;)V

    .line 6441
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->isFromSetup:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    if-eq v0, v1, :cond_a

    .line 6442
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    const-string v1, "emailPattern"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6443
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v3, 0x2a

    .line 6444
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v6, v0, :cond_9

    const/4 v3, -0x1

    if-eq v6, v3, :cond_9

    if-eq v0, v3, :cond_9

    .line 6446
    new-instance v3, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v3}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 6447
    iget v7, v3, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit16 v7, v7, 0x100

    iput v7, v3, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 6448
    iput v6, v3, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    add-int/2addr v0, v4

    .line 6449
    iput v0, v3, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    .line 6450
    new-instance v7, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v7, v3}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-virtual {v1, v7, v6, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6453
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->confirmTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->CheckYourEmailSubtitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/CharSequence;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->formatSpannable(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    const-string v0, "googleSignInAllowed"

    .line 6456
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;->INSTANCE:Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/PushListenerController$GooglePushListenerServiceProvider;->hasServices()Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v5

    .line 6457
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->loginOrView:Lorg/telegram/ui/Components/LoginOrView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6458
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->signInWithGoogleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6460
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$4100(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z

    .line 6461
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    if-nez p2, :cond_c

    const-string p2, "nextType"

    .line 6463
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 6464
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeTimeout:Ljava/lang/Runnable;

    const-string v0, "timeout"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 6467
    :cond_c
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resetPendingDate:I

    if-eqz p1, :cond_d

    .line 6468
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->updateResetPendingDateCallback:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_d
    return-void
.end method

.method public updateColors()V
    .locals 4

    .line 6337
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->titleView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6338
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->confirmTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6339
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->signInWithGoogleView:Landroid/widget/TextView;

    const-string v2, "windowBackgroundWhiteBlueText4"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6340
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->loginOrView:Lorg/telegram/ui/Components/LoginOrView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoginOrView;->updateColors()V

    .line 6341
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6342
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->cantAccessEmailView:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6343
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->emailResetInView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6344
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->wrongCodeView:Landroid/widget/TextView;

    const-string v1, "dialogTextRed"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6346
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
