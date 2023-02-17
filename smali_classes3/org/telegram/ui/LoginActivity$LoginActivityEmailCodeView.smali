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
.field private codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

.field private confirmTextView:Landroid/widget/TextView;

.field private currentParams:Landroid/os/Bundle;

.field private email:Ljava/lang/String;

.field private emailPhone:Ljava/lang/String;

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

.field private resendCodeTimeout:Ljava/lang/Runnable;

.field private resendCodeView:Landroid/widget/TextView;

.field private resendFrameLayout:Landroid/widget/FrameLayout;

.field private signInWithGoogleView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field private titleView:Landroid/widget/TextView;

.field private wrongCodeView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$8oDHcQHVff_bx-LpIgWr4v_JkcI(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$AZ3p9ckaPpSq2AOUDGGq6tEc8_g(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$onNextPressed$13(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FmIbmDwhHc-8rrvPhA4joqfSym0(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$animateSuccess$17(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$H7adtpkU9R5NS0EPS9Jo1q9VOAU(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$new$4(Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;)V

    return-void
.end method

.method public static synthetic $r8$lambda$K_Vvo1hZSXo4IBGSSPtAfr5RAJM(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$onShow$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$MY6GnPG6Tliw6iIgI_I0OPdI4L4(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$onNextPressed$12(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RzpSGzuLlWKSKRadWHHpZFsb4Vo(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$onNextPressed$16(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SSDz8LgXm-Yy83xpmWqsWuuYDGU(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$setParams$7(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$SaiJDTZetkSpMFMJ6EQDeLFcrYg(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$onNextPressed$15(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TYXXhbgCaszX__ix7IzPVvPFLXs(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$onNextPressed$11(Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W2KbBjfWNIV26FVIn3lZ9g6mw7k(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$animateSuccess$18(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WD3gpLXXldxyDiq-BQdfSAZvKhs(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$onNextPressed$10(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WGNxOBZN-Hmc3oaYwWhdIpe4P5o(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$shakeWrongCode$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$XD0Yq0vXGq4qo6mbHabFMsc7Tac(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$new$5(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZEGskOn1zFNzmVYY87eqRa1cuMU(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dN4gHqMjBDkdsJJR_i1BWQ-z8aA(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$shakeWrongCode$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$fe1U7w1ITTyn9KNIN96L_dqieeA(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$new$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s9fjsDiesaoirnt_P5GhjomqPkM(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$onNextPressed$14(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sMfoZ2sYnNER_-rq_M20uIV7ZtY(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$onPasscodeError$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$vEsQYdFpGQw9jPfbel0qOC5JX6g(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$onPasscodeError$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$wtY20W-DthX7RJCor1m26C7NSBA(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$new$2(Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zNIqRlH8Z_nVZl5coyJK9sLHlcA(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;Z)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 5773
    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 5774
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    .line 5761
    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda10;

    invoke-direct {v4, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    iput-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorColorTimeout:Ljava/lang/Runnable;

    .line 5771
    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda4;

    invoke-direct {v4, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    iput-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeTimeout:Ljava/lang/Runnable;

    .line 5775
    iput-boolean v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->isSetup:Z

    const/4 v4, 0x1

    .line 5777
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5779
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 5780
    new-instance v6, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v6, v2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v6, 0x3

    const/16 v7, 0x78

    if-eqz v3, :cond_1

    .line 5781
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v8

    if-ne v8, v6, :cond_0

    goto :goto_0

    .line 5784
    :cond_0
    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v9, Lorg/telegram/messenger/R$raw;->email_setup_heart:I

    invoke-virtual {v8, v9, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    goto :goto_1

    .line 5782
    :cond_1
    :goto_0
    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    sget v9, Lorg/telegram/messenger/R$raw;->email_check_inbox:I

    invoke-virtual {v8, v9, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 5786
    :goto_1
    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 5787
    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v7, v7, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5788
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v7

    if-nez v7, :cond_3

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-le v8, v7, :cond_2

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/16 v7, 0x8

    :goto_3
    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v7, -0x1

    const/4 v8, -0x2

    .line 5789
    invoke-static {v7, v8, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v5, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5791
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->titleView:Landroid/widget/TextView;

    const/high16 v10, 0x41900000    # 18.0f

    .line 5792
    invoke-virtual {v5, v4, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5793
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->titleView:Landroid/widget/TextView;

    const-string v10, "fonts/rmedium.ttf"

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5794
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->titleView:Landroid/widget/TextView;

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v10

    if-ne v10, v6, :cond_4

    sget v6, Lorg/telegram/messenger/R$string;->CheckYourNewEmail:I

    goto :goto_4

    :cond_4
    if-eqz v3, :cond_5

    sget v6, Lorg/telegram/messenger/R$string;->VerificationCode:I

    goto :goto_4

    :cond_5
    sget v6, Lorg/telegram/messenger/R$string;->CheckYourEmail:I

    :goto_4
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5795
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->titleView:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 5796
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->titleView:Landroid/widget/TextView;

    const/4 v10, 0x2

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v5, v11, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 5797
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->titleView:Landroid/widget/TextView;

    const/4 v13, -0x1

    const/4 v14, -0x2

    const/4 v15, 0x1

    const/16 v16, 0x20

    const/16 v17, 0x10

    const/16 v18, 0x20

    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v5, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5799
    new-instance v5, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-direct {v5, v2, v9}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;-><init>(Landroid/content/Context;Z)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->confirmTextView:Landroid/widget/TextView;

    const/high16 v11, 0x41600000    # 14.0f

    .line 5800
    invoke-virtual {v5, v4, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5801
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->confirmTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 5802
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->confirmTextView:Landroid/widget/TextView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v5, v13, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 5803
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->confirmTextView:Landroid/widget/TextView;

    const/4 v13, -0x2

    const/16 v16, 0x18

    const/16 v17, 0x8

    const/16 v18, 0x18

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v5, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5805
    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$1;

    invoke-direct {v5, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/4 v13, -0x2

    const/16 v14, 0x2a

    const/16 v16, 0x0

    if-eqz v3, :cond_6

    const/16 v17, 0x30

    goto :goto_5

    :cond_6
    const/16 v17, 0x20

    :goto_5
    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 5812
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v0, v5, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5814
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->signInWithGoogleView:Landroid/widget/TextView;

    .line 5815
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 5816
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->signInWithGoogleView:Landroid/widget/TextView;

    invoke-virtual {v5, v4, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5817
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->signInWithGoogleView:Landroid/widget/TextView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v5, v13, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 5818
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->signInWithGoogleView:Landroid/widget/TextView;

    const/16 v13, 0x10

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v5, v14, v15, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 5819
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->signInWithGoogleView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 5821
    new-instance v5, Landroid/text/SpannableStringBuilder;

    const-string v7, "d "

    invoke-direct {v5, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5822
    sget v7, Lorg/telegram/messenger/R$drawable;->googleg_standard_color_18:I

    invoke-static {v2, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/16 v8, 0x9

    .line 5823
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    const/16 v14, 0x12

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    const/16 v15, 0x1b

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-virtual {v7, v9, v8, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5824
    new-instance v8, Landroid/text/style/ImageSpan;

    invoke-direct {v8, v7, v9}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 v7, 0x21

    invoke-virtual {v5, v8, v9, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5825
    new-instance v8, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$2;

    invoke-direct {v8, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v5, v8, v4, v10, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5834
    sget v7, Lorg/telegram/messenger/R$string;->SignInWithGoogle:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5835
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->signInWithGoogleView:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5837
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->signInWithGoogleView:Landroid/widget/TextView;

    new-instance v7, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5864
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    .line 5865
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 5866
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    invoke-virtual {v5, v4, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5867
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v7, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 5868
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-virtual {v5, v7, v8, v11, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 5869
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 5870
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->ResendCode:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5871
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    new-instance v7, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5898
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    invoke-static {v5, v9, v12, v9}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 5900
    new-instance v5, Lorg/telegram/ui/Components/LoginOrView;

    invoke-direct {v5, v2}, Lorg/telegram/ui/Components/LoginOrView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->loginOrView:Lorg/telegram/ui/Components/LoginOrView;

    .line 5901
    invoke-static {v5}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    .line 5903
    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$4;

    invoke-direct {v5, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$4;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 5909
    sget v1, Lorg/telegram/messenger/R$anim;->text_in:I

    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 5910
    sget-object v5, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5911
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 5913
    sget v1, Lorg/telegram/messenger/R$anim;->text_out:I

    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 5914
    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5915
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 5917
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendFrameLayout:Landroid/widget/FrameLayout;

    .line 5918
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    const/4 v7, -0x2

    invoke-static {v7, v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5919
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    .line 5921
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->wrongCodeView:Landroid/widget/TextView;

    .line 5922
    sget v5, Lorg/telegram/messenger/R$string;->WrongCode:I

    const-string v6, "WrongCode"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5923
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->wrongCodeView:Landroid/widget/TextView;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 5924
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->wrongCodeView:Landroid/widget/TextView;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 5925
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->wrongCodeView:Landroid/widget/TextView;

    const/16 v4, 0x31

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 5926
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->wrongCodeView:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1, v9, v5, v9, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 5927
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->wrongCodeView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    .line 5929
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    if-eqz v3, :cond_7

    .line 5931
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x50

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x20

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 5933
    :cond_7
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x30

    const/16 v20, 0x0

    const/16 v21, 0x8

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5934
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->loginOrView:Lorg/telegram/ui/Components/LoginOrView;

    const/16 v18, 0x10

    const/16 v19, 0x11

    const/16 v21, 0x0

    const/16 v23, 0x10

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5935
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->signInWithGoogleView:Landroid/widget/TextView;

    const/16 v18, -0x2

    const/16 v19, 0x50

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_6
    const/4 v2, -0x1

    .line 5937
    invoke-static {v2, v9, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$13800(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)Z
    .locals 0

    .line 5736
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->postedErrorColorTimeout:Z

    return p0
.end method

.method static synthetic access$13900(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)Ljava/lang/Runnable;
    .locals 0

    .line 5736
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorColorTimeout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$14402(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 0

    .line 5736
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->googleAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-object p1
.end method

.method private animateSuccess(Ljava/lang/Runnable;)V
    .locals 7

    .line 6242
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->googleAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz v0, :cond_0

    .line 6243
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6246
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v2

    const-wide/16 v3, 0x4b

    if-ge v0, v2, :cond_1

    .line 6248
    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;I)V

    int-to-long v5, v0

    mul-long v5, v5, v3

    invoke-virtual {v1, v2, v5, v6}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6250
    :cond_1
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length p1, p1

    int-to-long v5, p1

    mul-long v5, v5, v3

    const-wide/16 v2, 0x190

    add-long/2addr v5, v2

    invoke-virtual {v1, v0, v5, v6}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$animateSuccess$17(I)V
    .locals 1

    .line 6248
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object p1, v0, p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lorg/telegram/ui/CodeNumberField;->animateSuccessProgress(F)V

    return-void
.end method

.method private synthetic lambda$animateSuccess$18(Ljava/lang/Runnable;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6251
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 6252
    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/CodeNumberField;->animateSuccessProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6254
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 6255
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iput-boolean v0, p1, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    const/4 v0, 0x0

    .line 5762
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->postedErrorColorTimeout:Z

    .line 5763
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 5764
    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5767
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendFrameLayout:Landroid/widget/FrameLayout;

    if-eq v0, v1, :cond_1

    .line 5768
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    const/4 v0, 0x1

    .line 5771
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->showResendCodeView(Z)V

    return-void
.end method

.method private synthetic lambda$new$2(Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 5861
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

    .line 5838
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    sget v1, Lorg/telegram/messenger/NotificationCenter;->onActivityResultReceived:I

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 5857
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>()V

    sget-object v1, Lorg/telegram/messenger/BuildVars;->GOOGLE_AUTH_CLIENT_ID:Ljava/lang/String;

    .line 5858
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 5859
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 5860
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 5857
    invoke-static {p1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object p1

    .line 5861
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;)V
    .locals 1

    .line 5889
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    if-eqz v0, :cond_0

    .line 5890
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    .line 5891
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p3, p2, p1}, Lorg/telegram/ui/LoginActivity;->access$8500(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 5892
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 5893
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$14300(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p3, p2, p4, v0}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$5(Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 5888
    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda16;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$6(Landroid/view/View;)V
    .locals 3

    .line 5872
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

    .line 5876
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->showResendCodeView(Z)V

    .line 5878
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;-><init>()V

    .line 5879
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestPhone:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_number:Ljava/lang/String;

    .line 5880
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->phoneHash:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_code_hash:Ljava/lang/String;

    .line 5882
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5883
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->phone:Ljava/lang/String;

    const-string v2, "phone"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5884
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->emailPhone:Ljava/lang/String;

    const-string v2, "ephone"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5885
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestPhone:Ljava/lang/String;

    const-string v2, "phoneFormated"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5887
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$14200(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;)V

    const/16 v0, 0xa

    invoke-virtual {v1, p1, v2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onNextPressed$10(Landroid/os/Bundle;)V
    .locals 4

    .line 6166
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$11(Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;)V
    .locals 2

    .line 6169
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_account_emailVerified;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 6170
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 6171
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$13500(Lorg/telegram/ui/LoginActivity;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 6172
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_account_emailVerifiedLogin;

    if-eqz v0, :cond_1

    .line 6173
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_account_emailVerifiedLogin;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_account_emailVerifiedLogin;->sent_code:Lorg/telegram/tgnet/TLRPC$auth_SentCode;

    invoke-static {v0, p2, p1}, Lorg/telegram/ui/LoginActivity;->access$8500(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    goto :goto_0

    .line 6174
    :cond_1
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    if-eqz p2, :cond_2

    .line 6175
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    invoke-static {p2, p1}, Lorg/telegram/ui/LoginActivity;->access$8400(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$onNextPressed$12(Landroid/os/Bundle;)V
    .locals 4

    .line 6199
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$13(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 6183
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->nextPressed:Z

    .line 6184
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/LoginActivity;->access$2700(Lorg/telegram/ui/LoginActivity;ZZ)V

    if-nez p1, :cond_1

    .line 6186
    check-cast p2, Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 6187
    invoke-static {p2, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/TLRPC$account_Password;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6188
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    const-string p3, "UpdateAppAlert"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 6191
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6192
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {p2}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 6193
    invoke-virtual {p2, v0}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 6194
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    const-string v0, "password"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6195
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestPhone:Ljava/lang/String;

    const-string v0, "phoneFormated"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6196
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->phoneHash:Ljava/lang/String;

    const-string v0, "phoneHash"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "code"

    .line 6197
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6199
    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->animateSuccess(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6201
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

.method private synthetic lambda$onNextPressed$14(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 6182
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$15(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 5

    .line 6148
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Z)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    .line 6150
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->nextPressed:Z

    .line 6151
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$2700(Lorg/telegram/ui/LoginActivity;ZZ)V

    .line 6153
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6154
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->phone:Ljava/lang/String;

    const-string v2, "phone"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6155
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->emailPhone:Ljava/lang/String;

    const-string v2, "ephone"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6156
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestPhone:Ljava/lang/String;

    const-string v2, "phoneFormated"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6157
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->phoneHash:Ljava/lang/String;

    const-string v2, "phoneHash"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "code"

    .line 6158
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6161
    instance-of p2, p3, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;

    if-eqz p2, :cond_1

    .line 6162
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;

    .line 6163
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;->terms_of_service:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    if-eqz p2, :cond_0

    .line 6164
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p3, p2}, Lorg/telegram/ui/LoginActivity;->access$8302(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    .line 6166
    :cond_0
    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda13;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->animateSuccess(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 6168
    :cond_1
    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda15;

    invoke-direct {p2, p0, p3, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lorg/telegram/tgnet/TLObject;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->animateSuccess(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 6180
    :cond_2
    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "SESSION_PASSWORD_NEEDED"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 6181
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;-><init>()V

    .line 6182
    iget-object p3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p3}, Lorg/telegram/ui/LoginActivity;->access$14100(Lorg/telegram/ui/LoginActivity;)I

    move-result p3

    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Ljava/lang/String;)V

    const/16 p2, 0xa

    invoke-virtual {p3, p1, v1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_4

    .line 6205
    :cond_3
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->nextPressed:Z

    .line 6206
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2, v1, v2}, Lorg/telegram/ui/LoginActivity;->access$2700(Lorg/telegram/ui/LoginActivity;ZZ)V

    .line 6208
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "EMAIL_ADDRESS_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 6209
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->EmailAddressInvalid:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6210
    :cond_4
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_NUMBER_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 6211
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

    .line 6212
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

    .line 6215
    :cond_6
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "EMAIL_TOKEN_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 6216
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->EmailTokenInvalid:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6217
    :cond_7
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "EMAIL_VERIFY_EXPIRED"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 6218
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/SlideView;->onBackPressed(Z)Z

    .line 6219
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1, v1, v2, v0, v2}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 6220
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

    .line 6221
    :cond_8
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "FLOOD_WAIT"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 6222
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

    .line 6224
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
    const/4 v2, 0x0

    goto :goto_2

    .line 6213
    :cond_a
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->shakeWrongCode()V

    :goto_2
    if-nez v2, :cond_c

    const/4 p1, 0x0

    .line 6228
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p3, p2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, p3

    if-ge p1, v2, :cond_b

    .line 6229
    aget-object p2, p3, p1

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 6232
    :cond_b
    iput-boolean v1, p2, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 6233
    aget-object p1, p3, v1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 6237
    :cond_c
    :goto_4
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->googleAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    return-void
.end method

.method private synthetic lambda$onNextPressed$16(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 6147
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onPasscodeError$8()V
    .locals 3

    .line 6072
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 6073
    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 6075
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 6076
    aget-object v0, v0, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$onPasscodeError$9()V
    .locals 3

    .line 6071
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6080
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorColorTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6081
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorColorTimeout:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 6082
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->postedErrorColorTimeout:Z

    return-void
.end method

.method private synthetic lambda$onShow$21()V
    .locals 3

    .line 6291
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 6292
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 6294
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    if-eqz v0, :cond_0

    const-string v2, ""

    .line 6295
    invoke-virtual {v0, v2}, Lorg/telegram/ui/CodeFieldContainer;->setText(Ljava/lang/String;)V

    .line 6296
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 6299
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeTimeout:Ljava/lang/Runnable;

    const-wide/32 v1, 0xea60

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$setParams$7(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 6024
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$600(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    move-result-object p2

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setEditText(Landroid/widget/EditText;)V

    .line 6025
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$600(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setDispatchBackWhenEmpty(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$shakeWrongCode$19()V
    .locals 3

    .line 6274
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 6275
    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 6277
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 6278
    aget-object v0, v0, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$shakeWrongCode$20()V
    .locals 3

    .line 6273
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private onPasscodeError(Z)V
    .locals 5

    .line 6055
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6059
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 6062
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    const-string v4, ""

    .line 6063
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6066
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 6067
    invoke-virtual {v3, v4}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6069
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 6070
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private shakeWrongCode()V
    .locals 4

    .line 6261
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6264
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 6265
    aget-object v2, v2, v1

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6266
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v2, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6268
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendFrameLayout:Landroid/widget/FrameLayout;

    if-ne v1, v2, :cond_1

    .line 6269
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 6271
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 6272
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/high16 v1, 0x41200000    # 10.0f

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;FLjava/lang/Runnable;)V

    .line 6282
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorColorTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6283
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorColorTimeout:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 6284
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->postedErrorColorTimeout:Z

    return-void
.end method

.method private showResendCodeView(Z)V
    .locals 9

    .line 5960
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;Z)V

    .line 5962
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->loginOrView:Lorg/telegram/ui/Components/LoginOrView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 5963
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->loginOrView:Lorg/telegram/ui/Components/LoginOrView;

    const/4 v2, -0x1

    const/16 v3, 0x10

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    const/16 v8, 0x8

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    const/16 v8, 0x10

    :goto_0
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5964
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->loginOrView:Lorg/telegram/ui/Components/LoginOrView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .line 5980
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

    .line 5954
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 5955
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->errorColorTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5956
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNextPressed(Ljava/lang/String;)V
    .locals 6

    .line 6088
    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->nextPressed:Z

    if-eqz p1, :cond_0

    return-void

    .line 6091
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeTimeout:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 6093
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 6094
    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    aget-object v5, p1, v3

    .line 6095
    invoke-virtual {v5, v4}, Lorg/telegram/ui/CodeNumberField;->animateFocusedProgress(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6098
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object p1

    .line 6099
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->googleAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez v1, :cond_2

    .line 6100
    invoke-direct {p0, v2}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->onPasscodeError(Z)V

    return-void

    .line 6103
    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->nextPressed:Z

    .line 6104
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/LoginActivity;->access$7300(Lorg/telegram/ui/LoginActivity;I)V

    .line 6107
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 6108
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_verifyEmail;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_verifyEmail;-><init>()V

    .line 6109
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginChange;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginChange;-><init>()V

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_verifyEmail;->purpose:Lorg/telegram/tgnet/TLRPC$EmailVerifyPurpose;

    .line 6110
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationCode;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationCode;-><init>()V

    .line 6111
    iput-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationCode;->code:Ljava/lang/String;

    .line 6112
    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_verifyEmail;->verification:Lorg/telegram/tgnet/TLRPC$EmailVerification;

    goto :goto_2

    .line 6114
    :cond_3
    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->isFromSetup:Z

    if-eqz v1, :cond_4

    .line 6115
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_account_verifyEmail;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_account_verifyEmail;-><init>()V

    .line 6116
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginSetup;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginSetup;-><init>()V

    .line 6117
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestPhone:Ljava/lang/String;

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginSetup;->phone_number:Ljava/lang/String;

    .line 6118
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->phoneHash:Ljava/lang/String;

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_emailVerifyPurposeLoginSetup;->phone_code_hash:Ljava/lang/String;

    .line 6119
    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_verifyEmail;->purpose:Lorg/telegram/tgnet/TLRPC$EmailVerifyPurpose;

    .line 6120
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationCode;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationCode;-><init>()V

    .line 6121
    iput-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationCode;->code:Ljava/lang/String;

    .line 6122
    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_account_verifyEmail;->verification:Lorg/telegram/tgnet/TLRPC$EmailVerification;

    goto :goto_2

    .line 6125
    :cond_4
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;-><init>()V

    .line 6126
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestPhone:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_number:Ljava/lang/String;

    .line 6127
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->phoneHash:Ljava/lang/String;

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code_hash:Ljava/lang/String;

    .line 6128
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->googleAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz v3, :cond_5

    .line 6129
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationGoogle;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationGoogle;-><init>()V

    .line 6130
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->googleAccount:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    invoke-virtual {v5}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationGoogle;->token:Ljava/lang/String;

    .line 6131
    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->email_verification:Lorg/telegram/tgnet/TLRPC$EmailVerification;

    goto :goto_1

    .line 6133
    :cond_5
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationCode;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationCode;-><init>()V

    .line 6134
    iput-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_emailVerificationCode;->code:Ljava/lang/String;

    .line 6135
    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->email_verification:Lorg/telegram/tgnet/TLRPC$EmailVerification;

    .line 6137
    :goto_1
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->flags:I

    .line 6141
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iput-boolean v0, v3, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 6142
    iget-object v0, v3, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v0

    :goto_3
    if-ge v2, v3, :cond_6

    aget-object v5, v0, v2

    .line 6143
    invoke-virtual {v5, v4}, Lorg/telegram/ui/CodeNumberField;->animateFocusedProgress(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 6147
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$14000(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method public onShow()V
    .locals 3

    .line 6289
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 6290
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    .line 6300
    invoke-static {}, Lorg/telegram/ui/LoginActivity;->access$7800()I

    move-result v1

    int-to-long v1, v1

    .line 6290
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "emailcode_params"

    .line 6316
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 6318
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->setParams(Landroid/os/Bundle;Z)V

    :cond_0
    const-string v0, "emailcode_code"

    .line 6320
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6322
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/CodeFieldContainer;->setText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .locals 2

    .line 6305
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6306
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "emailcode_code"

    .line 6307
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6309
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "emailcode_params"

    .line 6310
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public setParams(Landroid/os/Bundle;Z)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 5989
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    const-string p2, "phoneFormated"

    .line 5990
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->requestPhone:Ljava/lang/String;

    .line 5991
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    const-string v0, "phoneHash"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->phoneHash:Ljava/lang/String;

    .line 5992
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    const-string v0, "phone"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->phone:Ljava/lang/String;

    .line 5993
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    const-string v0, "ephone"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->emailPhone:Ljava/lang/String;

    .line 5994
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    const-string v0, "setup"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->isFromSetup:Z

    .line 5995
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    const-string v0, "length"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->length:I

    .line 5996
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    const-string v0, "email"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->email:Ljava/lang/String;

    .line 5998
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_1

    .line 5999
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->confirmTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->CheckYourNewEmailSubtitle:I

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->email:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6000
    :cond_1
    iget-boolean p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->isSetup:Z

    if-eqz p2, :cond_2

    .line 6001
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->confirmTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->VerificationCodeSubtitle:I

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->email:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6004
    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->length:I

    invoke-virtual {p2, v3, v1}, Lorg/telegram/ui/CodeFieldContainer;->setNumbersCount(II)V

    .line 6005
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p2, p2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, p2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, p2, v4

    .line 6006
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->hasCustomKeyboard()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v6}, Lorg/telegram/ui/LoginActivity;->access$700(Lorg/telegram/ui/LoginActivity;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v6, 0x1

    :goto_3
    invoke-virtual {v5, v6}, Lorg/telegram/ui/CodeNumberField;->setShowSoftInputOnFocusCompat(Z)V

    .line 6007
    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$5;

    invoke-direct {v6, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$5;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6022
    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6029
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const-string v3, ""

    invoke-virtual {p2, v3}, Lorg/telegram/ui/CodeFieldContainer;->setText(Ljava/lang/String;)V

    .line 6031
    iget-boolean p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->isFromSetup:Z

    if-nez p2, :cond_7

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result p2

    if-eq p2, v0, :cond_7

    .line 6032
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->currentParams:Landroid/os/Bundle;

    const-string v0, "emailPattern"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6033
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v3, 0x2a

    .line 6034
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    if-eq v4, p2, :cond_6

    const/4 v3, -0x1

    if-eq v4, v3, :cond_6

    if-eq p2, v3, :cond_6

    .line 6036
    new-instance v3, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v3}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 6037
    iget v5, v3, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v3, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 6038
    iput v4, v3, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    add-int/2addr p2, v1

    .line 6039
    iput p2, v3, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    .line 6040
    new-instance v5, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v5, v3}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-virtual {v0, v5, v4, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6043
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->confirmTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->CheckYourEmailSubtitle:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/CharSequence;

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->formatSpannable(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    const-string p2, "googleSignInAllowed"

    .line 6046
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    goto :goto_4

    :cond_8
    const/16 p1, 0x8

    .line 6047
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->loginOrView:Lorg/telegram/ui/Components/LoginOrView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6048
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->signInWithGoogleView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6050
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p2, p2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object p2, p2, v2

    invoke-static {p1, p2}, Lorg/telegram/ui/LoginActivity;->access$4100(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z

    .line 6051
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestFocus()Z

    return-void
.end method

.method public updateColors()V
    .locals 3

    .line 5942
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->titleView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5943
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->confirmTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5944
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->signInWithGoogleView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlueText4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5945
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->loginOrView:Lorg/telegram/ui/Components/LoginOrView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LoginOrView;->updateColors()V

    .line 5946
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->resendCodeView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5947
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->wrongCodeView:Landroid/widget/TextView;

    const-string v1, "dialogTextRed"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5949
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityEmailCodeView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
