.class public Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;
.super Lorg/telegram/ui/Components/SlideView;
.source "LoginActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginActivitySmsView"
.end annotation


# instance fields
.field private blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private bottomContainer:Landroid/widget/FrameLayout;

.field private catchedPhone:Ljava/lang/String;

.field private codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

.field private codeTime:I

.field private codeTimer:Ljava/util/Timer;

.field private confirmTextView:Landroid/widget/TextView;

.field private currentParams:Landroid/os/Bundle;

.field private currentType:I

.field private dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private dotsToStarsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private emailPhone:Ljava/lang/String;

.field private errorColorTimeout:Ljava/lang/Runnable;

.field private errorViewSwitcher:Landroid/widget/ViewSwitcher;

.field private generatedCode:Ljava/lang/String;

.field hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field private isDotsAnimationVisible:Z

.field private isResendingCode:Z

.field private lastCodeTime:D

.field private lastCurrentTime:D

.field private length:I

.field private missedCallArrowIcon:Landroid/widget/ImageView;

.field private missedCallDescriptionSubtitle:Landroid/widget/TextView;

.field private missedCallPhoneIcon:Landroid/widget/ImageView;

.field private final newTelegramRulesTextView:Landroid/widget/TextView;

.field private nextPressed:Z

.field private nextType:I

.field private openFragmentButton:Landroid/widget/LinearLayout;

.field private openFragmentButtonText:Landroid/widget/TextView;

.field private openFragmentImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private openTime:I

.field private pattern:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private phoneHash:Ljava/lang/String;

.field private postedErrorColorTimeout:Z

.field private prefix:Ljava/lang/String;

.field private prefixTextView:Landroid/widget/TextView;

.field private problemFrame:Landroid/widget/FrameLayout;

.field private problemText:Landroid/widget/TextView;

.field private progressView:Lorg/telegram/ui/LoginActivity$ProgressView;

.field private requestPhone:Ljava/lang/String;

.field private starsToDotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field private time:I

.field private timeText:Landroid/widget/TextView;

.field private timeTimer:Ljava/util/Timer;

.field private final timerSync:Ljava/lang/Object;

.field private titleTextView:Landroid/widget/TextView;

.field private url:Ljava/lang/String;

.field private waitingForEvent:Z

