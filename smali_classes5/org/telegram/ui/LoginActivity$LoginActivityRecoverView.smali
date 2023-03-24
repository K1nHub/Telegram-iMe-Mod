.class public Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;
.super Lorg/telegram/ui/Components/SlideView;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginActivityRecoverView"
.end annotation


# instance fields
.field private codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

.field private confirmTextView:Landroid/widget/TextView;

.field private currentParams:Landroid/os/Bundle;

.field private errorColorTimeout:Ljava/lang/Runnable;

.field private inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

.field private nextPressed:Z

.field private passwordString:Ljava/lang/String;

.field private phoneCode:Ljava/lang/String;

.field private phoneHash:Ljava/lang/String;

.field private postedErrorColorTimeout:Z

.field private requestPhone:Ljava/lang/String;

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field private titleView:Landroid/widget/TextView;

.field private troubleButton:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$6aQV-zo87EY72yjV6Z4Mw1tooeo(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->lambda$onShow$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$AmpjyR2KZLQy392aVI_cSQ4-BE0(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->lambda$new$1(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$HbaaZTC4bNDIeRzPzvGyeCLbsDs(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->lambda$onNextPressed$8(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HeMqMkneZPgaLvm6nacujhEZICA(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->lambda$onPasscodeError$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$P-x9c-hjwfhMMfrH2PbO0S42LGk(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->lambda$new$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$TvZJTBr_8ldzuHpDYhqdKGfh0pM(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->lambda$new$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZPIl3vKlKfRH_nuXys00UdcvYKk(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$m9-fQgCfZ_h2rJu1afq96gSPtFQ(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s12hWoSsBonfjwqKQgM-SKp8n7o(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->lambda$onPasscodeError$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$zD7aR-9ka4DIE69fqfi9pC45VKo(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->lambda$onNextPressed$7(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 6849
    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 6850
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    .line 6842
    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)V

    iput-object v3, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->errorColorTimeout:Ljava/lang/Runnable;

    const/4 v3, 0x1

    .line 6852
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6854
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6855
    new-instance v5, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v5, v2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    .line 6856
    sget v6, Lorg/telegram/messenger/R$raw;->tsv_setup_mail:I

    const/16 v7, 0x78

    invoke-virtual {v5, v6, v7, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 6857
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 6858
    iget-object v5, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-static {v7, v7, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6859
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallScreen()Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-le v7, v5, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v5, -0x2

    const/4 v7, -0x1

    .line 6860
    invoke-static {v7, v5, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6862
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->titleView:Landroid/widget/TextView;

    const/high16 v5, 0x41900000    # 18.0f

    .line 6863
    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6864
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->titleView:Landroid/widget/TextView;

    const-string v5, "fonts/rmedium.ttf"

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 6865
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->titleView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/messenger/R$string;->EnterCode:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6866
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->titleView:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 6867
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->titleView:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v4, v9, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 6868
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->titleView:Landroid/widget/TextView;

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/4 v13, 0x1

    const/16 v14, 0x20

    const/16 v15, 0x10

    const/16 v16, 0x20

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6870
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->confirmTextView:Landroid/widget/TextView;

    const/high16 v9, 0x41600000    # 14.0f

    .line 6871
    invoke-virtual {v4, v3, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6872
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->confirmTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 6873
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->confirmTextView:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v4, v11, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 6874
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->confirmTextView:Landroid/widget/TextView;

    sget v11, Lorg/telegram/messenger/R$string;->RestoreEmailSentInfo:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6875
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->confirmTextView:Landroid/widget/TextView;

    const/4 v11, -0x2

    const/16 v14, 0xc

    const/16 v15, 0x8

    const/16 v16, 0xc

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v0, v4, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6877
    new-instance v4, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$1;

    invoke-direct {v4, v0, v2, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V

    iput-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/4 v11, 0x6

    .line 6883
    invoke-virtual {v4, v11, v3}, Lorg/telegram/ui/CodeFieldContainer;->setNumbersCount(II)V

    .line 6884
    iget-object v4, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v4, v4, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v11, v4

    move v12, v6

    :goto_2
    if-ge v12, v11, :cond_4

    aget-object v13, v4, v12

    .line 6885
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->hasCustomKeyboard()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-static/range {p1 .. p1}, Lorg/telegram/ui/LoginActivity;->access$700(Lorg/telegram/ui/LoginActivity;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_3

    :cond_2
    move v14, v6

    goto :goto_4

    :cond_3
    :goto_3
    move v14, v3

    :goto_4
    invoke-virtual {v13, v14}, Lorg/telegram/ui/CodeNumberField;->setShowSoftInputOnFocusCompat(Z)V

    .line 6886
    new-instance v14, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$2;

    invoke-direct {v14, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v13, v14}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6901
    new-instance v14, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda3;

    invoke-direct {v14, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)V

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 6909
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/4 v11, -0x2

    const/16 v12, 0x2a

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x20

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6911
    new-instance v1, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    invoke-direct {v1, v2, v6}, Lorg/telegram/ui/Components/spoilers/SpoilersTextView;-><init>(Landroid/content/Context;Z)V

    iput-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->troubleButton:Landroid/widget/TextView;

    .line 6912
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 6913
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->troubleButton:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6914
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->troubleButton:Landroid/widget/TextView;

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 6915
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->troubleButton:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v1, v4, v5, v9, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 6916
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->troubleButton:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 6918
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->troubleButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6931
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6932
    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->troubleButton:Landroid/widget/TextView;

    const/4 v11, -0x1

    const/4 v12, -0x2

    const/16 v13, 0x50

    const/4 v15, 0x0

    const/16 v17, 0x20

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6933
    invoke-static {v7, v6, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6934
    iget-object v1, v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->troubleButton:Landroid/widget/TextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;->attach(Landroid/view/View;)Lorg/telegram/ui/Components/VerticalPositionAutoAnimator;

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)Ljava/lang/String;
    .locals 0

    .line 6827
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->passwordString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$15300(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)Z
    .locals 0

    .line 6827
    iget-boolean p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->postedErrorColorTimeout:Z

    return p0
.end method

.method static synthetic access$15400(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)Ljava/lang/Runnable;
    .locals 0

    .line 6827
    iget-object p0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->errorColorTimeout:Ljava/lang/Runnable;

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    const/4 v0, 0x0

    .line 6843
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->postedErrorColorTimeout:Z

    .line 6844
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v1, v1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 6845
    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 6903
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p2}, Lorg/telegram/ui/LoginActivity;->access$600(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    move-result-object p2

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setEditText(Landroid/widget/EditText;)V

    .line 6904
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {p1}, Lorg/telegram/ui/LoginActivity;->access$600(Lorg/telegram/ui/LoginActivity;)Lorg/telegram/ui/Components/CustomPhoneKeyboardView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/CustomPhoneKeyboardView;->setDispatchBackWhenEmpty(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 6922
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p2, v1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 6923
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->requestPhone:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->phoneHash:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->phoneCode:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lorg/telegram/ui/LoginActivity;->access$13200(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 2

    .line 6919
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    const-string v1, "RestorePasswordNoEmailTitle"

    .line 6920
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->RestoreEmailTroubleText:I

    const-string v1, "RestoreEmailTroubleText"

    .line 6921
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    .line 6922
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->ResetAccount:I

    .line 6923
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 6924
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 6926
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 6927
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onNextPressed$7(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 7053
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Z)V

    .line 7054
    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->nextPressed:Z

    .line 7055
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 7056
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p3, "emailCode"

    .line 7057
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7058
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->passwordString:Ljava/lang/String;

    const-string p3, "password"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7059
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/16 p3, 0x9

    invoke-virtual {p2, p3, v0, p1, v1}, Lorg/telegram/ui/LoginActivity;->setPage(IZLandroid/os/Bundle;Z)V

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_4

    .line 7061
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "CODE_INVALID"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 7063
    :cond_1
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string p2, "FLOOD_WAIT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7064
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x3c

    if-ge p1, p2, :cond_2

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Seconds"

    .line 7067
    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 7069
    :cond_2
    div-int/2addr p1, p2

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Minutes"

    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7071
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p3, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    sget v2, Lorg/telegram/messenger/R$string;->FloodWaitTime:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "FloodWaitTime"

    invoke-static {p1, v2, v0}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 7073
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    sget p2, Lorg/telegram/messenger/R$string;->RestorePasswordNoEmailTitle:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lorg/telegram/ui/LoginActivity;->access$6700(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 7062
    :cond_4
    :goto_1
    invoke-direct {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->onPasscodeError(Z)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$onNextPressed$8(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 7052
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onPasscodeError$5()V
    .locals 3

    .line 7017
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 7018
    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 7020
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 7021
    aget-object v0, v0, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$onPasscodeError$6()V
    .locals 3

    .line 7016
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7025
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->errorColorTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7026
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->errorColorTimeout:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 7027
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->postedErrorColorTimeout:Z

    return-void
.end method

.method private synthetic lambda$onShow$9()V
    .locals 2

    .line 7091
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(IZ)V

    .line 7092
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->inboxImageView:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 7093
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    if-eqz v0, :cond_0

    .line 7094
    iget-object v0, v0, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private onPasscodeError(Z)V
    .locals 5

    .line 7000
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 7004
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 7007
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    const-string v4, ""

    .line 7008
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7011
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, p1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 7012
    invoke-virtual {v3, v4}, Lorg/telegram/ui/CodeNumberField;->animateErrorProgress(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7014
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 7015
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)V

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .locals 2

    .line 6969
    sget v0, Lorg/telegram/messenger/R$string;->LoginPassword:I

    const-string v1, "LoginPassword"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

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

.method public onBackPressed(Z)Z
    .locals 1

    .line 7081
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/LoginActivity;->access$6800(Lorg/telegram/ui/LoginActivity;Z)V

    const/4 p1, 0x0

    .line 7082
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->currentParams:Landroid/os/Bundle;

    const/4 p1, 0x0

    .line 7083
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->nextPressed:Z

    return v0
.end method

.method public onCancelPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 6964
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->nextPressed:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 6948
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 6949
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->errorColorTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNextPressed(Ljava/lang/String;)V
    .locals 6

    .line 7033
    iget-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->nextPressed:Z

    if-eqz p1, :cond_0

    return-void

    .line 7037
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/CodeFieldContainer;->isFocusSuppressed:Z

    .line 7038
    iget-object p1, p1, Lorg/telegram/ui/CodeFieldContainer;->codeField:[Lorg/telegram/ui/CodeNumberField;

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    const/4 v5, 0x0

    .line 7039
    invoke-virtual {v4, v5}, Lorg/telegram/ui/CodeNumberField;->animateFocusedProgress(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7042
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object p1

    .line 7043
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 7044
    invoke-direct {p0, v2}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->onPasscodeError(Z)V

    return-void

    .line 7047
    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->nextPressed:Z

    .line 7048
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0, v2}, Lorg/telegram/ui/LoginActivity;->access$7300(Lorg/telegram/ui/LoginActivity;I)V

    .line 7049
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_checkRecoveryPassword;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_checkRecoveryPassword;-><init>()V

    .line 7050
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_auth_checkRecoveryPassword;->code:Ljava/lang/String;

    .line 7052
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v1}, Lorg/telegram/ui/LoginActivity;->access$15500(Lorg/telegram/ui/LoginActivity;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;Ljava/lang/String;)V

    const/16 p1, 0xa

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method public onShow()V
    .locals 3

    .line 7089
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 7090
    new-instance v0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;)V

    .line 7096
    invoke-static {}, Lorg/telegram/ui/LoginActivity;->access$7800()I

    move-result v1

    int-to-long v1, v1

    .line 7090
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "recoveryview_params"

    .line 7112
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->currentParams:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 7114
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->setParams(Landroid/os/Bundle;Z)V

    :cond_0
    const-string v0, "recoveryview_code"

    .line 7116
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7118
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/CodeFieldContainer;->setText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .locals 2

    .line 7101
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/CodeFieldContainer;->getCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7102
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "recoveryview_code"

    .line 7103
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7105
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->currentParams:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "recoveryview_params"

    .line 7106
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public setParams(Landroid/os/Bundle;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 6977
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    const-string v0, ""

    invoke-virtual {p2, v0}, Lorg/telegram/ui/CodeFieldContainer;->setText(Ljava/lang/String;)V

    .line 6978
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->currentParams:Landroid/os/Bundle;

    const-string p2, "password"

    .line 6979
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->passwordString:Ljava/lang/String;

    .line 6980
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->currentParams:Landroid/os/Bundle;

    const-string p2, "requestPhone"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->requestPhone:Ljava/lang/String;

    .line 6981
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->currentParams:Landroid/os/Bundle;

    const-string p2, "phoneHash"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->phoneHash:Ljava/lang/String;

    .line 6982
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->currentParams:Landroid/os/Bundle;

    const-string p2, "phoneCode"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->phoneCode:Ljava/lang/String;

    .line 6983
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->currentParams:Landroid/os/Bundle;

    const-string p2, "email_unconfirmed_pattern"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6984
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    const/16 v0, 0x2a

    .line 6985
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eq v1, p1, :cond_1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    if-eq p1, v3, :cond_1

    .line 6987
    new-instance v3, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-direct {v3}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;-><init>()V

    .line 6988
    iget v4, v3, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v3, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 6989
    iput v1, v3, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    add-int/2addr p1, v2

    .line 6990
    iput p1, v3, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    .line 6991
    new-instance v4, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-direct {v4, v3}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    invoke-virtual {p2, v4, v1, p1, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6993
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->troubleButton:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->RestoreEmailNoAccess:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object p2, v2, v0

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->formatSpannable(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6995
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object p2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-static {p1, p2}, Lorg/telegram/ui/LoginActivity;->access$4100(Lorg/telegram/ui/LoginActivity;Landroid/view/View;)Z

    .line 6996
    iget-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestFocus()Z

    return-void
.end method

.method public updateColors()V
    .locals 2

    .line 6939
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->titleView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6940
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->confirmTextView:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteGrayText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6941
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->troubleButton:Landroid/widget/TextView;

    const-string v1, "windowBackgroundWhiteBlueText4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6943
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRecoverView;->codeFieldContainer:Lorg/telegram/ui/CodeFieldContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
