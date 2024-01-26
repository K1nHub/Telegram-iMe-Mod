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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;
    }
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

.field private isNeedOpenTelegramButton:Z

.field private isResendingCode:Z

.field private lastCodeTime:D

.field private lastCurrentTime:D

.field private lastError:Ljava/lang/String;

.field private length:I

.field private missedCallArrowIcon:Landroid/widget/ImageView;

.field private missedCallDescriptionSubtitle:Landroid/widget/TextView;

.field private missedCallDescriptionSubtitle2:Landroid/widget/TextView;

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

.field private problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

.field private progressView:Lorg/telegram/ui/LoginActivity$ProgressView;

.field private requestPhone:Ljava/lang/String;

.field private starsToDotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field private time:I

.field private timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

.field private timeTimer:Ljava/util/Timer;

.field private final timerSync:Ljava/lang/Object;

.field private titleTextView:Landroid/widget/TextView;

.field private url:Ljava/lang/String;

.field private waitingForEvent:Z

.field private wrongCode:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$1RGFGkPRFcK8f7TskDeJCQlDTmg(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$35(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2JEIyCNHfJyvMQSmE9ogIxtHngQ(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3GKXJBiB4txiIkpjmWU55BQQmjc(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$26(Landroid/app/Activity;)V

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

.method public static synthetic $r8$lambda$ATEbtR3uBqVbBU4xHeFkBwvn18U(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$resendCode$9(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bgue1NjNBTqmXYqdPHtOqDAxjKE(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onShow$43()V

    return-void
.end method

.method public static synthetic $r8$lambda$EhIj4ri4kg3O0uN0h9Re9k3szqg(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$shakeWrongCode$40()V

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

.method public static synthetic $r8$lambda$K7-_1w2nkJPSHTtrf6W25TrXyzw(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$animateSuccess$38(Ljava/lang/Runnable;)V

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

.method public static synthetic $r8$lambda$Q5mCsjDSZw_4rghLxKAGu0jX4a0(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$36(Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$V2JWcufBvldFA9OhwK36wADhDSw()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$34()V

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

.method public static synthetic $r8$lambda$WDj5HmqEAqHsU8eSRGWzslTYIXc(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onBackPressed$41(Landroid/content/DialogInterface;I)V

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

.method public static synthetic $r8$lambda$h0I6xqRUd_XRIvwNnYjv5lqtwxY(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$new$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$i97NdTERXB_HGut8FpUq6wzNiik(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$new$2(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jjNsJyofeJ-mpDbX6RGnSkTrhpE(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onBackPressed$42(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

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

.method public static synthetic $r8$lambda$oEAIiUowYSqw-FzuTVyHcdFccPA(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$animateSuccess$37(I)V

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

.method public static synthetic $r8$lambda$uydstoPPt8JQl-8f7RkQnGuHBCA(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$onNextPressed$29(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xf14Kt3bH8aJSKI4wK41ubYccPE(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lambda$new$7(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;I)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 3813
    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 3814
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    .line 3777
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    const v3, 0xea60

    .line 3778
    iput v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    const/16 v3, 0x3a98

    .line 3779
    iput v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    const-string v3, ""

    .line 3785
    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    const/4 v4, 0x0

    .line 3792
    iput-boolean v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isResendingCode:Z

    const-string v5, "*"

    .line 3794
    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    .line 3795
    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefix:Ljava/lang/String;

    .line 3801
    new-instance v5, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda9;

    invoke-direct {v5, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorColorTimeout:Ljava/lang/Runnable;

    move/from16 v5, p3

    .line 3816
    iput v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v5, 0x1

    .line 3817
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3819
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/high16 v7, 0x41600000    # 14.0f

    .line 3820
    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3821
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v6, v9, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3823
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->newTelegramRulesTextView:Landroid/widget/TextView;

    .line 3824
    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3825
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v9, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3826
    new-instance v9, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v9}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 3827
    sget v9, Lorg/telegram/messenger/R$string;->new_telegram_authorization_rules_info:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v9

    .line 3828
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v12, 0x2a

    .line 3829
    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    add-int/lit8 v14, v13, 0x1

    .line 3830
    invoke-virtual {v9, v12, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v12, -0x1

    if-eq v13, v12, :cond_0

    if-eq v9, v12, :cond_0

    if-eq v13, v9, :cond_0

    add-int/lit8 v15, v9, 0x1

    .line 3832
    invoke-virtual {v11, v9, v15, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3833
    invoke-virtual {v11, v13, v14, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3834
    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/ui/LoginActivity;)V

    sub-int/2addr v9, v5

    const/16 v14, 0x21

    invoke-virtual {v11, v3, v13, v9, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3848
    :cond_0
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x8

    .line 3849
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3852
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    const/high16 v11, 0x41900000    # 18.0f

    .line 3853
    invoke-virtual {v9, v5, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3854
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    const-string v11, "fonts/rmedium.ttf"

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3855
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    sget-boolean v13, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v13, :cond_1

    const/4 v13, 0x5

    goto :goto_0

    :cond_1
    const/4 v13, 0x3

    :goto_0
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 3856
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v9, v13, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3857
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    const/16 v13, 0x31

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 3860
    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$3600(Lorg/telegram/ui/LoginActivity;)I

    move-result v9

    if-eq v9, v5, :cond_2

    const/4 v9, 0x0

    goto :goto_1

    .line 3866
    :cond_2
    sget v9, Lorg/telegram/messenger/R$string;->CancelAccountReset:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3870
    :goto_1
    iget v15, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v3, 0xb

    const/16 v13, 0x10

    const/4 v14, -0x2

    if-ne v15, v3, :cond_4

    .line 3871
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

    .line 3873
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3874
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallArrowIcon:Landroid/widget/ImageView;

    .line 3875
    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallPhoneIcon:Landroid/widget/ImageView;

    .line 3876
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallArrowIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3877
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallPhoneIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3879
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallArrowIcon:Landroid/widget/ImageView;

    sget v15, Lorg/telegram/messenger/R$drawable;->login_arrow1:I

    invoke-virtual {v9, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3880
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

    .line 3882
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3883
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    const/16 v16, -0x2

    const/16 v17, -0x2

    const/16 v18, 0x31

    const/16 v20, 0x8

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3885
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle:Landroid/widget/TextView;

    .line 3886
    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3887
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 3888
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v9, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3889
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle:Landroid/widget/TextView;

    sget v9, Lorg/telegram/messenger/R$string;->MissedCallDescriptionSubtitle:I

    const-string v15, "MissedCallDescriptionSubtitle"

    invoke-static {v15, v9}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3891
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle:Landroid/widget/TextView;

    const/16 v16, -0x1

    const/16 v19, 0x24

    const/16 v20, 0x10

    const/16 v21, 0x24

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3893
    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$2;

    invoke-direct {v6, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    .line 3900
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3901
    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3902
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefixTextView:Landroid/widget/TextView;

    const/high16 v15, 0x41a00000    # 20.0f

    .line 3903
    invoke-virtual {v9, v5, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3904
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefixTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 3905
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefixTextView:Landroid/widget/TextView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3906
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefixTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3907
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefixTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 3909
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

    .line 3910
    iget-object v9, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-static {v14, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v6, v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v17, 0x22

    const/16 v18, 0x1

    const/16 v20, 0x1c

    const/16 v21, 0x0

    .line 3912
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3914
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle2:Landroid/widget/TextView;

    .line 3915
    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3916
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle2:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 3917
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle2:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v7, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3918
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle2:Landroid/widget/TextView;

    sget v7, Lorg/telegram/messenger/R$string;->MissedCallDescriptionSubtitle2:I

    const-string v9, "MissedCallDescriptionSubtitle2"

    invoke-static {v9, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3920
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle2:Landroid/widget/TextView;

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

    .line 3922
    iget-object v6, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 3923
    new-instance v15, Landroid/widget/FrameLayout;

    invoke-direct {v15, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3924
    invoke-static {v12, v4, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v15, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3926
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3927
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3928
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v8, 0x11

    .line 3929
    invoke-static {v12, v14, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v15, v6, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3930
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 3931
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_3

    :cond_5
    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_3
    iput v8, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 3933
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3934
    invoke-static {v14, v14, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3936
    new-instance v8, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v8, v2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 3937
    new-instance v8, Lorg/telegram/ui/Components/RLottieDrawable;

    sget v19, Lorg/telegram/messenger/R$raw;->phone_flash_call:I

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v21

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v22

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v18, v8

    invoke-direct/range {v18 .. v24}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;IIZ[I)V

    iput-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 3938
    iget-object v12, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v12, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 3939
    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v7, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3941
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    if-eqz v9, :cond_6

    goto :goto_4

    :cond_6
    sget v7, Lorg/telegram/messenger/R$string;->YourCode:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_4
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3942
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x10

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3943
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/16 v23, 0x8

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_b

    .line 3945
    :cond_7
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/16 v8, 0x31

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 3946
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 3948
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x31

    const/16 v22, 0x0

    const/16 v23, 0x10

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 3949
    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3951
    iget v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-ne v8, v5, :cond_8

    const/16 v7, 0x80

    :cond_8
    move/from16 v20, v7

    if-ne v8, v5, :cond_9

    .line 3953
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

    .line 3955
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

    .line 3957
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

    .line 3958
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

    .line 3959
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

    .line 3961
    :goto_5
    new-instance v7, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v7, v2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 3962
    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 3963
    iget v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-ne v7, v5, :cond_a

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v7

    if-nez v7, :cond_a

    .line 3964
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v8, 0x18

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 3966
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

    invoke-virtual {v4, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3967
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

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
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3968
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x31

    const/16 v22, 0x0

    const/16 v23, 0x12

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3969
    iget v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v7, 0xf

    if-ne v4, v7, :cond_e

    move v4, v13

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    .line 3970
    :goto_9
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x31

    const/16 v23, 0x11

    const/16 v25, 0x0

    move/from16 v22, v4

    move/from16 v24, v4

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v23, 0xc

    .line 3971
    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_a
    const/4 v15, 0x0

    .line 3973
    :goto_b
    iget v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-eq v4, v3, :cond_f

    .line 3974
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

    .line 3981
    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3983
    :cond_f
    iget v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_10

    .line 3984
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3987
    :cond_10
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemFrame:Landroid/widget/FrameLayout;

    .line 3989
    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;

    invoke-direct {v3, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$4;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    const/4 v4, 0x2

    .line 3995
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v4, v6

    invoke-virtual {v3, v4, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 3996
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    const/16 v4, 0xe

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    const/16 v7, 0x8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-virtual {v3, v6, v8, v7, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3997
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    const/high16 v6, 0x41700000    # 15.0f

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3998
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    const/16 v7, 0x31

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 3999
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    new-instance v8, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda6;

    invoke-direct {v8, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4041
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemFrame:Landroid/widget/FrameLayout;

    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    invoke-static {v14, v14, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4043
    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;

    invoke-direct {v3, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$5;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 4050
    iget v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v7, 0xf

    if-eq v3, v7, :cond_11

    .line 4051
    sget v3, Lorg/telegram/messenger/R$anim;->text_in:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 4052
    sget-object v7, Lorg/telegram/ui/Components/Easings;->easeInOutQuad:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4053
    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v8, v3}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 4055
    sget v3, Lorg/telegram/messenger/R$anim;->text_out:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 4056
    invoke-virtual {v3, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4057
    iget-object v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7, v3}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 4059
    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;

    invoke-direct {v3, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$6;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    const/4 v1, 0x2

    .line 4065
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v1, v7

    invoke-virtual {v3, v1, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 4066
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    invoke-virtual {v1, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4067
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    const/16 v3, 0x31

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 4068
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v7, 0x8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    invoke-virtual {v1, v3, v7, v4, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4069
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemFrame:Landroid/widget/FrameLayout;

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    const/16 v4, 0x11

    const/4 v7, -0x1

    invoke-static {v7, v14, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4070
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemFrame:Landroid/widget/FrameLayout;

    invoke-static {v14, v14, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_c

    .line 4072
    :cond_11
    sget v1, Lorg/telegram/messenger/R$anim;->scale_in:I

    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 4073
    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4074
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 4076
    sget v1, Lorg/telegram/messenger/R$anim;->scale_out:I

    invoke-static {v2, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 4077
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4078
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 4080
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    .line 4081
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4082
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 4083
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    const/16 v4, 0x22

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1, v7, v3, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 4084
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    const/4 v3, 0x6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_changephoneinfo_image2:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-static {v3, v4, v7}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4085
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4092
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    const/16 v4, 0x34

    const/4 v7, -0x1

    invoke-static {v7, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4094
    new-instance v1, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 4095
    sget v3, Lorg/telegram/messenger/R$raw;->fragment:I

    const/16 v4, 0x24

    const/16 v7, 0x24

    invoke-virtual {v1, v3, v4, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 4096
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

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4098
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButtonText:Landroid/widget/TextView;

    .line 4099
    sget v3, Lorg/telegram/messenger/R$string;->OpenFragment:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4100
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButtonText:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4101
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4102
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButtonText:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 4103
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButtonText:Landroid/widget/TextView;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4104
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4107
    :goto_c
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    .line 4108
    sget v3, Lorg/telegram/messenger/R$string;->WrongCode:I

    const-string v4, "WrongCode"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4109
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 4110
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4111
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    const/16 v3, 0x31

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 4112
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3, v5, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4113
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-static {v14, v14, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v15, :cond_13

    .line 4116
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->bottomContainer:Landroid/widget/FrameLayout;

    .line 4117
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    iget v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v5, 0xf

    if-ne v4, v5, :cond_12

    const/16 v19, -0x1

    goto :goto_d

    :cond_12
    move/from16 v19, v14

    :goto_d
    const/16 v20, -0x2

    const/16 v21, 0x51

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x20

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4118
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->bottomContainer:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v3, v4, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    .line 4120
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x51

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x20

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v15, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4122
    :goto_e
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-static {v1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    .line 4124
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v3, 0xf

    if-eq v1, v3, :cond_14

    .line 4125
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0, v2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    return-void
.end method

.method static synthetic access$10200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Z
    .locals 0

    .line 3709
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->postedErrorColorTimeout:Z

    return p0
.end method

.method static synthetic access$10300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/lang/Runnable;
    .locals 0

    .line 3709
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorColorTimeout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$10400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Landroid/widget/TextView;
    .locals 0

    .line 3709
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->newTelegramRulesTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$10500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)D
    .locals 2

    .line 3709
    iget-wide v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCodeTime:D

    return-wide v0
.end method

.method static synthetic access$10502(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)D
    .locals 0

    .line 3709
    iput-wide p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCodeTime:D

    return-wide p1
.end method

.method static synthetic access$10600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .locals 0

    .line 3709
    iget p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    return p0
.end method

.method static synthetic access$10626(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)I
    .locals 2

    .line 3709
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    int-to-double v0, v0

    sub-double/2addr v0, p1

    double-to-int p1, v0

    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    return p1
.end method

.method static synthetic access$10700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Z)V
    .locals 0

    .line 3709
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setProblemTextVisible(Z)V

    return-void
.end method

.method static synthetic access$10800(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;
    .locals 0

    .line 3709
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    return-object p0
.end method

.method static synthetic access$10900(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    .line 3709
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    return-void
.end method

.method static synthetic access$11000(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)D
    .locals 2

    .line 3709
    iget-wide v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCurrentTime:D

    return-wide v0
.end method

.method static synthetic access$11002(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)D
    .locals 0

    .line 3709
    iput-wide p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCurrentTime:D

    return-wide p1
.end method

.method static synthetic access$11100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .locals 0

    .line 3709
    iget p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    return p0
.end method

.method static synthetic access$11200(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .locals 0

    .line 3709
    iget p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    return p0
.end method

.method static synthetic access$11300(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$ProgressView;
    .locals 0

    .line 3709
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->progressView:Lorg/telegram/ui/LoginActivity$ProgressView;

    return-object p0
.end method

.method static synthetic access$11400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V
    .locals 0

    .line 3709
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .locals 0

    .line 3709
    iget p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openTime:I

    return p0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)I
    .locals 0

    .line 3709
    iget p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    return p0
.end method

.method static synthetic access$9426(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;D)I
    .locals 2

    .line 3709
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    int-to-double v0, v0

    sub-double/2addr v0, p1

    double-to-int p1, v0

    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    return p1
.end method

.method static synthetic access$9500(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Ljava/util/Timer;
    .locals 0

    .line 3709
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Z
    .locals 0

    .line 3709
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    return p0
.end method

.method static synthetic access$9700(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;
    .locals 0

    .line 3709
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    return-object p0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)Z
    .locals 0

    .line 3709
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isResendingCode:Z

    return p0
.end method

.method private animateSuccess(Ljava/lang/Runnable;)V
    .locals 7

    .line 5155
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 5156
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 5159
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v2

    const-wide/16 v3, 0x4b

    if-ge v0, v2, :cond_1

    .line 5161
    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;I)V

    int-to-long v5, v0

    mul-long/2addr v5, v3

    invoke-virtual {v1, v2, v5, v6}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5163
    :cond_1
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Ljava/lang/Runnable;)V

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

    .line 4210
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const-string v1, "Bubble.**"

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 4211
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const-string v2, "Phone.**"

    invoke-virtual {p1, v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    .line 4212
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const-string v1, "Note.**"

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setLayerColor(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private createCodeTimer()V
    .locals 8

    .line 4730
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3a98

    .line 4733
    iput v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    .line 4734
    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-le v1, v0, :cond_1

    .line 4735
    iput v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTime:I

    .line 4737
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    .line 4738
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCodeTime:D

    .line 4739
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

    .line 4774
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    return-void

    .line 4777
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4778
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    sget v2, Lorg/telegram/messenger/R$id;->color_key_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 4782
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    .line 4783
    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;

    invoke-direct {v4, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$10;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x3e8

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private destroyCodeTimer()V
    .locals 2

    .line 4762
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4763
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 4764
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 4765
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeTimer:Ljava/util/Timer;

    .line 4767
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

    .line 4769
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private destroyTimer()V
    .locals 3

    .line 4827
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4828
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    sget v2, Lorg/telegram/messenger/R$id;->color_key_tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 4830
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timerSync:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4831
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 4832
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    .line 4833
    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    .line 4835
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

    .line 4837
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$animateSuccess$37(I)V
    .locals 1

    .line 5161
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object p1, v0, p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lorg/telegram/ui/CodeNumberField;->animateSuccessProgress(F)V

    return-void
.end method

.method private synthetic lambda$animateSuccess$38(Ljava/lang/Runnable;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 5164
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 5165
    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/CodeNumberField;->animateSuccessProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5167
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 5168
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iput-boolean v0, p1, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    const/4 v0, 0x0

    .line 3802
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->postedErrorColorTimeout:Z

    .line 3803
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 3804
    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3807
    :cond_0
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentButton:Landroid/widget/LinearLayout;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemFrame:Landroid/widget/FrameLayout;

    .line 3808
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    if-eq v1, v0, :cond_2

    .line 3809
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    .line 4028
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/LoginActivity;->access$8500(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 4030
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 4028
    new-instance p3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda26;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 4029
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 4030
    new-instance p1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda29;

    invoke-direct {p1, p0, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 3

    .line 4003
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-lez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeTimer:Ljava/util/Timer;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 4006
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isResendingCode:Z

    .line 4007
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    .line 4008
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4010
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

    .line 4034
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 4035
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4036
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 4037
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 4038
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->resendCode()V

    goto :goto_3

    :cond_2
    :goto_0
    if-eq p1, v1, :cond_4

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 4015
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    sget v0, Lorg/telegram/messenger/R$string;->SendingSms:I

    const-string v1, "SendingSms"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 4013
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    sget v0, Lorg/telegram/messenger/R$string;->Calling:I

    const-string v1, "Calling"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4017
    :goto_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 4018
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    const-string v1, "phone"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4019
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->emailPhone:Ljava/lang/String;

    const-string v1, "ephone"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4020
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    const-string v1, "phoneFormated"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4022
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createCodeTimer()V

    .line 4023
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;-><init>()V

    .line 4024
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_number:Ljava/lang/String;

    .line 4025
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_code_hash:Ljava/lang/String;

    .line 4026
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$12700(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda39;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;)V

    const/16 p1, 0xa

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    :cond_5
    :goto_3
    return-void
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 3

    .line 4087
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

    .line 4089
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$6(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 4147
    :try_start_0
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 4148
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s (%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {p2, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4150
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.SENDTO"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "mailto:"

    .line 4151
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.EMAIL"

    const-string v1, "sms@telegram.org"

    .line 4152
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.SUBJECT"

    .line 4153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android registration/login issue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->emailPhone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 4154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Phone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nApp version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nOS version: SDK "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\nDevice Name: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nLocale: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\nError: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4155
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Send email..."

    invoke-static {p2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4157
    :catch_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->NoMailInstalled:I

    const-string v1, "NoMailInstalled"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$7(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 4161
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v0}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private synthetic lambda$new$8(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 4127
    iget-boolean p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isNeedOpenTelegramButton:Z

    if-eqz p2, :cond_0

    .line 4128
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->openTelegramApp(Landroid/content/Context;)V

    return-void

    .line 4132
    :cond_0
    iget-boolean p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    if-nez p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_6

    :cond_1
    iget-boolean p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isResendingCode:Z

    if-eqz p2, :cond_2

    goto :goto_1

    .line 4135
    :cond_2
    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_3

    move p2, v0

    goto :goto_0

    :cond_3
    move p2, v1

    :goto_0
    if-nez p2, :cond_5

    .line 4137
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$1100(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/RadialProgressView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    return-void

    .line 4140
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->resendCode()V

    goto :goto_1

    .line 4142
    :cond_5
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    .line 4143
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->DidNotGetTheCodeInfo:I

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "DidNotGetTheCodeInfo"

    .line 4144
    invoke-static {v1, p2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->DidNotGetTheCodeHelpButton:I

    .line 4145
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->Close:I

    .line 4160
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->DidNotGetTheCodeEditNumberButton:I

    .line 4161
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 4162
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_6
    :goto_1
    return-void
.end method

.method private synthetic lambda$onBackPressed$41(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, 0x1

    .line 5219
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onBackPressed(Z)Z

    .line 5220
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1, p1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private static synthetic lambda$onBackPressed$42(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$onNextPressed$21(Landroid/content/DialogInterface;)V
    .locals 0

    .line 4918
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$onNextPressed$22()V
    .locals 7

    .line 4912
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4914
    :catch_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->YourPasswordSuccess:I

    .line 4915
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->ChangePhoneNumberSuccessWithPhone:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4916
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

    .line 4917
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 4918
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 4919
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private synthetic lambda$onNextPressed$23(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4891
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryHideProgress(ZZ)V

    .line 4892
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez p1, :cond_1

    .line 4894
    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    .line 4895
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 4896
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 4897
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$12200(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 4898
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$12300(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 4899
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4900
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4901
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v4}, Lorg/telegram/ui/LoginActivity;->access$12400(Lorg/telegram/ui/LoginActivity;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, p1, v2, v1, v1}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 4902
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$12500(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 4903
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$12600(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 4904
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string p2, "VALIDATE_PHONE_NUMBER"

    invoke-virtual {p1, v0, v1, p2}, Lorg/telegram/messenger/MessagesController;->removeSuggestion(JLjava/lang/String;)V

    .line 4906
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-ne p1, v3, :cond_0

    .line 4907
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->endIncomingCall()V

    .line 4910
    :cond_0
    new-instance p1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->animateSuccess(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 4922
    :cond_1
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    .line 4923
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 4924
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/LoginActivity;->access$3400(Lorg/telegram/ui/LoginActivity;ZZ)V

    .line 4925
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

    .line 4926
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    .line 4928
    :cond_5
    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v4, 0xf

    if-ne p2, v4, :cond_6

    .line 4929
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {p2, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_6
    if-ne p2, v5, :cond_7

    .line 4931
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 4932
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {p2, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_7
    if-ne p2, v3, :cond_8

    .line 4934
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 4935
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {p2, p0, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4937
    :cond_8
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 4938
    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-eq p2, v3, :cond_f

    .line 4940
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "PHONE_NUMBER_INVALID"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 4941
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    const-string v2, "InvalidPhoneNumber"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4942
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

    .line 4945
    :cond_a
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "PHONE_CODE_EXPIRED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 4946
    invoke-virtual {p0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onBackPressed(Z)Z

    .line 4947
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1, v0, v1, v2, v1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 4948
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/R$string;->CodeExpired:I

    const-string v2, "CodeExpired"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4949
    :cond_b
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "FLOOD_WAIT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 4950
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v1, Lorg/telegram/messenger/R$string;->FloodWait:I

    const-string v2, "FloodWait"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4952
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

    invoke-static {p2, v1, p1}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v1, v0

    goto :goto_3

    .line 4943
    :cond_d
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->shakeWrongCode()V

    :goto_3
    if-nez v1, :cond_f

    move p1, v0

    .line 4956
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, p2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v1

    if-ge p1, v2, :cond_e

    .line 4957
    aget-object p2, v1, p1

    const-string v1, ""

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 4960
    :cond_e
    iput-boolean v0, p2, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 4961
    aget-object p1, v1, v0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_f
    :goto_5
    return-void
.end method

.method private synthetic lambda$onNextPressed$24(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 4890
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$25(Landroid/content/DialogInterface;)V
    .locals 0

    .line 4994
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$onNextPressed$26(Landroid/app/Activity;)V
    .locals 5

    .line 4990
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lorg/telegram/messenger/R$string;->CancelLinkSuccessTitle:I

    .line 4991
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->CancelLinkSuccess:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 4992
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "CancelLinkSuccess"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->Close:I

    .line 4993
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 4994
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 4995
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private synthetic lambda$onNextPressed$27(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;)V
    .locals 6

    const/4 v0, 0x0

    .line 4983
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryHideProgress(Z)V

    .line 4984
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    if-nez p1, :cond_1

    .line 4986
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 4990
    :cond_0
    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda23;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/app/Activity;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->animateSuccess(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 4997
    :cond_1
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    .line 4998
    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    iget v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v5, v2, :cond_4

    if-eq v5, v3, :cond_4

    :cond_2
    if-ne v1, v3, :cond_3

    iget v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v5, v2, :cond_4

    if-eq v5, v4, :cond_4

    :cond_3
    if-ne v1, v2, :cond_5

    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-ne v1, v3, :cond_5

    .line 5000
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    .line 5002
    :cond_5
    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v2, 0xf

    const/4 v5, 0x1

    if-ne v1, v2, :cond_6

    .line 5003
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_6
    if-ne v1, v3, :cond_7

    .line 5005
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 5006
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_7
    if-ne v1, v4, :cond_8

    .line 5008
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 5009
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 5011
    :cond_8
    :goto_0
    iput-boolean v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 5012
    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-eq v1, v4, :cond_9

    .line 5013
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$12100(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v2, p2, v3}, Lorg/telegram/ui/Components/AlertsCreator;->processError(ILorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLObject;[Ljava/lang/Object;)Landroid/app/Dialog;

    .line 5015
    :cond_9
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "PHONE_CODE_EMPTY"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v1, "PHONE_CODE_INVALID"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_1

    .line 5017
    :cond_a
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "PHONE_CODE_EXPIRED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 5018
    invoke-virtual {p0, v5}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onBackPressed(Z)Z

    .line 5019
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, v5, p2, v5}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    .line 5016
    :cond_b
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->shakeWrongCode()V

    :cond_c
    :goto_2
    return-void
.end method

.method private synthetic lambda$onNextPressed$28(Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 4982
    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda34;

    invoke-direct {p2, p0, p3, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$29(Landroid/os/Bundle;)V
    .locals 4

    .line 5060
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$30(Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    .line 5062
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;

    invoke-static {v0, p1}, Lorg/telegram/ui/LoginActivity;->access$100(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V

    return-void
.end method

.method private synthetic lambda$onNextPressed$31(Landroid/os/Bundle;)V
    .locals 4

    .line 5086
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

    .line 5070
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 5071
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lorg/telegram/ui/LoginActivity;->access$3400(Lorg/telegram/ui/LoginActivity;ZZ)V

    if-nez p1, :cond_1

    .line 5073
    check-cast p2, Lorg/telegram/tgnet/TLRPC$account_Password;

    .line 5074
    invoke-static {p2, v2}, Lorg/telegram/ui/TwoStepVerificationActivity;->canHandleCurrentPassword(Lorg/telegram/tgnet/TLRPC$account_Password;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5075
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UpdateAppAlert:I

    const-string p3, "UpdateAppAlert"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lorg/telegram/ui/Components/AlertsCreator;->showUpdateAppAlert(Landroid/content/Context;Ljava/lang/String;Z)Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 5078
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 5079
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-virtual {p2}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/telegram/tgnet/SerializedData;-><init>(I)V

    .line 5080
    invoke-virtual {p2, v0}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 5081
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    const-string v0, "password"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5082
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    const-string v0, "phoneFormated"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5083
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    const-string v0, "phoneHash"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5084
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code:Ljava/lang/String;

    const-string p3, "code"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5086
    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda24;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->animateSuccess(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5088
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p3, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onNextPressed$33(Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 5069
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$onNextPressed$34()V
    .locals 0

    .line 5108
    invoke-static {}, Lorg/telegram/messenger/CallReceiver;->checkLastReceivedCall()V

    return-void
.end method

.method private synthetic lambda$onNextPressed$35(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 5040
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryHideProgress(ZZ)V

    const/4 v2, 0x3

    if-nez p1, :cond_2

    .line 5045
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 5047
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/LoginActivity;->access$3400(Lorg/telegram/ui/LoginActivity;ZZ)V

    .line 5048
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 5049
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 5050
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;

    if-eqz p1, :cond_1

    .line 5051
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;

    .line 5052
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_auth_authorizationSignUpRequired;->terms_of_service:Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    if-eqz p1, :cond_0

    .line 5053
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/LoginActivity;->access$8402(Lorg/telegram/ui/LoginActivity;Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;)Lorg/telegram/tgnet/TLRPC$TL_help_termsOfService;

    .line 5055
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 5056
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    const-string v3, "phoneFormated"

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5057
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    const-string v3, "phoneHash"

    invoke-virtual {p1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5058
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code:Ljava/lang/String;

    const-string p3, "code"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5060
    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda25;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->animateSuccess(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 5062
    :cond_1
    new-instance p1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda28;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLObject;)V

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->animateSuccess(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 5065
    :cond_2
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;

    const-string v3, "SESSION_PASSWORD_NEEDED"

    .line 5066
    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 5068
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_account_getPassword;-><init>()V

    .line 5069
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$12000(Lorg/telegram/ui/LoginActivity;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda41;

    invoke-direct {v3, p0, p3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    const/16 p3, 0xa

    invoke-virtual {p2, p1, v3, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 5091
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 5092
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    goto/16 :goto_5

    .line 5094
    :cond_3
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 5095
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/LoginActivity;->access$3400(Lorg/telegram/ui/LoginActivity;ZZ)V

    .line 5096
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

    .line 5097
    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    .line 5099
    :cond_7
    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 p3, 0xf

    if-ne p2, p3, :cond_8

    .line 5100
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {p2, p0, p3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_8
    if-ne p2, v3, :cond_9

    .line 5102
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 5103
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {p2, p0, p3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_9
    if-ne p2, v2, :cond_a

    .line 5105
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 5106
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {p2, p0, p3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 5107
    sget-object p2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda35;->INSTANCE:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda35;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 5111
    :cond_a
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 5112
    iget p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-eq p2, v2, :cond_11

    .line 5114
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_NUMBER_INVALID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 5115
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    const-string v1, "InvalidPhoneNumber"

    invoke-static {v1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5116
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

    goto :goto_2

    .line 5119
    :cond_c
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_EXPIRED"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 5120
    invoke-virtual {p0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onBackPressed(Z)Z

    .line 5121
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, v1, p2, v1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 5122
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->CodeExpired:I

    const-string v1, "CodeExpired"

    invoke-static {v1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5123
    :cond_d
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "FLOOD_WAIT"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 5124
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->FloodWait:I

    const-string v1, "FloodWait"

    invoke-static {v1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5126
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

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v1, v0

    goto :goto_3

    .line 5117
    :cond_f
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->shakeWrongCode()V

    :goto_3
    if-nez v1, :cond_11

    move p1, v0

    .line 5130
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p3, p2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, p3

    if-ge p1, v1, :cond_10

    .line 5131
    aget-object p2, p3, p1

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 5134
    :cond_10
    iput-boolean v0, p2, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 5135
    aget-object p1, p3, v0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_11
    move v1, v0

    :goto_5
    if-eqz v1, :cond_12

    .line 5141
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-ne p1, v2, :cond_12

    .line 5142
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->endIncomingCall()V

    .line 5143
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    :cond_12
    return-void
.end method

.method private synthetic lambda$onNextPressed$36(Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 5039
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onShow$43()V
    .locals 3

    .line 5275
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    if-eqz v0, :cond_2

    .line 5276
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    if-eqz v0, :cond_1

    .line 5277
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

    .line 5278
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 5279
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v2, v1, v0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 5280
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v2, v0

    invoke-static {v1, v0}, Lorg/telegram/ui/LoginActivity;->access$4800(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z

    .line 5285
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_3

    .line 5286
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    .line 5288
    :cond_3
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 5289
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 5290
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openFragmentImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$resendCode$10(Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 4245
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p3, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$resendCode$9(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/os/Bundle;Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    const/4 v0, 0x0

    .line 4246
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    if-nez p1, :cond_0

    .line 4248
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_auth_sentCode;

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$8500(Lorg/telegram/ui/LoginActivity;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$auth_SentCode;)V

    goto/16 :goto_1

    .line 4250
    :cond_0
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    if-eqz p2, :cond_6

    const-string p3, "PHONE_NUMBER_INVALID"

    .line 4251
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4252
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->InvalidPhoneNumber:I

    const-string v1, "InvalidPhoneNumber"

    invoke-static {v1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4253
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

    .line 4255
    :cond_2
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "PHONE_CODE_EXPIRED"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    .line 4256
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onBackPressed(Z)Z

    .line 4257
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 p3, 0x0

    invoke-virtual {p2, v0, p1, p3, p1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    .line 4258
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->CodeExpired:I

    const-string v1, "CodeExpired"

    invoke-static {v1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4259
    :cond_3
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p3, "FLOOD_WAIT"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 4260
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$string;->FloodWait:I

    const-string v1, "FloodWait"

    invoke-static {v1, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4261
    :cond_4
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 p3, -0x3e8

    if-eq p2, p3, :cond_6

    .line 4262
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

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4254
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

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4266
    :cond_6
    :goto_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryHideProgress(Z)V

    return-void
.end method

.method private static synthetic lambda$setParams$19()V
    .locals 0

    .line 4373
    invoke-static {}, Lorg/telegram/messenger/CallReceiver;->checkLastReceivedCall()V

    return-void
.end method

.method private synthetic lambda$setParams$20(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 4417
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$1300(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    move-result-object p2

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setEditText(Landroid/widget/EditText;)V

    .line 4418
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$1300(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setDispatchBackWhenEmpty(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$shakeWrongCode$39()V
    .locals 3

    .line 5187
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 5188
    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 5190
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 5191
    aget-object v0, v0, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$shakeWrongCode$40()V
    .locals 3

    .line 5186
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$tryHideProgress$15()V
    .locals 2

    .line 4329
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 4330
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    return-void
.end method

.method private synthetic lambda$tryHideProgress$16()V
    .locals 1

    .line 4328
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$tryHideProgress$17()V
    .locals 2

    .line 4328
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsToStarsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnAnimationEndListener(Ljava/lang/Runnable;)V

    .line 4333
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 4334
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsToStarsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 4335
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsToStarsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 4336
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private synthetic lambda$tryHideProgress$18()V
    .locals 1

    .line 4327
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$tryShowProgress$11(IZ)V
    .locals 0

    .line 4295
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryShowProgress(IZ)V

    return-void
.end method

.method private synthetic lambda$tryShowProgress$12(IZ)V
    .locals 1

    .line 4295
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;IZ)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$tryShowProgress$13()V
    .locals 3

    .line 4300
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 4301
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 4302
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    .line 4303
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 4304
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void
.end method

.method private synthetic lambda$tryShowProgress$14()V
    .locals 1

    .line 4299
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resendCode()V
    .locals 4

    .line 4227
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isResendingCode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$5400(Lorg/telegram/ui/LoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4231
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isResendingCode:Z

    .line 4232
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 4233
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 4235
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4236
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    const-string v3, "phone"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4237
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->emailPhone:Ljava/lang/String;

    const-string v3, "ephone"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4238
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    const-string v3, "phoneFormated"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4240
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 4242
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;-><init>()V

    .line 4243
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_number:Ljava/lang/String;

    .line 4244
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resendCode;->phone_code_hash:Ljava/lang/String;

    .line 4245
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->access$10000(Lorg/telegram/ui/LoginActivity;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda38;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Landroid/os/Bundle;)V

    const/16 v1, 0xa

    invoke-virtual {v2, v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    .line 4268
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryShowProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setProblemTextVisible(Z)V
    .locals 2

    .line 4719
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4723
    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    .line 4724
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 4725
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

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

    .line 5174
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

    .line 5177
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 5178
    aget-object v2, v2, v1

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5179
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v2, v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5181
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    if-eq v1, v2, :cond_1

    .line 5182
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 5184
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 5185
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    const/high16 v1, 0x40600000    # 3.5f

    goto :goto_1

    :cond_2
    const/high16 v1, 0x41200000    # 10.0f

    :goto_1
    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;FLjava/lang/Runnable;)V

    .line 5195
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorColorTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5196
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorColorTimeout:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 5197
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->postedErrorColorTimeout:Z

    return-void
.end method

.method private tryFillGeneratedCode()V
    .locals 2

    .line 3729
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->generatedCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3730
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->generatedCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/CodeFieldContainer;->setCode(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3731
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->generatedCode:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private tryHideProgress(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 4316
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryHideProgress(ZZ)V

    return-void
.end method

.method private tryHideProgress(ZZ)V
    .locals 1

    .line 4320
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->starsToDotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_1

    .line 4321
    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isDotsAnimationVisible:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4324
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isDotsAnimationVisible:Z

    .line 4325
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 4326
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    .line 4327
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda17;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 4337
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4327
    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnFinishCallback(Ljava/lang/Runnable;I)V

    return-void

    .line 4340
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/LoginActivity;->access$10100(Lorg/telegram/ui/LoginActivity;ZZ)V

    return-void
.end method

.method private tryShowProgress(I)V
    .locals 1

    const/4 v0, 0x1

    .line 4285
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryShowProgress(IZ)V

    return-void
.end method

.method private tryShowProgress(IZ)V
    .locals 3

    .line 4289
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->starsToDotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_2

    .line 4290
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isDotsAnimationVisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4293
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isDotsAnimationVisible:Z

    .line 4294
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getCurrentFrame()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-eq v1, v2, :cond_1

    .line 4295
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;IZ)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnAnimationEndListener(Ljava/lang/Runnable;)V

    return-void

    .line 4299
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->starsToDotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance p2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setOnAnimationEndListener(Ljava/lang/Runnable;)V

    .line 4306
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 4307
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->starsToDotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 4308
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->starsToDotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 4309
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->blueImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    return-void

    .line 4312
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/LoginActivity;->access$6000(Lorg/telegram/ui/LoginActivity;IZ)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 3

    .line 5297
    iget-boolean p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, p2, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5300
    :cond_0
    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    const/4 v1, 0x0

    const-string v2, ""

    if-ne p1, v0, :cond_1

    .line 5301
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, p3, v1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/CodeFieldContainer;->setText(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 5302
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed(Ljava/lang/String;)V

    goto :goto_0

    .line 5303
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    if-ne p1, p2, :cond_4

    .line 5304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p3, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5305
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    invoke-static {p2, p1}, Lorg/telegram/messenger/AndroidUtilities;->checkPhonePattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    return-void

    .line 5308
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    const-string p3, "*"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 5309
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    .line 5310
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->endIncomingCall()V

    .line 5312
    :cond_3
    invoke-virtual {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed(Ljava/lang/String;)V

    .line 5313
    invoke-static {}, Lorg/telegram/messenger/CallReceiver;->clearLastCall()V

    :cond_4
    :goto_0
    return-void
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 2

    .line 4345
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4348
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->YourCode:I

    const-string v1, "YourCode"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4346
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public hasCustomKeyboard()Z
    .locals 2

    .line 4218
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

    .line 5208
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$3600(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5209
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 5214
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lorg/telegram/messenger/R$string;->EditNumber:I

    .line 5215
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->EditNumberInfo:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    aput-object v5, v2, v1

    const-string v5, "EditNumberInfo"

    .line 5216
    invoke-static {v5, v4, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->Close:I

    .line 5217
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->Edit:I

    .line 5218
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 5222
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 5214
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return v1

    .line 5225
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 5226
    invoke-direct {p0, v2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryHideProgress(Z)V

    .line 5227
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_auth_cancelCode;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_auth_cancelCode;-><init>()V

    .line 5228
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_cancelCode;->phone_number:Ljava/lang/String;

    .line 5229
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_auth_cancelCode;->phone_code_hash:Ljava/lang/String;

    .line 5230
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity;->access$11900(Lorg/telegram/ui/LoginActivity;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    sget-object v4, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda43;->INSTANCE:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda43;

    const/16 v5, 0xa

    invoke-virtual {v3, p1, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 5234
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 5235
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 5236
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    .line 5237
    iget p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    .line 5238
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 5240
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 5241
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 5243
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 5244
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {p1, p0, v0}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 5246
    :cond_4
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    return v2
.end method

.method public onCancelPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 4223
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .line 4273
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4275
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    if-eqz p1, :cond_3

    .line 4276
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 4277
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    .line 4278
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hasCustomKeyboard()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v4}, Lorg/telegram/ui/LoginActivity;->access$1400(Lorg/telegram/ui/LoginActivity;)Z

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

    .line 5252
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onDestroyActivity()V

    .line 5253
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_0

    .line 5254
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 5256
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 5257
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 5259
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 5260
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 5262
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 5263
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 5264
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 5202
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 5203
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->errorColorTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHide()V
    .locals 1

    .line 5319
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onHide()V

    const/4 v0, 0x0

    .line 5320
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isResendingCode:Z

    .line 5321
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    return-void
.end method

.method public onNextPressed(Ljava/lang/String;)V
    .locals 7

    .line 4844
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$1700(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0xf

    const/4 v3, 0x1

    const/16 v4, 0xb

    if-ne v0, v4, :cond_0

    .line 4845
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    if-eqz v0, :cond_2

    return-void

    .line 4849
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$1700(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$1700(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    if-le v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$1700(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    if-eq v0, v2, :cond_2

    goto/16 :goto_4

    :cond_2
    if-nez p1, :cond_3

    .line 4855
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object p1

    .line 4857
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 4858
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-static {p1, v0, v4}, Lorg/telegram/ui/LoginActivity;->access$5500(Lorg/telegram/ui/LoginActivity;Landroid/view/View;Z)V

    return-void

    .line 4862
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$1700(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    if-lt v0, v3, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$1700(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    if-gt v0, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-boolean v0, v0, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    if-eqz v0, :cond_5

    return-void

    .line 4866
    :cond_5
    iput-boolean v3, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextPressed:Z

    .line 4867
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v2, :cond_6

    .line 4868
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_6
    if-ne v0, v1, :cond_7

    .line 4870
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 4871
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_7
    const/4 v2, 0x3

    if-ne v0, v2, :cond_8

    .line 4873
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4875
    :cond_8
    :goto_0
    iput-boolean v4, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 4877
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$3600(Lorg/telegram/ui/LoginActivity;)I

    move-result v0

    const/4 v2, 0x0

    if-eq v0, v3, :cond_c

    if-eq v0, v1, :cond_a

    .line 5027
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;-><init>()V

    .line 5028
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_number:Ljava/lang/String;

    .line 5029
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code:Ljava/lang/String;

    .line 5030
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->phone_code_hash:Ljava/lang/String;

    .line 5031
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->flags:I

    or-int/2addr p1, v3

    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;->flags:I

    .line 5032
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 5034
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iput-boolean v3, p1, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 5035
    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, p1

    :goto_1
    if-ge v4, v1, :cond_9

    aget-object v5, p1, v4

    .line 5036
    invoke-virtual {v5, v2}, Lorg/telegram/ui/CodeNumberField;->animateFocusedProgress(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5039
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$11800(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_auth_signIn;)V

    const/16 v2, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    .line 5147
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryShowProgress(IZ)V

    .line 5148
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v3, v3}, Lorg/telegram/ui/LoginActivity;->access$3400(Lorg/telegram/ui/LoginActivity;ZZ)V

    goto/16 :goto_4

    .line 4879
    :cond_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;-><init>()V

    .line 4880
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;->phone_number:Ljava/lang/String;

    .line 4881
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;->phone_code:Ljava/lang/String;

    .line 4882
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_changePhone;->phone_code_hash:Ljava/lang/String;

    .line 4883
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 4885
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iput-boolean v3, p1, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 4886
    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v5, p1

    :goto_2
    if-ge v4, v5, :cond_b

    aget-object v6, p1, v4

    .line 4887
    invoke-virtual {v6, v2}, Lorg/telegram/ui/CodeNumberField;->animateFocusedProgress(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4890
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$11500(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda37;

    invoke-direct {v2, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    .line 4966
    invoke-direct {p0, p1, v3}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryShowProgress(IZ)V

    .line 4967
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1, v3, v3}, Lorg/telegram/ui/LoginActivity;->access$3400(Lorg/telegram/ui/LoginActivity;ZZ)V

    goto :goto_4

    .line 4971
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$11600(Lorg/telegram/ui/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    .line 4972
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;-><init>()V

    .line 4973
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;->phone_code:Ljava/lang/String;

    .line 4974
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;->phone_code_hash:Ljava/lang/String;

    .line 4975
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 4977
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iput-boolean v3, p1, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 4978
    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, p1

    :goto_3
    if-ge v4, v3, :cond_d

    aget-object v5, p1, v4

    .line 4979
    invoke-virtual {v5, v2}, Lorg/telegram/ui/CodeNumberField;->animateFocusedProgress(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 4982
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$11700(Lorg/telegram/ui/LoginActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda40;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;Lorg/telegram/tgnet/TLRPC$TL_account_confirmPhone;)V

    invoke-virtual {p1, v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    .line 5023
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryShowProgress(I)V

    :cond_e
    :goto_4
    return-void
.end method

.method public onShow()V
    .locals 3

    .line 5269
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 5270
    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->tryFillGeneratedCode()V

    .line 5271
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5272
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 5274
    :cond_0
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    .line 5292
    invoke-static {}, Lorg/telegram/ui/LoginActivity;->access$8100()I

    move-result v1

    int-to-long v1, v1

    .line 5274
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .locals 3

    .line 5346
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

    .line 5348
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setParams(Landroid/os/Bundle;Z)V

    :cond_0
    const-string v0, "catchedPhone"

    .line 5350
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5352
    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    .line 5354
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

    .line 5355
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v2, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    if-eqz v2, :cond_2

    .line 5356
    invoke-virtual {v1, v0}, Lorg/telegram/ui/CodeFieldContainer;->setText(Ljava/lang/String;)V

    :cond_2
    const-string v0, "time"

    .line 5358
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 5360
    iput v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    :cond_3
    const-string v0, "open"

    .line 5362
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_4

    .line 5364
    iput p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openTime:I

    :cond_4
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .locals 3

    .line 5326
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 5327
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 5328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smsview_code_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5330
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "catchedPhone"

    .line 5331
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5333
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 5334
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

    .line 5336
    :cond_2
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-eqz v0, :cond_3

    const-string v1, "time"

    .line 5337
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5339
    :cond_3
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openTime:I

    if-eqz v0, :cond_4

    const-string v1, "open"

    .line 5340
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method public setGeneratedCode(Ljava/lang/String;)V
    .locals 0

    .line 3721
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->generatedCode:Ljava/lang/String;

    return-void
.end method

.method public setParams(Landroid/os/Bundle;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 4362
    iput-boolean v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->waitingForEvent:Z

    .line 4363
    iget v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v4, 0xf

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ne v3, v4, :cond_1

    .line 4364
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v7, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v3, v0, v7}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_1
    if-ne v3, v6, :cond_2

    .line 4366
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 4367
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v7, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v3, v0, v7}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    goto :goto_0

    :cond_2
    if-ne v3, v5, :cond_3

    .line 4369
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 4370
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v7, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v3, v0, v7}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    if-eqz p2, :cond_3

    .line 4372
    sget-object v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda36;->INSTANCE:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda36;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4378
    :cond_3
    :goto_0
    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentParams:Landroid/os/Bundle;

    const-string v3, "phone"

    .line 4379
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    const-string v3, "ephone"

    .line 4380
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->emailPhone:Ljava/lang/String;

    const-string v3, "phoneFormated"

    .line 4381
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->requestPhone:Ljava/lang/String;

    const-string v3, "phoneHash"

    .line 4382
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phoneHash:Ljava/lang/String;

    const-string v3, "timeout"

    .line 4383
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    .line 4384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v3, v7

    iput v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->openTime:I

    const-string v3, "nextType"

    .line 4385
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    const-string v3, "pattern"

    .line 4386
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    const-string v3, "prefix"

    .line 4387
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefix:Ljava/lang/String;

    const-string v3, "length"

    .line 4388
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    if-nez v3, :cond_4

    const/4 v3, 0x5

    .line 4390
    iput v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    :cond_4
    const-string v3, "url"

    .line 4392
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->url:Ljava/lang/String;

    .line 4394
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    iget v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    invoke-virtual {v1, v3, v7}, Lorg/telegram/ui/CodeFieldContainer;->setNumbersCount(II)V

    .line 4395
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v3, v1

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v3, :cond_8

    aget-object v9, v1, v8

    .line 4396
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_7

    .line 4397
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hasCustomKeyboard()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v10}, Lorg/telegram/ui/LoginActivity;->access$1400(Lorg/telegram/ui/LoginActivity;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_2

    :cond_5
    move v10, v7

    goto :goto_3

    :cond_6
    :goto_2
    move v10, v2

    :goto_3
    invoke-virtual {v9, v10}, Lorg/telegram/ui/CodeNumberField;->setShowSoftInputOnFocusCompat(Z)V

    .line 4399
    :cond_7
    new-instance v10, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;

    invoke-direct {v10, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$7;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {v9, v10}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4415
    new-instance v10, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda8;

    invoke-direct {v10, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 4427
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    if-nez v1, :cond_9

    return-void

    .line 4431
    :cond_9
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->phone:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4433
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->newTelegramRulesTextView:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4434
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity;->access$9900(Lorg/telegram/ui/LoginActivity;)Z

    move-result v3

    const-string v9, "+"

    const/4 v10, -0x1

    const-string v11, ""

    const/4 v12, 0x4

    if-eqz v3, :cond_a

    .line 4435
    new-instance v3, Landroid/text/SpannableStringBuilder;

    sget v13, Lorg/telegram/messenger/R$string;->CancelAccountResetInfo2:I

    new-array v14, v2, [Ljava/lang/Object;

    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v15

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v14, v7

    const-string v1, "CancelAccountResetInfo2"

    invoke-static {v1, v13, v14}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0x2a

    .line 4437
    invoke-static {v3, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v8

    .line 4438
    invoke-static {v3, v1}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    if-eq v8, v10, :cond_10

    if-eq v1, v10, :cond_10

    if-eq v8, v1, :cond_10

    .line 4440
    iget-object v13, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    new-instance v14, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v14}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    add-int/lit8 v13, v1, 0x1

    .line 4441
    invoke-virtual {v3, v1, v13, v11}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v13, v8, 0x1

    .line 4442
    invoke-virtual {v3, v8, v13, v11}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4443
    new-instance v13, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    const-string v14, "tg://settings/change_number"

    invoke-direct {v13, v14}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    sub-int/2addr v1, v2

    const/16 v14, 0x21

    invoke-virtual {v3, v13, v8, v1, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_4

    .line 4447
    :cond_a
    iget v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-ne v3, v2, :cond_b

    .line 4449
    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->newTelegramRulesTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4450
    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;

    invoke-direct {v3, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$8;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4461
    sget v3, Lorg/telegram/messenger/R$string;->SentAppCodeWithPhone:I

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->addNbsp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v7

    const-string v1, "SentAppCodeWithPhone"

    invoke-static {v1, v3, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_4

    :cond_b
    if-ne v3, v6, :cond_c

    .line 4463
    sget v3, Lorg/telegram/messenger/R$string;->SentSmsCode:I

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->addNbsp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v7

    const-string v1, "SentSmsCode"

    invoke-static {v1, v3, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_4

    :cond_c
    if-ne v3, v5, :cond_d

    .line 4465
    sget v3, Lorg/telegram/messenger/R$string;->SentCallCode:I

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->addNbsp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v7

    const-string v1, "SentCallCode"

    invoke-static {v1, v3, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_4

    :cond_d
    if-ne v3, v12, :cond_e

    .line 4467
    sget v3, Lorg/telegram/messenger/R$string;->SentCallOnly:I

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->addNbsp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v7

    const-string v1, "SentCallOnly"

    invoke-static {v1, v3, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_4

    :cond_e
    if-ne v3, v4, :cond_f

    .line 4469
    sget v3, Lorg/telegram/messenger/R$string;->SentFragmentCode:I

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->addNbsp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v7

    const-string v1, "SentFragmentCode"

    invoke-static {v1, v3, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    goto :goto_4

    :cond_f
    move-object v3, v11

    .line 4472
    :cond_10
    :goto_4
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4474
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v3, 0xb

    const/4 v8, 0x0

    if-eq v1, v4, :cond_17

    .line 4475
    iput-boolean v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isNeedOpenTelegramButton:Z

    const-string v13, "DidNotGetTheCodeSms"

    const-string v14, "DidNotGetTheCode"

    if-ne v1, v2, :cond_15

    .line 4477
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v1, v5, :cond_14

    if-eq v1, v12, :cond_14

    if-ne v1, v3, :cond_11

    goto :goto_5

    :cond_11
    if-ne v1, v4, :cond_12

    .line 4481
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    sget v4, Lorg/telegram/messenger/R$string;->DidNotGetTheCodeFragment:I

    const-string v14, "DidNotGetTheCodeFragment"

    invoke-static {v14, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_12
    if-nez v1, :cond_13

    .line 4483
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    sget v4, Lorg/telegram/messenger/R$string;->DidNotGetTheCode:I

    invoke-static {v14, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 4485
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    sget v4, Lorg/telegram/messenger/R$string;->DidNotGetTheCodeSms:I

    invoke-static {v13, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 4478
    :cond_14
    :goto_5
    iput-boolean v7, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isNeedOpenTelegramButton:Z

    .line 4479
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    sget v4, Lorg/telegram/messenger/R$string;->DidNotGetTheCodePhone:I

    const-string v14, "DidNotGetTheCodePhone"

    invoke-static {v14, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 4488
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    sget v4, Lorg/telegram/messenger/R$string;->DidNotGetTheCode:I

    invoke-static {v14, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4491
    :goto_6
    iget-boolean v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->isNeedOpenTelegramButton:Z

    const/16 v4, 0x10

    const/4 v14, 0x6

    if-eqz v1, :cond_16

    .line 4492
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_changephoneinfo_image2:I

    invoke-static {v15}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v15

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionPressedBackground:I

    invoke-static/range {v16 .. v16}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v14, v15, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4493
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4494
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    const-string v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4495
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 4496
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    const/16 v3, 0xa

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v7, v7, v3, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4497
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->fork_open_telegram:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4498
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 4499
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    sget v3, Lorg/telegram/messenger/R$string;->DidNotGetTheCodeSms:I

    invoke-static {v13, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 4501
    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4502
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4503
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4504
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    const/16 v3, 0x31

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 4505
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v10, 0x8

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v1, v3, v13, v10, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 4506
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4507
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 4512
    :cond_17
    :goto_7
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-eq v1, v5, :cond_18

    .line 4513
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v3, v3, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v3, v3, v7

    invoke-static {v1, v3}, Lorg/telegram/ui/LoginActivity;->access$4800(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z

    .line 4514
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_8

    .line 4516
    :cond_18
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v1, v1, v7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 4519
    :goto_8
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyTimer()V

    .line 4520
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->destroyCodeTimer()V

    .line 4522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-double v3, v3

    iput-wide v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->lastCurrentTime:D

    .line 4523
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    if-ne v1, v2, :cond_19

    .line 4524
    invoke-direct {v0, v2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setProblemTextVisible(Z)V

    .line 4525
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4526
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    if-eqz v1, :cond_36

    .line 4527
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_14

    :cond_19
    const-string v3, "SmsAvailableIn"

    const-string v4, "CallAvailableIn"

    if-ne v1, v5, :cond_22

    .line 4530
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v1, v12, :cond_1a

    if-eq v1, v6, :cond_1a

    const/16 v5, 0xb

    if-ne v1, v5, :cond_1d

    .line 4531
    :cond_1a
    invoke-direct {v0, v7}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setProblemTextVisible(Z)V

    .line 4532
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4533
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4534
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v1, v12, :cond_1c

    const/16 v5, 0xb

    if-ne v1, v5, :cond_1b

    goto :goto_9

    :cond_1b
    if-ne v1, v6, :cond_1d

    .line 4537
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    sget v4, Lorg/telegram/messenger/R$string;->SmsAvailableIn:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v2

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 4535
    :cond_1c
    :goto_9
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    sget v3, Lorg/telegram/messenger/R$string;->CallAvailableIn:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v2

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1d
    :goto_a
    if-eqz p2, :cond_1e

    .line 4540
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->pattern:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->obtainLoginPhoneCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_1e
    if-eqz v8, :cond_1f

    .line 4542
    invoke-virtual {v0, v8}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 4543
    :cond_1f
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->catchedPhone:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 4544
    invoke-virtual {v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 4545
    :cond_20
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v1, v12, :cond_21

    if-eq v1, v6, :cond_21

    const/16 v2, 0xb

    if-ne v1, v2, :cond_36

    .line 4546
    :cond_21
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    goto/16 :goto_14

    :cond_22
    const/16 v10, 0x3e8

    if-ne v1, v6, :cond_2a

    .line 4548
    iget v13, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v13, v6, :cond_23

    if-eq v13, v12, :cond_23

    if-ne v13, v5, :cond_2a

    .line 4549
    :cond_23
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    sget v3, Lorg/telegram/messenger/R$string;->CallAvailableIn:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4550
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-ge v1, v10, :cond_24

    move v1, v2

    goto :goto_b

    :cond_24
    move v1, v7

    :goto_b
    invoke-direct {v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setProblemTextVisible(Z)V

    .line 4551
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    iget v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-ge v3, v10, :cond_25

    const/16 v3, 0x8

    goto :goto_c

    :cond_25
    move v3, v7

    :goto_c
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4552
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    if-eqz v1, :cond_27

    .line 4553
    iget v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-ge v3, v10, :cond_26

    move v3, v7

    goto :goto_d

    :cond_26
    const/16 v3, 0x8

    :goto_d
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4556
    :cond_27
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v3, "mainconfig"

    invoke-virtual {v1, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "sms_hash"

    .line 4557
    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4559
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_28

    const-string v4, "sms_hash_code"

    .line 4560
    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 4561
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v3}, Lorg/telegram/ui/LoginActivity;->access$8000(Lorg/telegram/ui/LoginActivity;)Z

    move-result v3

    if-nez v3, :cond_28

    const/16 v3, 0x7c

    .line 4562
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_28
    move-object v1, v8

    :goto_e
    if-eqz v1, :cond_29

    .line 4568
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/CodeFieldContainer;->setCode(Ljava/lang/String;)V

    .line 4569
    invoke-virtual {v0, v8}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->onNextPressed(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 4571
    :cond_29
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    goto/16 :goto_14

    :cond_2a
    if-ne v1, v12, :cond_2f

    .line 4573
    iget v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-ne v5, v6, :cond_2f

    .line 4574
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    sget v4, Lorg/telegram/messenger/R$string;->SmsAvailableIn:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4575
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-ge v1, v10, :cond_2b

    goto :goto_f

    :cond_2b
    move v2, v7

    :goto_f
    invoke-direct {v0, v2}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setProblemTextVisible(Z)V

    .line 4576
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    iget v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-ge v2, v10, :cond_2c

    const/16 v2, 0x8

    goto :goto_10

    :cond_2c
    move v2, v7

    :goto_10
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4577
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    if-eqz v1, :cond_2e

    .line 4578
    iget v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->time:I

    if-ge v2, v10, :cond_2d

    move v8, v7

    goto :goto_11

    :cond_2d
    const/16 v8, 0x8

    :goto_11
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4580
    :cond_2e
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    goto/16 :goto_14

    :cond_2f
    const/16 v5, 0xb

    if-ne v1, v5, :cond_34

    .line 4582
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v1, v12, :cond_30

    if-eq v1, v6, :cond_30

    if-ne v1, v5, :cond_36

    .line 4583
    :cond_30
    invoke-direct {v0, v7}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setProblemTextVisible(Z)V

    .line 4584
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4585
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4586
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->nextType:I

    if-eq v1, v12, :cond_32

    const/16 v5, 0xb

    if-ne v1, v5, :cond_31

    goto :goto_12

    :cond_31
    if-ne v1, v6, :cond_33

    .line 4589
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    sget v4, Lorg/telegram/messenger/R$string;->SmsAvailableIn:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 4587
    :cond_32
    :goto_12
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    sget v3, Lorg/telegram/messenger/R$string;->CallAvailableIn:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4591
    :cond_33
    :goto_13
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createTimer()V

    goto :goto_14

    .line 4594
    :cond_34
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4595
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    if-eqz v1, :cond_35

    .line 4596
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4598
    :cond_35
    invoke-direct {v0, v7}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->setProblemTextVisible(Z)V

    .line 4599
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->createCodeTimer()V

    .line 4602
    :cond_36
    :goto_14
    iget v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3a

    .line 4603
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefix:Ljava/lang/String;

    move v2, v7

    .line 4604
    :goto_15
    iget v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    const-string v4, "0"

    if-ge v2, v3, :cond_37

    .line 4605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 4607
    :cond_37
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move v2, v7

    .line 4608
    :goto_16
    iget v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->length:I

    if-ge v2, v3, :cond_39

    .line 4609
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_38

    .line 4611
    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_39
    const-string v2, "\\)"

    .line 4614
    invoke-virtual {v1, v2, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\("

    .line 4615
    invoke-virtual {v1, v2, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4616
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefixTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3a
    return-void
.end method

.method public updateColors()V
    .locals 5

    .line 4170
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$9900(Lorg/telegram/ui/LoginActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4171
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->confirmTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 4173
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->newTelegramRulesTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v2}, Lorg/telegram/ui/LoginActivity;->access$9900(Lorg/telegram/ui/LoginActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    goto :goto_1

    :cond_1
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    :goto_1
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4174
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->newTelegramRulesTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 4176
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->titleTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4178
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_2

    .line 4179
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4180
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallDescriptionSubtitle2:Landroid/widget/TextView;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4181
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallArrowIcon:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteInputFieldActivated:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4182
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->missedCallPhoneIcon:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4183
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->prefixTextView:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4186
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->hintDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->applyLottieColors(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 4187
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->starsToDotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->applyLottieColors(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 4188
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->applyLottieColors(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 4189
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->dotsToStarsDrawable:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->applyLottieColors(Lorg/telegram/ui/Components/RLottieDrawable;)V

    .line 4191
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    if-eqz v0, :cond_3

    .line 4192
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 4195
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_4

    .line 4197
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText6:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4199
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->timeText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4201
    iget v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->currentType:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_5

    .line 4202
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4203
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->problemText:Lorg/telegram/ui/LoginActivity$LoginActivitySmsView$LoadingTextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4205
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivitySmsView;->wrongCode:Landroid/widget/TextView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