.field private wrongCode:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$2JEIyCNHfJyvMQSmE9ogIxtHngQ(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$70H1wG37rRfrwYosZH45invU-sg(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$27(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7QUMK7cfdDSD8syRdJ-jw9xY688(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$new$8(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8HCTPnU4O5AvOqnbv6GJYQUSdgg(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$8LptTY2-G7L2VStfH1QAGavS7UI(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$new$1(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8nxxHCZ8P0-DloktYq4ZrxR_EJE(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$33(Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8ufOzMPcAKfgec7YUSaeNW4Jcmc(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$animateSuccess$36(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ATEbtR3uBqVbBU4xHeFkBwvn18U(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$resendCode$9(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cpms4eGFO7yGbADulgD_AgbK3SQ(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$animateSuccess$37(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I20Kr5Kcyv_fiDf3V_da-N_suCw(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$35(Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J871kBxchVFbcP2jn2gbSl-lIAs(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$shakeWrongCode$39()V

    return-void
.end method

.method public static synthetic $r8$lambda$JHKsk-e1i4DHPF1lciPEoqHTzpA(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$setParams$20(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$L3YK93-PGTtXPDsTS9On3cFLOQ4(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$24(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MAfVRWZtJYktH-X3EvzfRIPRud4(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$resendCode$10(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Mh8UbnvIcMHOfvkd_A_6pwp9CEU(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onBackPressed$40(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MuNg_Hury6i8glktQrhknPeeYiQ(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$tryShowProgress$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$NjHchblgaZTmzHxG5eclHfrVz-4(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$28(Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OJyu7ohayct_z-nrsT2q54X362s(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$tryShowProgress$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$VWwh2XU7ikEQfO-tpwcNyntyDEg(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$23(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W0RKlsXRB0D_f_IWJnUCO-53q2A(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$XDK-mGlBwHksYOcZgOPoVY9sQmM(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$31(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ahv2axD5oXvVcWqngYCLZQVXAPA(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cnR6jlAsdRZSawTkOIXJFrL2b9U(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$34(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e1dTDeafIXBPJVJzvUll0RHXTCQ(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$tryHideProgress$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$eDu6dVhUZR0jXwCICa_PkOAl4PA(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$32(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f6KWQzhXsEu8RPeKoYpxWqvBtrU()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$setParams$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$gFgzWw5yolCuhQ4dQZyhS6XUtwg(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$h6D7Ma_T2o-9zhiL6CCv6_kCPb8(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$shakeWrongCode$38()V

    return-void
.end method

.method public static synthetic $r8$lambda$i97NdTERXB_HGut8FpUq6wzNiik(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$new$2(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kPZBESRLvHpkuR-BJsG3IdkuuME(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$30(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lmaGesyh8-jj7bdHoUT3h1CGmmI(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$21(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mDAe29S6vV3UMOji41DSBVI2TCU(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$tryShowProgress$12(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$mbdvinCUlJSBgj9NVOtdkLWZ22o(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$tryHideProgress$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$oIxV3jtDOJIqXBTfnO5RgU7ESEU(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onShow$42()V

    return-void
.end method

.method public static synthetic $r8$lambda$pA0yPIT6U0KjIzc_5zRMpp_q1vw(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$tryHideProgress$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$pnZzPljKIy4JhbR0kFerDNG6fCI(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$new$3(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qjDmH1Kl1phUAy5leYxhJwwyvl0(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$tryHideProgress$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$rEwjTNZ6PkPh1lpNL3jqYT5fVOw(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$tryShowProgress$11(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$sBuUZKXT8W1o_ZuXccxiTetVP6I(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$25(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tLSMDDz7Vh9cd1RHjGwTlKfy37I(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onBackPressed$41(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uydstoPPt8JQl-8f7RkQnGuHBCA(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$29(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 3599
    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 3600
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    .line 3563
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    const v3, 0xea60

    .line 3564
    iput v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    const/16 v3, 0x3a98

    .line 3565
    iput v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    const/4 v3, 0x0

    .line 3578
    iput-boolean v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isResendingCode:Z

    const-string v4, "*"

    .line 3580
    iput-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    const-string v4, ""

    .line 3581
    iput-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefix:Ljava/lang/String;

    .line 3587
    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda7;

    invoke-direct {v5, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorColorTimeout:Ljava/lang/Runnable;

    move/from16 v5, p3

    .line 3602
    iput v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v5, 0x1

    .line 3603
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3605
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    .line 3606
    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3607
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v6, v9, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3609
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->newTelegramRulesTextView:Landroid/widget/TextView;

    .line 3610
    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3611
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v9, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3612
    new-instance v9, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v9}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 3613
    sget v9, Lorg/telegram/messenger/R$string;->new_telegram_authorization_rules_info:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v9

    .line 3614
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v12, 0x2a

    .line 3615
    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    add-int/lit8 v14, v13, 0x1

    .line 3616
    invoke-virtual {v9, v12, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v12, -0x1

    if-eq v13, v12, :cond_0

    if-eq v9, v12, :cond_0

    if-eq v13, v9, :cond_0

    add-int/lit8 v15, v9, 0x1

    .line 3618
    invoke-virtual {v11, v9, v15, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3619
    invoke-virtual {v11, v13, v14, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3620
    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V

    sub-int/2addr v9, v5

    const/16 v14, 0x21

    invoke-virtual {v11, v4, v13, v9, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3633
    :cond_0
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v4, 0x8

    .line 3634
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3637
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    const/high16 v11, 0x41900000    # 18.0f

    .line 3638
    invoke-virtual {v9, v5, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3639
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    const-string v11, "fonts/rmedium.ttf"

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3640
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_1

    const/4 v13, 0x5

    goto :goto_0

    :cond_1
    const/4 v13, 0x3

    :goto_0
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 3641
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v9, v13, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3642
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    const/16 v13, 0x31

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 3645
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v9

    if-eq v9, v5, :cond_2

    const/4 v9, 0x0

    goto :goto_1

    .line 3651
    :cond_2
    sget v9, Lorg/telegram/messenger/R$string;->CancelAccountReset:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3655
    :goto_1
    iget v15, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v4, 0xb

    const/16 v13, 0x10

    const/4 v14, -0x2

    if-ne v15, v4, :cond_4

    .line 3656
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    sget v9, Lorg/telegram/messenger/R$string;->MissedCallDescriptionTitle:I

    const-string v15, "MissedCallDescriptionTitle"

    invoke-static {v15, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3658
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3659
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallArrowIcon:Landroid/widget/ImageView;

    .line 3660
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallPhoneIcon:Landroid/widget/ImageView;

    .line 3661
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallArrowIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3662
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3664
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallArrowIcon:Landroid/widget/ImageView;

    sget v15, Lorg/telegram/messenger/R$drawable;->login_arrow1:I

    invoke-virtual {v9, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3665
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallPhoneIcon:Landroid/widget/ImageView;

    sget v15, Lorg/telegram/messenger/R$drawable;->login_phone1:I

    invoke-virtual {v9, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v16, 0x40

    const/16 v17, 0x40

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x10

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 3667
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3668
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    const/16 v16, -0x2

    const/16 v17, -0x2

    const/16 v18, 0x31

    const/16 v20, 0x8

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3670
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle:Landroid/widget/TextView;

    .line 3671
    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3672
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 3673
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v9, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3674
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle:Landroid/widget/TextView;

    sget v9, Lorg/telegram/messenger/R$string;->MissedCallDescriptionSubtitle:I

    const-string v15, "MissedCallDescriptionSubtitle"

    invoke-static {v15, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3676
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle:Landroid/widget/TextView;

    const/16 v16, -0x1

    const/16 v19, 0x24

    const/16 v20, 0x10

    const/16 v21, 0x24

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3678
    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$2;

    invoke-direct {v6, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    .line 3685
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3686
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3687
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefixTextView:Landroid/widget/TextView;

    const/high16 v15, 0x41a00000    # 20.0f

    .line 3688
    invoke-virtual {v9, v5, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3689
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefixTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 3690
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefixTextView:Landroid/widget/TextView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3691
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefixTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3692
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefixTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 3694
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefixTextView:Landroid/widget/TextView;

    const/16 v16, -0x2

    const/16 v17, -0x1

    const/16 v18, 0x10

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x4

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v6, v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3695
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-static {v14, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v6, v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v17, 0x22

    const/16 v18, 0x1

    const/16 v20, 0x1c

    const/16 v21, 0x0

    .line 3697
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3699
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle:Landroid/widget/TextView;

    .line 3700
    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3701
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 3702
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3703
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->MissedCallDescriptionSubtitle2:I

    const-string v9, "MissedCallDescriptionSubtitle2"

    invoke-static {v9, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3705
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle:Landroid/widget/TextView;

    const/16 v16, -0x1

    const/16 v17, -0x2

    const/16 v18, 0x31

    const/16 v19, 0x24

    const/16 v21, 0x24

    const/16 v22, 0xc

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a

    :cond_4
    const/16 v7, 0x40

    const/4 v8, 0x3

    if-ne v15, v8, :cond_7

    .line 3707
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 3708
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3709
    invoke-static {v12, v3, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3711
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3712
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3713
    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v15, 0x11

    .line 3714
    invoke-static {v12, v14, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v8, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3715
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 3716
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v15, 0x0

    goto :goto_3

    :cond_5
    sget v15, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_3
    iput v15, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 3718
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3719
    invoke-static {v14, v14, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v8, v3, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3721
    new-instance v15, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v15, v2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 3722
    new-instance v15, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v19, Lorg/telegram/messenger/R$raw;->phone_flash_call:I

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v21

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v22

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v18, v15

    invoke-direct/range {v18 .. v24}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v15, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3723
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v12, v15}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 3724
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v7, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v12, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3726
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_6

    goto :goto_4

    :cond_6
    sget v7, Lorg/telegram/messenger/R$string;->YourCode:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_4
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3727
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x10

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v8, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3728
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/16 v23, 0x8

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v8, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_b

    .line 3730
    :cond_7
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/16 v8, 0x31

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 3731
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 3733
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x31

    const/16 v22, 0x0

    const/16 v23, 0x10

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 3734
    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3736
    iget v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-ne v8, v5, :cond_8

    const/16 v7, 0x80

    :cond_8
    move/from16 v20, v7

    if-ne v8, v5, :cond_9

    .line 3738
    new-instance v7, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v22, Lorg/telegram/messenger/R$raw;->code_laptop:I

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v24

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v25

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v21, v7

    invoke-direct/range {v21 .. v27}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_5

    .line 3740
    :cond_9
    new-instance v7, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v29, Lorg/telegram/messenger/R$raw;->sms_incoming_info:I

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v31

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v32

    const/16 v33, 0x1

    const/16 v34, 0x0

    move-object/from16 v28, v7

    invoke-direct/range {v28 .. v34}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3742
    new-instance v7, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v22, Lorg/telegram/messenger/R$raw;->phone_stars_to_dots:I

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v24

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v25

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v21, v7

    invoke-direct/range {v21 .. v27}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->starsToDotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3743
    new-instance v7, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v29, Lorg/telegram/messenger/R$raw;->phone_dots:I

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v31

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v32

    move-object/from16 v28, v7

    invoke-direct/range {v28 .. v34}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3744
    new-instance v7, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v22, Lorg/telegram/messenger/R$raw;->phone_dots_to_stars:I

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v24

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v25

    move-object/from16 v21, v7

    invoke-direct/range {v21 .. v27}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsToStarsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3746
    :goto_5
    new-instance v7, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v7, v2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 3747
    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 3748
    iget v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-ne v7, v5, :cond_a

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v7

    if-nez v7, :cond_a

    .line 3749
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v8, 0x18

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 3751
    :cond_a
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v21, 0x33

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-ne v8, v5, :cond_b

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v8

    if-nez v8, :cond_b

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    neg-int v8, v8

    move/from16 v25, v8

    goto :goto_6

    :cond_b
    const/16 v25, 0x0

    :goto_6
    move/from16 v19, v20

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3752
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_c

    goto :goto_8

    :cond_c
    iget v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-ne v7, v5, :cond_d

    sget v7, Lorg/telegram/messenger/R$string;->SentAppCodeTitle:I

    goto :goto_7

    :cond_d
    sget v7, Lorg/telegram/messenger/R$string;->SentSmsCodeTitle:I

    :goto_7
    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_8
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3753
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x31

    const/16 v22, 0x0

    const/16 v23, 0x12

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3754
    iget v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v7, 0xf

    if-ne v3, v7, :cond_e

    move v3, v13

    goto :goto_9

    :cond_e
    const/4 v3, 0x0

    .line 3755
    :goto_9
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x31

    const/16 v23, 0x11

    const/16 v25, 0x0

    move/from16 v22, v3

    move/from16 v24, v3

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v23, 0xc

    .line 3756
    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_a
    const/4 v6, 0x0

    .line 3758
    :goto_b
    iget v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-eq v3, v4, :cond_f

    .line 3759
    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$3;

    invoke-direct {v3, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/16 v19, -0x2

    const/16 v20, 0x2a

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x20

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 3766
    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3768
    :cond_f
    iget v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_10

    .line 3769
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3772
    :cond_10
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemFrame:Landroid/widget/FrameLayout;

    .line 3774
    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;

    invoke-direct {v3, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/4 v7, 0x2

    .line 3836
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v7, v8

    invoke-virtual {v3, v7, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3837
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/4 v7, 0x6

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    const/16 v9, 0x8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-virtual {v3, v8, v12, v9, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3838
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v3, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3839
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const/16 v9, 0x31

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 3840
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    new-instance v12, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda4;

    invoke-direct {v12, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3882
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemFrame:Landroid/widget/FrameLayout;

    iget-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    invoke-static {v14, v14, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v3, v12, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3884
    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;

    invoke-direct {v3, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 3891
    iget v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v9, 0xf

    if-eq v3, v9, :cond_11

    .line 3892
    sget v3, Lorg/telegram/messenger/R$anim;->text_in:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 3893
    sget-object v9, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3894
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v12, v3}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 3896
    sget v3, Lorg/telegram/messenger/R$anim;->text_out:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 3897
    invoke-virtual {v3, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3898
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v9, v3}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 3900
    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;

    invoke-direct {v3, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/4 v1, 0x2

    .line 3962
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v1, v9

    invoke-virtual {v3, v1, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3963
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3964
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/16 v3, 0x31

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 3965
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v9, 0x8

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-virtual {v1, v3, v12, v9, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3966
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemFrame:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/16 v9, 0x11

    const/4 v12, -0x1

    invoke-static {v12, v14, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v1, v3, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3967
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemFrame:Landroid/widget/FrameLayout;

    invoke-static {v14, v14, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v1, v3, v12}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_c

    .line 3969
    :cond_11
    sget v1, Lorg/telegram/messenger/R$anim;->scale_in:I

    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 3970
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3971
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v9, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 3973
    sget v1, Lorg/telegram/messenger/R$anim;->scale_out:I

    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 3974
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3975
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 3977
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    .line 3978
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3979
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    const/16 v9, 0x11

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 3980
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    const/16 v9, 0x22

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    const/16 v12, 0x22

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-virtual {v1, v9, v3, v12, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 3981
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const-string v9, "changephoneinfo_image2"

    invoke-static {v9}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    const-string v12, "chats_actionPressedBackground"

    invoke-static {v12}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v12

    invoke-static {v3, v9, v12}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3982
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3989
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    const/16 v9, 0x34

    const/4 v12, -0x1

    invoke-static {v12, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v3, v9}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3991
    new-instance v1, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 3992
    sget v3, Lorg/telegram/messenger/R$raw;->fragment:I

    const/16 v9, 0x24

    const/16 v12, 0x24

    invoke-virtual {v1, v3, v9, v12}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 3993
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v19, 0x24

    const/16 v20, 0x24

    const/16 v21, 0x10

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x2

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v3, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3995
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButtonText:Landroid/widget/TextView;

    .line 3996
    sget v3, Lorg/telegram/messenger/R$string;->OpenFragment:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3997
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButtonText:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3998
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3999
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButtonText:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 4000
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButtonText:Landroid/widget/TextView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4001
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4004
    :goto_c
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    .line 4005
    sget v3, Lorg/telegram/messenger/R$string;->WrongCode:I

    const-string v9, "WrongCode"

    invoke-static {v9, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4006
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 4007
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4008
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    const/16 v3, 0x31

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 4009
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    const/4 v12, 0x0

    invoke-virtual {v1, v12, v8, v12, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4010
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    const/16 v9, 0x11

    invoke-static {v14, v14, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4012
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v8, 0xf

    if-eq v1, v8, :cond_15

    .line 4014
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const-string v8, "windowBackgroundWhiteBlueText4"

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4015
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4016
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/16 v9, 0x31

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 4017
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4018
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    const/16 v12, 0x8

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v1, v9, v12, v15, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4019
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4020
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 4022
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-ne v1, v5, :cond_14

    .line 4023
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    const/4 v5, 0x3

    if-eq v1, v5, :cond_13

    if-eq v1, v3, :cond_13

    if-ne v1, v4, :cond_12

    goto :goto_d

    .line 4027
    :cond_12
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const-string v4, "changephoneinfo_image2"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    const-string v5, "chats_actionPressedBackground"

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4028
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4029
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4030
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 4031
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/16 v3, 0xa

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4032
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$drawable;->fork_open_telegram:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4033
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 4035
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->DidNotGetTheCodeSms:I

    const-string v4, "DidNotGetTheCodeSms"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 4024
    :cond_13
    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->DidNotGetTheCodePhone:I

    const-string v4, "DidNotGetTheCodePhone"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 4038
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->DidNotGetTheCode:I

    const-string v4, "DidNotGetTheCode"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    :goto_e
    if-nez v6, :cond_17

    .line 4042
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->bottomContainer:Landroid/widget/FrameLayout;

    .line 4043
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    iget v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v5, 0xf

    if-ne v4, v5, :cond_16

    const/16 v19, -0x1

    goto :goto_f

    :cond_16
    const/16 v19, -0x2

    :goto_f
    const/16 v20, -0x2

    const/16 v21, 0x51

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x20

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4044
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->bottomContainer:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v3, v4, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_10

    .line 4046
    :cond_17
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v7, -0x2

    const/4 v8, -0x2

    const/16 v9, 0x51

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x20

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4048
    :goto_10
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-static {v1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    .line 4050
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v3, 0xf

    if-eq v1, v3, :cond_18

    .line 4051
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0, v2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_18
    return-void
.end method

.method static synthetic access$10000(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Z
    .locals 0

    .line 3497
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->postedErrorColorTimeout:Z

    return p0
.end method

.method static synthetic access$10100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/lang/Runnable;
    .locals 0

    .line 3497
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorColorTimeout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$10200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;
    .locals 0

    .line 3497
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->newTelegramRulesTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$10300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)D
    .locals 2

    .line 3497
    iget-wide v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCodeTime:D

    return-wide v0
.end method

.method static synthetic access$10302(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)D
    .locals 0

    .line 3497
    iput-wide p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCodeTime:D

    return-wide p1
.end method

.method static synthetic access$10400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .locals 0

    .line 3497
    iget p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    return p0
.end method

.method static synthetic access$10426(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)I
    .locals 2

    .line 3497
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    int-to-double v0, v0

    sub-double/2addr v0, p1

    double-to-int p1, v0

    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    return p1
.end method

.method static synthetic access$10500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Z)V
    .locals 0

    .line 3497
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setProblemTextVisible(Z)V

    return-void
.end method

.method static synthetic access$10600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;
    .locals 0

    .line 3497
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$10700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;
    .locals 0

    .line 3497
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$10800(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    .line 3497
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    return-void
.end method

.method static synthetic access$10900(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/util/Timer;
    .locals 0

    .line 3497
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$11000(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)D
    .locals 2

    .line 3497
    iget-wide v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCurrentTime:D

    return-wide v0
.end method

.method static synthetic access$11002(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)D
    .locals 0

    .line 3497
    iput-wide p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCurrentTime:D

    return-wide p1
.end method

.method static synthetic access$11100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .locals 0

    .line 3497
    iget p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    return p0
.end method

.method static synthetic access$11126(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)I
    .locals 2

    .line 3497
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    int-to-double v0, v0

    sub-double/2addr v0, p1

    double-to-int p1, v0

    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    return p1
.end method

.method static synthetic access$11200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .locals 0

    .line 3497
    iget p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    return p0
.end method

.method static synthetic access$11300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$ProgressView;
    .locals 0

    .line 3497
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;

    return-object p0
.end method

.method static synthetic access$11400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    .line 3497
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .locals 0

    .line 3497
    iget p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openTime:I

    return p0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Z
    .locals 0

    .line 3497
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isResendingCode:Z

    return p0
.end method

.method private animateSuccess(Ljava/lang/Runnable;)V
    .locals 7

    const/4 v0, 0x0

    .line 4914
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v2

    const-wide/16 v3, 0x4b

    if-ge v0, v2, :cond_0

    .line 4916
    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;I)V

    int-to-long v5, v0

    mul-long/2addr v5, v3

    invoke-virtual {v1, v2, v5, v6}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4918
    :cond_0
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length p1, p1

    int-to-long v5, p1

    mul-long/2addr v5, v3

    const-wide/16 v2, 0x190

    add-long/2addr v5, v2

    invoke-virtual {v1, v0, v5, v6}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private applyLottieColors(Lorg/telegram/ui/Components/RLottieDrawable;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "chats_actionBackground"

    .line 4133
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "Bubble.**"

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    const-string v0, "windowBackgroundWhiteBlackText"

    .line 4134
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "Phone.**"

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 4135
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "Note.**"

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private createCodeTimer()V
    .locals 8

    .line 4501
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3a98

    .line 4504
    iput v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    .line 4505
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    .line 4506
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCodeTime:D

    .line 4507
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$9;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$9;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private createTimer()V
    .locals 9

    .line 4542
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    return-void

    .line 4545
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4546
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$id;->color_key_tag:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 4550
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    .line 4551
    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;

    invoke-direct {v4, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3e8

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private destroyCodeTimer()V
    .locals 2

    .line 4530
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4531
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 4532
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 4533
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    .line 4535
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 4537
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private destroyTimer()V
    .locals 3

    .line 4593
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4594
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$id;->color_key_tag:I

    const-string v2, "windowBackgroundWhiteGrayText6"

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 4596
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4597
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 4598
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 4599
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    .line 4601
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 4603
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$animateSuccess$36(I)V
    .locals 1

    .line 4916
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object p1, v0, p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lorg/telegram/ui/CodeNumberField;->animateSuccessProgress(F)V

    return-void
.end method

.method private synthetic lambda$animateSuccess$37(Ljava/lang/Runnable;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 4919
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 4920
    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/CodeNumberField;->animateSuccessProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4922
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4923
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iput-boolean v0, p1, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    const/4 v0, 0x0

    .line 3588
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->postedErrorColorTimeout:Z

    .line 3589
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3590
    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3593
    :cond_0
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemFrame:Landroid/widget/FrameLayout;

    .line 3594
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    if-eq v1, v0, :cond_2

    .line 3595
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    .line 3869
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/LoginActivity;->access$8500(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 3871
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 3869
    new-instance p3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda24;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 3870
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 3871
    new-instance p1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda27;

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 3

    .line 3844
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 3847
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isResendingCode:Z

    .line 3848
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    .line 3849
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string v0, "windowBackgroundWhiteValueText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3851
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    const/16 v0, 0xb

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_2

    const/16 v2, 0xf

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const/4 p1, 0x0

    .line 3875
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 3876
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 3877
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 3878
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 3879
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->resendCode()V

    goto :goto_3

    .line 3852
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    const-string v2, "windowBackgroundWhiteGrayText6"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3853
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq p1, v1, :cond_4

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 3856
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->SendingSms:I

    const-string v1, "SendingSms"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 3854
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->Calling:I

    const-string v1, "Calling"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3858
    :goto_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3859
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    const-string v1, "phone"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3860
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->emailPhone:Ljava/lang/String;

    const-string v1, "ephone"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3861
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    const-string v1, "phoneFormated"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3863
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createCodeTimer()V

    .line 3864
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;-><init>()V

    .line 3865
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_number:Ljava/lang/String;

    .line 3866
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_code_hash:Ljava/lang/String;

    .line 3867
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$12800(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda36;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;)V

    const/16 p1, 0xa

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :cond_5
    :goto_3
    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 3

    .line 3984
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3986
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$8(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 4054
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$9500(Lorg/telegram/ui/LoginActivity;)V

    return-void
.end method

.method private synthetic lambda$onBackPressed$40(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x1

    .line 4974
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onBackPressed(Z)Z

    .line 4975
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1, p1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private static synthetic lambda$onBackPressed$41(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$onNextPressed$21(Landroid/content/DialogInterface;)V
    .locals 0

    .line 4685
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$onNextPressed$22()V
    .locals 7

    .line 4679
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$12700(Lorg/telegram/ui/LoginActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4681
    :catch_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->YourPasswordSuccess:I

    .line 4682
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->ChangePhoneNumberSuccessWithPhone:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4683
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    .line 4684
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 4685
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 4686
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private synthetic lambda$onNextPressed$23(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4658
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryHideProgress(ZZ)V

    .line 4659
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez p1, :cond_1

    .line 4661
    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    .line 4662
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 4663
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 4664
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$12200(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 4665
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$12300(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 4666
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4667
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4668
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v4}, Lorg/telegram/ui/LoginActivity;->access$12400(Lorg/telegram/ui/LoginActivity;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, p1, v2, v1, v1}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 4669
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$12500(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 4670
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$12600(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4671
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string p2, "VALIDATE_PHONE_NUMBER"

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/messenger/MessagesController;->removeSuggestion(JLjava/lang/String;)V

    .line 4673
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-ne p1, v3, :cond_0

    .line 4674
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->endIncomingCall()V

    .line 4677
    :cond_0
    new-instance p1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->animateSuccess(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 4690
    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 4691
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/LoginActivity;->access$2700(Lorg/telegram/ui/LoginActivity;ZZ)V

    .line 4692
    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-ne p2, v3, :cond_2

    iget v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v6, v4, :cond_4

    if-eq v6, v5, :cond_4

    :cond_2
    if-ne p2, v5, :cond_3

    iget v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v6, v4, :cond_4

    if-eq v6, v3, :cond_4

    :cond_3
    if-ne p2, v4, :cond_5

    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-ne p2, v5, :cond_5

    .line 4693
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    .line 4695
    :cond_5
    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v4, 0xf

    if-ne p2, v4, :cond_6

    .line 4696
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {p2, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_6
    if-ne p2, v5, :cond_7

    .line 4698
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 4699
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {p2, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_7
    if-ne p2, v3, :cond_8

    .line 4701
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 4702
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {p2, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4704
    :cond_8
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 4705
    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-eq p2, v3, :cond_f

    .line 4707
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "PHONE_NUMBER_INVALID"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 4708
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    const-string v2, "InvalidPhoneNumber"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4709
    :cond_9
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "PHONE_CODE_EMPTY"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_d

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "PHONE_CODE_INVALID"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_2

    .line 4712
    :cond_a
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "PHONE_CODE_EXPIRED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 4713
    invoke-virtual {p0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onBackPressed(Z)Z

    .line 4714
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1, v0, v1, v2, v1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 4715
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/R$string;->CodeExpired:I

    const-string v2, "CodeExpired"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4716
    :cond_b
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "FLOOD_WAIT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 4717
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/R$string;->FloodWait:I

    const-string v2, "FloodWait"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4719
    :cond_c
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget v1, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

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

    invoke-static {p2, v1, p1}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v1, v0

    goto :goto_3

    .line 4710
    :cond_d
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->shakeWrongCode()V

    :goto_3
    if-nez v1, :cond_f

    move p1, v0

    .line 4723
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, p2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v1

    if-ge p1, v2, :cond_e

    .line 4724
    aget-object p2, v1, p1

    const-string v1, ""

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 4727
    :cond_e
    iput-boolean v0, p2, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 4728
    aget-object p1, v1, v0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_f
    :goto_5
    return-void
.end method

.method private synthetic lambda$onNextPressed$24(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 4657
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$25(Landroid/content/DialogInterface;)V
    .locals 0

    .line 4757
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$onNextPressed$26()V
    .locals 6

    .line 4753
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->CancelLinkSuccessTitle:I

    .line 4754
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->CancelLinkSuccess:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 4755
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "CancelLinkSuccess"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Close:I

    .line 4756
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 4757
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 4758
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private synthetic lambda$onNextPressed$27(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;)V
    .locals 6

    const/4 v0, 0x0

    .line 4750
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryHideProgress(Z)V

    .line 4751
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    if-nez p1, :cond_0

    .line 4753
    new-instance p1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->animateSuccess(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 4761
    :cond_0
    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    iget v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v5, v2, :cond_3

    if-eq v5, v3, :cond_3

    :cond_1
    if-ne v1, v3, :cond_2

    iget v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v5, v2, :cond_3

    if-eq v5, v4, :cond_3

    :cond_2
    if-ne v1, v2, :cond_4

    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-ne v1, v3, :cond_4

    .line 4763
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    .line 4765
    :cond_4
    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v2, 0xf

    const/4 v5, 0x1

    if-ne v1, v2, :cond_5

    .line 4766
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_5
    if-ne v1, v3, :cond_6

    .line 4768
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 4769
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_6
    if-ne v1, v4, :cond_7

    .line 4771
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 4772
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4774
    :cond_7
    :goto_0
    iput-boolean v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 4775
    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-eq v1, v4, :cond_8

    .line 4776
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$12100(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, p2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 4778
    :cond_8
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "PHONE_CODE_EMPTY"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "PHONE_CODE_INVALID"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_1

    .line 4780
    :cond_9
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "PHONE_CODE_EXPIRED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 4781
    invoke-virtual {p0, v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onBackPressed(Z)Z

    .line 4782
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, v5, p2, v5}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    .line 4779
    :cond_a
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->shakeWrongCode()V

    :cond_b
    :goto_2
    return-void
.end method

.method private synthetic lambda$onNextPressed$28(Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 4749
    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda32;

    invoke-direct {p2, p0, p3, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$29(Landroid/os/Bundle;)V
    .locals 4

    .line 4823
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$30(Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    .line 4825
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    invoke-static {v0, p1}, Lorg/telegram/ui/LoginActivity;->access$8400(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$31(Landroid/os/Bundle;)V
    .locals 4

    .line 4849
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$32(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V
    .locals 3

    const/4 v0, 0x0

    .line 4833
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 4834
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/LoginActivity;->access$2700(Lorg/telegram/ui/LoginActivity;ZZ)V

    if-nez p1, :cond_1

    .line 4836
    check-cast p2, Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 4837
    invoke-static {p2, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/TLRPC$account_Password;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4838
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    const-string p3, "UpdateAppAlert"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 4841
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 4842
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {p2}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 4843
    invoke-virtual {p2, v0}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4844
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    const-string v0, "password"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4845
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    const-string v0, "phoneFormated"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4846
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    const-string v0, "phoneHash"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4847
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code:Ljava/lang/String;

    const-string p3, "code"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4849
    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda22;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->animateSuccess(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4851
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p3, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onNextPressed$33(Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 4832
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$34(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4803
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryHideProgress(ZZ)V

    const/4 v2, 0x3

    if-nez p1, :cond_2

    .line 4808
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 4810
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/LoginActivity;->access$2700(Lorg/telegram/ui/LoginActivity;ZZ)V

    .line 4811
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 4812
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 4813
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;

    if-eqz p1, :cond_1

    .line 4814
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;

    .line 4815
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;->terms_of_service:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    if-eqz p1, :cond_0

    .line 4816
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/LoginActivity;->access$8302(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    .line 4818
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 4819
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    const-string v0, "phoneFormated"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4820
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    const-string v0, "phoneHash"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4821
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code:Ljava/lang/String;

    const-string p3, "code"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4823
    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda23;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->animateSuccess(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4825
    :cond_1
    new-instance p1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda26;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLObject;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->animateSuccess(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4828
    :cond_2
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "SESSION_PASSWORD_NEEDED"

    .line 4829
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 4831
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;-><init>()V

    .line 4832
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$12000(Lorg/telegram/ui/LoginActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    const/16 p3, 0xa

    invoke-virtual {p2, p1, v0, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4854
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 4855
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    :goto_0
    move v0, v1

    goto/16 :goto_6

    .line 4857
    :cond_3
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 4858
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/LoginActivity;->access$2700(Lorg/telegram/ui/LoginActivity;ZZ)V

    .line 4859
    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 p3, 0x4

    const/4 v3, 0x2

    if-ne p2, v2, :cond_4

    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v4, p3, :cond_6

    if-eq v4, v3, :cond_6

    :cond_4
    if-ne p2, v3, :cond_5

    iget v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v4, p3, :cond_6

    if-eq v4, v2, :cond_6

    :cond_5
    if-ne p2, p3, :cond_7

    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-ne p2, v3, :cond_7

    .line 4860
    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    .line 4862
    :cond_7
    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 p3, 0xf

    if-ne p2, p3, :cond_8

    .line 4863
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {p2, p0, p3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_1

    :cond_8
    if-ne p2, v3, :cond_9

    .line 4865
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 4866
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {p2, p0, p3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_1

    :cond_9
    if-ne p2, v2, :cond_a

    .line 4868
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 4869
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {p2, p0, p3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4871
    :cond_a
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 4872
    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-eq p2, v2, :cond_11

    .line 4874
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_NUMBER_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 4875
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    const-string v1, "InvalidPhoneNumber"

    invoke-static {v1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4876
    :cond_b
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_EMPTY"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_3

    .line 4879
    :cond_c
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_EXPIRED"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 4880
    invoke-virtual {p0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onBackPressed(Z)Z

    .line 4881
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 4882
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->CodeExpired:I

    const-string v1, "CodeExpired"

    invoke-static {v1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4883
    :cond_d
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "FLOOD_WAIT"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 4884
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->FloodWait:I

    const-string v1, "FloodWait"

    invoke-static {v1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4886
    :cond_e
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p3, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    const-string v4, "ErrorOccurred"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v1, v0

    goto :goto_4

    .line 4877
    :cond_f
    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->shakeWrongCode()V

    :goto_4
    if-nez v1, :cond_11

    move p1, v0

    .line 4890
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p3, p2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, p3

    if-ge p1, v1, :cond_10

    .line 4891
    aget-object p2, p3, p1

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 4894
    :cond_10
    iput-boolean v0, p2, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 4895
    aget-object p1, p3, v0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_11
    :goto_6
    if-eqz v0, :cond_12

    .line 4901
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-ne p1, v2, :cond_12

    .line 4902
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->endIncomingCall()V

    :cond_12
    return-void
.end method

.method private synthetic lambda$onNextPressed$35(Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 4802
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onShow$42()V
    .locals 3

    .line 5030
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    if-eqz v0, :cond_2

    .line 5031
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    if-eqz v0, :cond_1

    .line 5032
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5033
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 5034
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v2, v1, v0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 5035
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v2, v0

    invoke-static {v1, v0}, Lorg/telegram/ui/LoginActivity;->access$4100(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z

    .line 5040
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_3

    .line 5041
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 5043
    :cond_3
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 5044
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 5045
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$resendCode$10(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 4168
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$resendCode$9(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    const/4 v0, 0x0

    .line 4169
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    if-nez p1, :cond_0

    .line 4171
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$8500(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    goto/16 :goto_1

    .line 4173
    :cond_0
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p2, :cond_6

    const-string p3, "PHONE_NUMBER_INVALID"

    .line 4174
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4175
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    const-string v1, "InvalidPhoneNumber"

    invoke-static {v1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4176
    :cond_1
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_EMPTY"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto/16 :goto_0

    .line 4178
    :cond_2
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_EXPIRED"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    .line 4179
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onBackPressed(Z)Z

    .line 4180
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p3, 0x0

    invoke-virtual {p2, v0, p1, p3, p1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 4181
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->CodeExpired:I

    const-string v1, "CodeExpired"

    invoke-static {v1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4182
    :cond_3
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "FLOOD_WAIT"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 4183
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->FloodWait:I

    const-string v1, "FloodWait"

    invoke-static {v1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4184
    :cond_4
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 p3, -0x3e8

    if-eq p2, p3, :cond_6

    .line 4185
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p3, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lorg/telegram/messenger/R$string;->ErrorOccurred:I

    const-string v3, "ErrorOccurred"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4177
    :cond_5
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->InvalidCode:I

    const-string v1, "InvalidCode"

    invoke-static {v1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4189
    :cond_6
    :goto_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryHideProgress(Z)V

    return-void
.end method

.method private static synthetic lambda$setParams$19()V
    .locals 0

    .line 4295
    invoke-static {}, Lorg/telegram/messenger/CallReceiver;->checkLastReceivedCall()V

    return-void
.end method

.method private synthetic lambda$setParams$20(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 4338
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$600(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    move-result-object p2

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setEditText(Landroid/widget/EditText;)V

    .line 4339
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$600(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setDispatchBackWhenEmpty(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$shakeWrongCode$38()V
    .locals 3

    .line 4942
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 4943
    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 4945
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 4946
    aget-object v0, v0, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$shakeWrongCode$39()V
    .locals 3

    .line 4941
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$tryHideProgress$15()V
    .locals 2

    .line 4252
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 4253
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    return-void
.end method

.method private synthetic lambda$tryHideProgress$16()V
    .locals 1

    .line 4251
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$tryHideProgress$17()V
    .locals 2

    .line 4251
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsToStarsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnAnimationEndListener(Ljava/lang/Runnable;)V

    .line 4256
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 4257
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsToStarsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 4258
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsToStarsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 4259
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private synthetic lambda$tryHideProgress$18()V
    .locals 1

    .line 4250
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$tryShowProgress$11(IZ)V
    .locals 0

    .line 4218
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryShowProgress(IZ)V

    return-void
.end method

.method private synthetic lambda$tryShowProgress$12(IZ)V
    .locals 1

    .line 4218
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;IZ)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$tryShowProgress$13()V
    .locals 3

    .line 4223
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 4224
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 4225
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    .line 4226
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 4227
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private synthetic lambda$tryShowProgress$14()V
    .locals 1

    .line 4222
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resendCode()V
    .locals 4

    .line 4150
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isResendingCode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$5000(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4154
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isResendingCode:Z

    .line 4155
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 4156
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 4158
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4159
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    const-string v3, "phone"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4160
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->emailPhone:Ljava/lang/String;

    const-string v3, "ephone"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4161
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    const-string v3, "phoneFormated"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4163
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 4165
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;-><init>()V

    .line 4166
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_number:Ljava/lang/String;

    .line 4167
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_code_hash:Ljava/lang/String;

    .line 4168
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->access$9800(Lorg/telegram/ui/LoginActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda35;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;)V

    const/16 v1, 0xa

    invoke-virtual {v2, v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    .line 4191
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryShowProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setProblemTextVisible(Z)V
    .locals 2

    .line 4490
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4494
    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 4495
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 4496
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    return-void
.end method

.method private shakeWrongCode()V
    .locals 4

    .line 4929
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    move v1, v0

    .line 4932
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 4933
    aget-object v2, v2, v1

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4934
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v2, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4936
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    if-eq v1, v2, :cond_1

    .line 4937
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 4939
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 4940
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    const/high16 v1, 0x40600000    # 3.5f

    goto :goto_1

    :cond_2
    const/high16 v1, 0x41200000    # 10.0f

    :goto_1
    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;FLjava/lang/Runnable;)V

    .line 4950
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorColorTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4951
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorColorTimeout:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 4952
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->postedErrorColorTimeout:Z

    return-void
.end method

.method private tryFillGeneratedCode()V
    .locals 2

    .line 3516
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->generatedCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3517
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->generatedCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/CodeFieldContainer;->setCode(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3518
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->generatedCode:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private tryHideProgress(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 4239
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryHideProgress(ZZ)V

    return-void
.end method

.method private tryHideProgress(ZZ)V
    .locals 1

    .line 4243
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->starsToDotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_1

    .line 4244
    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isDotsAnimationVisible:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4247
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isDotsAnimationVisible:Z

    .line 4248
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 4249
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    .line 4250
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda15;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 4260
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4250
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnFinishCallback(Ljava/lang/Runnable;I)V

    return-void

    .line 4263
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/LoginActivity;->access$9900(Lorg/telegram/ui/LoginActivity;ZZ)V

    return-void
.end method

.method private tryShowProgress(I)V
    .locals 1

    const/4 v0, 0x1

    .line 4208
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryShowProgress(IZ)V

    return-void
.end method

.method private tryShowProgress(IZ)V
    .locals 3

    .line 4212
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->starsToDotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_2

    .line 4213
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isDotsAnimationVisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4216
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isDotsAnimationVisible:Z

    .line 4217
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-eq v1, v2, :cond_1

    .line 4218
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnAnimationEndListener(Ljava/lang/Runnable;)V

    return-void

    .line 4222
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->starsToDotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda10;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnAnimationEndListener(Ljava/lang/Runnable;)V

    .line 4229
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 4230
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->starsToDotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 4231
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->starsToDotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 4232
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void

    .line 4235
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/LoginActivity;->access$5900(Lorg/telegram/ui/LoginActivity;IZ)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    .line 5052
    iget-boolean p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, p2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5055
    :cond_0
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    const/4 v1, 0x0

    const-string v2, ""

    if-ne p1, v0, :cond_1

    .line 5056
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, p3, v1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/CodeFieldContainer;->setText(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 5057
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed(Ljava/lang/String;)V

    goto :goto_0

    .line 5058
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    if-ne p1, p2, :cond_4

    .line 5059
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p3, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5060
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    invoke-static {p2, p1}, Lorg/telegram/messenger/AndroidUtilities;->checkPhonePattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 5063
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    const-string p3, "*"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 5064
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    .line 5065
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->endIncomingCall()V

    .line 5067
    :cond_3
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed(Ljava/lang/String;)V

    .line 5068
    invoke-static {}, Lorg/telegram/messenger/CallReceiver;->clearLastCall()V

    :cond_4
    :goto_0
    return-void
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 2

    .line 4268
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4271
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->YourCode:I

    const-string v1, "YourCode"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4269
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public hasCustomKeyboard()Z
    .locals 2

    .line 4141
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needBackButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Z)Z
    .locals 6

    .line 4963
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4964
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 4969
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lorg/telegram/messenger/R$string;->EditNumber:I

    .line 4970
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->EditNumberInfo:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    aput-object v5, v2, v1

    const-string v5, "EditNumberInfo"

    .line 4971
    invoke-static {v5, v4, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->Close:I

    .line 4972
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->Edit:I

    .line 4973
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 4977
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 4969
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return v1

    .line 4980
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 4981
    invoke-direct {p0, v2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryHideProgress(Z)V

    .line 4982
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_auth_cancelCode;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_auth_cancelCode;-><init>()V

    .line 4983
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_cancelCode;->phone_number:Ljava/lang/String;

    .line 4984
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_cancelCode;->phone_code_hash:Ljava/lang/String;

    .line 4985
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity;->access$11900(Lorg/telegram/ui/LoginActivity;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    sget-object v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda40;->INSTANCE:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda40;

    const/16 v5, 0xa

    invoke-virtual {v3, p1, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4989
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 4990
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 4991
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    .line 4992
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    .line 4993
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 4995
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 4996
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 4998
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 4999
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 5001
    :cond_4
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    return v2
.end method

.method public onCancelPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 4146
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .line 4196
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4198
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    if-eqz p1, :cond_3

    .line 4199
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 4200
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    .line 4201
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hasCustomKeyboard()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v4}, Lorg/telegram/ui/LoginActivity;->access$700(Lorg/telegram/ui/LoginActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v3, v4}, Lorg/telegram/ui/CodeNumberField;->setShowSoftInputOnFocusCompat(Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onDestroyActivity()V
    .locals 3

    .line 5007
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    .line 5008
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    .line 5009
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 5011
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 5012
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 5014
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 5015
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 5017
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 5018
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 5019
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 4957
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 4958
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorColorTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHide()V
    .locals 1

    .line 5074
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onHide()V

    const/4 v0, 0x0

    .line 5075
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isResendingCode:Z

    .line 5076
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    return-void
.end method

.method public onNextPressed(Ljava/lang/String;)V
    .locals 7

    .line 4610
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$1000(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0xf

    const/4 v3, 0x1

    const/16 v4, 0xb

    if-ne v0, v4, :cond_0

    .line 4611
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    if-eqz v0, :cond_2

    return-void

    .line 4615
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$1000(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$1000(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    if-le v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$1000(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    if-eq v0, v2, :cond_2

    goto/16 :goto_4

    :cond_2
    if-nez p1, :cond_3

    .line 4621
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object p1

    .line 4623
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 4624
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-static {p1, v0, v4}, Lorg/telegram/ui/LoginActivity;->access$5100(Lorg/telegram/ui/LoginActivity;Landroid/view/View;Z)V

    return-void

    .line 4628
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$1000(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    if-lt v0, v3, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$1000(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    if-gt v0, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-boolean v0, v0, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    if-eqz v0, :cond_5

    return-void

    .line 4632
    :cond_5
    iput-boolean v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 4633
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v2, :cond_6

    .line 4634
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_6
    if-ne v0, v1, :cond_7

    .line 4636
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 4637
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_7
    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    .line 4639
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 4640
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4642
    :cond_8
    :goto_0
    iput-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 4644
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$2900(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v3, :cond_c

    if-eq v0, v1, :cond_a

    .line 4790
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;-><init>()V

    .line 4791
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_number:Ljava/lang/String;

    .line 4792
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code:Ljava/lang/String;

    .line 4793
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code_hash:Ljava/lang/String;

    .line 4794
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->flags:I

    or-int/2addr p1, v3

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->flags:I

    .line 4795
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 4797
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iput-boolean v3, p1, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 4798
    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, p1

    :goto_1
    if-ge v4, v1, :cond_9

    aget-object v5, p1, v4

    .line 4799
    invoke-virtual {v5, v2}, Lorg/telegram/ui/CodeNumberField;->animateFocusedProgress(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4802
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$11800(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda39;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    .line 4906
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryShowProgress(IZ)V

    .line 4907
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v3, v3}, Lorg/telegram/ui/LoginActivity;->access$2700(Lorg/telegram/ui/LoginActivity;ZZ)V

    goto/16 :goto_4

    .line 4646
    :cond_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;-><init>()V

    .line 4647
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;->phone_number:Ljava/lang/String;

    .line 4648
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;->phone_code:Ljava/lang/String;

    .line 4649
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;->phone_code_hash:Ljava/lang/String;

    .line 4650
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 4652
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iput-boolean v3, p1, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 4653
    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v5, p1

    :goto_2
    if-ge v4, v5, :cond_b

    aget-object v6, p1, v4

    .line 4654
    invoke-virtual {v6, v2}, Lorg/telegram/ui/CodeNumberField;->animateFocusedProgress(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4657
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$11500(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda34;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    .line 4733
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryShowProgress(IZ)V

    .line 4734
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v3, v3}, Lorg/telegram/ui/LoginActivity;->access$2700(Lorg/telegram/ui/LoginActivity;ZZ)V

    goto :goto_4

    .line 4738
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$11600(Lorg/telegram/ui/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    .line 4739
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;-><init>()V

    .line 4740
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;->phone_code:Ljava/lang/String;

    .line 4741
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;->phone_code_hash:Ljava/lang/String;

    .line 4742
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 4744
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iput-boolean v3, p1, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 4745
    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, p1

    :goto_3
    if-ge v4, v3, :cond_d

    aget-object v5, p1, v4

    .line 4746
    invoke-virtual {v5, v2}, Lorg/telegram/ui/CodeNumberField;->animateFocusedProgress(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 4749
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$11700(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda37;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;)V

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    .line 4786
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryShowProgress(I)V

    :cond_e
    :goto_4
    return-void
.end method

.method public onShow()V
    .locals 3

    .line 5024
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 5025
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryFillGeneratedCode()V

    .line 5026
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5027
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 5029
    :cond_0
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 5047
    invoke-static {}, Lorg/telegram/ui/LoginActivity;->access$7800()I

    move-result v1

    int-to-long v1, v1

    .line 5029
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .locals 3

    .line 5101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsview_params_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 5103
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setParams(Landroid/os/Bundle;Z)V

    :cond_0
    const-string v0, "catchedPhone"

    .line 5105
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5107
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    .line 5109
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsview_code_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5110
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    if-eqz v2, :cond_2

    .line 5111
    invoke-virtual {v1, v0}, Lorg/telegram/ui/CodeFieldContainer;->setText(Ljava/lang/String;)V

    :cond_2
    const-string v0, "time"

    .line 5113
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 5115
    iput v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    :cond_3
    const-string v0, "open"

    .line 5117
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_4

    .line 5119
    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openTime:I

    :cond_4
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .locals 3

    .line 5081
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 5082
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 5083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smsview_code_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5085
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "catchedPhone"

    .line 5086
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5088
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 5089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsview_params_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5091
    :cond_2
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-eqz v0, :cond_3

    const-string v1, "time"

    .line 5092
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5094
    :cond_3
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openTime:I

    if-eqz v0, :cond_4

    const-string v1, "open"

    .line 5095
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method public setGeneratedCode(Ljava/lang/String;)V
    .locals 0

    .line 3508
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->generatedCode:Ljava/lang/String;

    return-void
.end method

.method public setParams(Landroid/os/Bundle;Z)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4285
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 4286
    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v2, 0xf

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v1, v2, :cond_1

    .line 4287
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v5, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v1, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_1
    if-ne v1, v4, :cond_2

    .line 4289
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 4290
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v5, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v1, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_3

    .line 4292
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 4293
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v5, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v1, p0, v5}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4294
    sget-object v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda33;->INSTANCE:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda33;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4299
    :cond_3
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    const-string v1, "phone"

    .line 4300
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    const-string v1, "ephone"

    .line 4301
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->emailPhone:Ljava/lang/String;

    const-string v1, "phoneFormated"

    .line 4302
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    const-string v1, "phoneHash"

    .line 4303
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    const-string v1, "timeout"

    .line 4304
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    .line 4305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v1, v5

    iput v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openTime:I

    const-string v1, "nextType"

    .line 4306
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    const-string v1, "pattern"

    .line 4307
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    const-string v1, "prefix"

    .line 4308
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefix:Ljava/lang/String;

    const-string v1, "length"

    .line 4309
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    if-nez v1, :cond_4

    const/4 v1, 0x5

    .line 4311
    iput v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    :cond_4
    const-string v1, "url"

    .line 4313
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->url:Ljava/lang/String;

    .line 4315
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    iget v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    invoke-virtual {p1, v1, v5}, Lorg/telegram/ui/CodeFieldContainer;->setNumbersCount(II)V

    .line 4316
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v1, :cond_8

    aget-object v7, p1, v6

    .line 4317
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_7

    .line 4318
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hasCustomKeyboard()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v8}, Lorg/telegram/ui/LoginActivity;->access$700(Lorg/telegram/ui/LoginActivity;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    move v8, v5

    goto :goto_3

    :cond_6
    :goto_2
    move v8, v0

    :goto_3
    invoke-virtual {v7, v8}, Lorg/telegram/ui/CodeNumberField;->setShowSoftInputOnFocusCompat(Z)V

    .line 4320
    :cond_7
    new-instance v8, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    invoke-direct {v8, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4336
    new-instance v8, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda6;

    invoke-direct {v8, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4348
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    if-nez p1, :cond_9

    return-void

    .line 4352
    :cond_9
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4354
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->newTelegramRulesTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4355
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$9700(Lorg/telegram/ui/LoginActivity;)Z

    move-result v1

    const-string v7, "+"

    const/4 v8, 0x4

    const-string v9, ""

    if-eqz v1, :cond_a

    .line 4356
    new-instance v1, Landroid/text/SpannableStringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->CancelAccountResetInfo2:I

    new-array v10, v0, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v11, p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v10, v5

    const-string p1, "CancelAccountResetInfo2"

    invoke-static {p1, v2, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 p1, 0x2a

    .line 4358
    invoke-static {v1, p1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    .line 4359
    invoke-static {v1, p1}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result p1

    const/4 v10, -0x1

    if-eq v2, v10, :cond_10

    if-eq p1, v10, :cond_10

    if-eq v2, p1, :cond_10

    .line 4361
    iget-object v10, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    new-instance v11, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v11}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    add-int/lit8 v10, p1, 0x1

    .line 4362
    invoke-virtual {v1, p1, v10, v9}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v10, v2, 0x1

    .line 4363
    invoke-virtual {v1, v2, v10, v9}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4364
    new-instance v10, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    const-string v11, "tg://settings/change_number"

    invoke-direct {v10, v11}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    sub-int/2addr p1, v0

    const/16 v11, 0x21

    invoke-virtual {v1, v10, v2, p1, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    .line 4368
    :cond_a
    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-ne v1, v0, :cond_b

    .line 4370
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->newTelegramRulesTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4371
    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4382
    sget v1, Lorg/telegram/messenger/R$string;->SentAppCodeWithPhone:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->addNbsp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    const-string p1, "SentAppCodeWithPhone"

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    goto :goto_4

    :cond_b
    if-ne v1, v4, :cond_c

    .line 4384
    sget v1, Lorg/telegram/messenger/R$string;->SentSmsCode:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->addNbsp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    const-string p1, "SentSmsCode"

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    goto :goto_4

    :cond_c
    if-ne v1, v3, :cond_d

    .line 4386
    sget v1, Lorg/telegram/messenger/R$string;->SentCallCode:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->addNbsp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    const-string p1, "SentCallCode"

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    goto :goto_4

    :cond_d
    if-ne v1, v8, :cond_e

    .line 4388
    sget v1, Lorg/telegram/messenger/R$string;->SentCallOnly:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->addNbsp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    const-string p1, "SentCallOnly"

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    goto :goto_4

    :cond_e
    if-ne v1, v2, :cond_f

    .line 4390
    sget v1, Lorg/telegram/messenger/R$string;->SentFragmentCode:I

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->addNbsp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    const-string p1, "SentFragmentCode"

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    goto :goto_4

    :cond_f
    move-object v1, v9

    .line 4393
    :cond_10
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4395
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-eq p1, v3, :cond_11

    .line 4396
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v1, v1, v5

    invoke-static {p1, v1}, Lorg/telegram/ui/LoginActivity;->access$4100(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z

    .line 4397
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object p1, p1, v5

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_5

    .line 4399
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object p1, p1, v5

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 4402
    :goto_5
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 4403
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 4405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-double v1, v1

    iput-wide v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCurrentTime:D

    .line 4406
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v1, 0xb

    if-ne p1, v0, :cond_12

    .line 4407
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setProblemTextVisible(Z)V

    .line 4408
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4409
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    if-eqz p1, :cond_29

    .line 4410
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_d

    :cond_12
    const-string v2, "SmsAvailableIn"

    const-string v10, "CallAvailableIn"

    const/4 v11, 0x0

    if-ne p1, v3, :cond_1a

    .line 4412
    iget v12, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v12, v8, :cond_13

    if-ne v12, v4, :cond_1a

    .line 4413
    :cond_13
    invoke-direct {p0, v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setProblemTextVisible(Z)V

    .line 4414
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4415
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4416
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq p1, v8, :cond_15

    if-ne p1, v1, :cond_14

    goto :goto_6

    :cond_14
    if-ne p1, v4, :cond_16

    .line 4419
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->SmsAvailableIn:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 4417
    :cond_15
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->CallAvailableIn:I

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v10, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_16
    :goto_7
    if-eqz p2, :cond_17

    .line 4421
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->obtainLoginPhoneCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_17
    if-eqz v11, :cond_18

    .line 4423
    invoke-virtual {p0, v11}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 4424
    :cond_18
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    if-eqz p1, :cond_19

    .line 4425
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 4427
    :cond_19
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    goto/16 :goto_d

    :cond_1a
    const/16 p2, 0x3e8

    if-ne p1, v4, :cond_22

    .line 4429
    iget v12, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v12, v8, :cond_1b

    if-ne v12, v3, :cond_22

    .line 4430
    :cond_1b
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->CallAvailableIn:I

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v10, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4431
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-ge p1, p2, :cond_1c

    move p1, v0

    goto :goto_8

    :cond_1c
    move p1, v5

    :goto_8
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setProblemTextVisible(Z)V

    .line 4432
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    iget v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-ge v2, p2, :cond_1d

    move v2, v6

    goto :goto_9

    :cond_1d
    move v2, v5

    :goto_9
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4433
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    if-eqz p1, :cond_1f

    .line 4434
    iget v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-ge v2, p2, :cond_1e

    move v6, v5

    :cond_1e
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4437
    :cond_1f
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p2, "mainconfig"

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "sms_hash"

    .line 4438
    invoke-interface {p1, p2, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4440
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "sms_hash_code"

    .line 4441
    invoke-interface {p1, v2, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 4442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_20

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$4600(Lorg/telegram/ui/LoginActivity;)Z

    move-result p2

    if-nez p2, :cond_20

    const/16 p2, 0x7c

    .line 4443
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :cond_20
    move-object p1, v11

    :goto_a
    if-eqz p1, :cond_21

    .line 4449
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/CodeFieldContainer;->setCode(Ljava/lang/String;)V

    .line 4450
    invoke-virtual {p0, v11}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed(Ljava/lang/String;)V

    goto :goto_d

    .line 4452
    :cond_21
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    goto :goto_d

    :cond_22
    if-ne p1, v8, :cond_27

    .line 4454
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-ne p1, v4, :cond_27

    .line 4455
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->SmsAvailableIn:I

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v0

    invoke-static {v2, v3, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4456
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-ge p1, p2, :cond_23

    goto :goto_b

    :cond_23
    move v0, v5

    :goto_b
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setProblemTextVisible(Z)V

    .line 4457
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-ge v0, p2, :cond_24

    move v0, v6

    goto :goto_c

    :cond_24
    move v0, v5

    :goto_c
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4458
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    if-eqz p1, :cond_26

    .line 4459
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-ge v0, p2, :cond_25

    move v6, v5

    :cond_25
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4461
    :cond_26
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    goto :goto_d

    .line 4463
    :cond_27
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4464
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    if-eqz p1, :cond_28

    .line 4465
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4467
    :cond_28
    invoke-direct {p0, v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setProblemTextVisible(Z)V

    .line 4468
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createCodeTimer()V

    .line 4471
    :cond_29
    :goto_d
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-ne p1, v1, :cond_2d

    .line 4472
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefix:Ljava/lang/String;

    move p2, v5

    .line 4473
    :goto_e
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    const-string v1, "0"

    if-ge p2, v0, :cond_2a

    .line 4474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 p2, p2, 0x1

    goto :goto_e

    .line 4476
    :cond_2a
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move p2, v5

    .line 4477
    :goto_f
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    if-ge p2, v0, :cond_2c

    .line 4478
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2b

    .line 4480
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2b
    add-int/lit8 p2, p2, 0x1

    goto :goto_f

    :cond_2c
    const-string p2, "\\)"

    .line 4483
    invoke-virtual {p1, p2, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\("

    .line 4484
    invoke-virtual {p1, p2, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4485
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefixTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2d
    return-void
.end method

.method public updateColors()V
    .locals 6

    .line 4096
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$9700(Lorg/telegram/ui/LoginActivity;)Z

    move-result v1

    const-string v2, "windowBackgroundWhiteGrayText6"

    const-string v3, "windowBackgroundWhiteBlackText"

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4097
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const-string v1, "chats_actionBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 4099
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->newTelegramRulesTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v4}, Lorg/telegram/ui/LoginActivity;->access$9700(Lorg/telegram/ui/LoginActivity;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4100
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->newTelegramRulesTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 4102
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4104
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 4105
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4106
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallArrowIcon:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v4, "windowBackgroundWhiteInputFieldActivated"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4107
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallPhoneIcon:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4108
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefixTextView:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4111
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->applyLottieColors(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 4112
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->starsToDotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->applyLottieColors(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 4113
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->applyLottieColors(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 4114
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsToStarsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->applyLottieColors(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 4116
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    if-eqz v0, :cond_3

    .line 4117
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 4120
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v0

    .line 4122
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4124
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_5

    .line 4125
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlueText4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4126
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4128
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    const-string v1, "dialogTextRed"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
