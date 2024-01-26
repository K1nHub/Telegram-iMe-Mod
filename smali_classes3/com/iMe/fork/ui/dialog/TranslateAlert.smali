.class public Lcom/iMe/fork/ui/dialog/TranslateAlert;
.super Lcom/iMe/ui/base/mvp/JavaMvpBottomSheet;
.source "TranslateAlert.java"

# interfaces
.implements Lcom/iMe/ui/translate/TranslationView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;,
        Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;,
        Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;,
        Lcom/iMe/fork/ui/dialog/TranslateAlert$OnLinkPress;,
        Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;
    }
.end annotation


# static fields
.field private static final MOST_SPEC:I


# instance fields
.field private final allTexts:Landroid/text/Spannable;

.field private final allTextsView:Landroid/widget/TextView;

.field private allowScroll:Z

.field private final backButton:Landroid/widget/ImageView;

.field protected backDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private final backRect:Landroid/graphics/Rect;

.field private blockIndex:I

.field private final bulletinContainer:Landroid/widget/FrameLayout;

.field private final buttonImageView:Landroid/widget/ImageView;

.field private buttonLinear:Landroid/widget/LinearLayout;

.field private final buttonRect:Landroid/graphics/Rect;

.field private final buttonShadowView:Landroid/widget/FrameLayout;

.field private final buttonTextView:Landroid/widget/TextView;

.field private final buttonView:Landroid/widget/FrameLayout;

.field private changeLanguageButton:Landroid/widget/ImageView;

.field private changeLanguageViewLayout:Landroid/widget/FrameLayout$LayoutParams;

.field private final container:Landroid/widget/FrameLayout;

.field private containerOpenAnimationT:F

.field private final containerRect:Landroid/graphics/Rect;

.field private final contentView:Landroid/widget/FrameLayout;

.field private dismissed:Z

.field private editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private firstMinHeight:I

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private fromScrollRect:Z

.field private fromScrollViewY:F

.field private fromScrollY:F

.field private fromY:F

.field private final header:Landroid/widget/FrameLayout;

.field private final headerLayout:Landroid/widget/FrameLayout$LayoutParams;

.field private final headerShadowView:Landroid/widget/FrameLayout;

.field private isTranslateText:Ljava/lang/Boolean;

.field private isTranslated:Z

.field private final links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

.field private maybeScrolling:Z

.field private final noforwards:Z

.field private final onDismiss:Ljava/lang/Runnable;

.field private openAnimationToAnimator:Landroid/animation/ValueAnimator;

.field private openAnimationToAnimatorPriority:Z

.field private openingAnimator:Landroid/animation/ValueAnimator;

.field private openingAnimatorPriority:Z

.field private openingT:F

.field private pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

.field private pressedOutside:Z

.field private final scrollRect:Landroid/graphics/Rect;

.field private final scrollView:Landroidx/core/widget/NestedScrollView;

.field private final scrollViewLayout:Landroid/widget/FrameLayout$LayoutParams;

.field private scrolling:Z

.field private settingsButton:Landroid/widget/ImageView;

.field private settingsViewLayout:Landroid/widget/FrameLayout$LayoutParams;

.field private shouldShowKeyboard:Z

.field private final subtitleArrowView:Landroid/widget/ImageView;

.field private final subtitleFromView:Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

.field private final subtitleLayout:Landroid/widget/FrameLayout$LayoutParams;

.field private final subtitleToView:Landroid/widget/TextView;

.field private final subtitleView:Landroid/widget/LinearLayout;

.field private textBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final textRect:Landroid/graphics/Rect;

.field private final textsContainerView:Landroid/widget/FrameLayout;

.field private final textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

.field private final titleLayout:Landroid/widget/FrameLayout$LayoutParams;

.field private final titleView:Landroid/widget/TextView;

.field private translateText:Ljava/lang/String;

.field private final translationArgs:Lcom/iMe/model/translation/TranslationArgs;

.field public translationPresenter:Lcom/iMe/ui/translate/TranslationPresenter;
    .annotation runtime Lmoxy/presenter/InjectPresenter;
    .end annotation
.end field

.field private final translatorActionsDelegate:Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;


# direct methods
.method public static synthetic $r8$lambda$-iF0q_VDOjvdOTnxjoe6q82nrIM(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Z
    .locals 0

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->checkForNextLoading()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$0f5avOTr4XlgnPajCYasJeff8po(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->lambda$initButtonsByType$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$856QXg9PbCJDLMwxgf72dDxsePE(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->lambda$createOutgoingButton$9(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9E2Yloi0yo4OpqymddC6v7X8p6g(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->lambda$new$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$CGO2NuNAQgvTkbqbbvty5yyvEE0(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->lambda$openAnimationTo$10(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C_i-yk0_gfR4HA2UEG9dpQ0hRs4(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->lambda$initButtonsByType$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MRQtpaVcPijvGpGQWCb4yI_kBDI(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Lorg/koin/core/parameter/ParametersHolder;
    .locals 0

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->lambda$provideTranslationPresenter$0()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Mqe7Uz-4tlgQvDH9V4qOmpyVNTo(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->lambda$new$16(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NVgkBB_wXyhkM2pcrNjZRvYMOm8(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->lambda$initChangeLanguageButton$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P-9FZJlwBmWxFU2nmWZoMzwLodI(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->lambda$dispatchTouchEvent$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$TEcUtZSzQg8T3_DO16aFCISa39o(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->lambda$openTo$18(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WjEyOySUHYkCIUh41bZxcqPMYOk(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->lambda$initContainerButton$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YO-lCO9vJmhQsDeFocfWseh8thw(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->lambda$new$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$adPSmMIgoh31ybjbyJfbTI0q_ME(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->lambda$new$14(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cFc0bbfEoHS5ntj6GjdEb3ry6jg(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->lambda$new$15(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jwaWAU9T2tNh_GIj0XS0sLhijQ0(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->lambda$initOutgoingButtons$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$kJ9EmYVlIa9PqzbozDWrzQpnuh8(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->lambda$new$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rBKiHgf_MObvx-k-tW2W57FYc7g(Lcom/iMe/fork/ui/dialog/TranslateAlert;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->lambda$showLanguages$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wSeH72xrAVFbyEdf2OgnWFqDXpI(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->lambda$initOutgoingButtons$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$zxYReZUmLBi1eyro1CdHpbiNEe4(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->lambda$initSettingsButton$4(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 449
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "translateQueue"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;Z)V

    const v0, 0xf423f

    const/high16 v1, -0x80000000

    .line 1435
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->MOST_SPEC:I

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;ZLcom/iMe/fork/ui/dialog/TranslateAlert$OnLinkPress;Ljava/lang/Runnable;Lcom/iMe/model/translation/TranslationArgs;Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;)V
    .locals 28

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v0, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    move-object/from16 v10, p12

    .line 641
    sget v1, Lorg/telegram/messenger/R$style;->TransparentDialog:I

    invoke-direct {v6, v7, v1}, Lcom/iMe/ui/base/mvp/JavaMvpBottomSheet;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 115
    iput-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v2, ""

    .line 120
    iput-object v2, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translateText:Ljava/lang/String;

    const/4 v11, 0x0

    .line 124
    iput-boolean v11, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->isTranslated:Z

    .line 475
    iput v11, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->blockIndex:I

    const/4 v12, 0x0

    .line 478
    iput v12, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->containerOpenAnimationT:F

    .line 543
    iput-boolean v11, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationToAnimatorPriority:Z

    .line 544
    iput-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationToAnimator:Landroid/animation/ValueAnimator;

    const/4 v13, -0x1

    .line 579
    iput v13, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->firstMinHeight:I

    const/4 v14, 0x1

    .line 627
    iput-boolean v14, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allowScroll:Z

    .line 1062
    iput v12, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromScrollY:F

    .line 1072
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->containerRect:Landroid/graphics/Rect;

    .line 1073
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textRect:Landroid/graphics/Rect;

    .line 1074
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1075
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonRect:Landroid/graphics/Rect;

    .line 1076
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backRect:Landroid/graphics/Rect;

    .line 1077
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollRect:Landroid/graphics/Rect;

    .line 1078
    iput v12, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromY:F

    .line 1079
    iput-boolean v11, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedOutside:Z

    .line 1080
    iput-boolean v11, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->maybeScrolling:Z

    .line 1081
    iput-boolean v11, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrolling:Z

    .line 1082
    iput-boolean v11, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromScrollRect:Z

    .line 1084
    iput v12, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromScrollViewY:F

    .line 1085
    iput-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTexts:Landroid/text/Spannable;

    .line 1229
    iput v12, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingT:F

    .line 1270
    new-instance v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$6;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v6, v2}, Lcom/iMe/fork/ui/dialog/TranslateAlert$6;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;I)V

    iput-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 1293
    iput-boolean v11, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismissed:Z

    .line 1320
    iput-boolean v11, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimatorPriority:Z

    move-object/from16 v1, p13

    .line 643
    iput-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translatorActionsDelegate:Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;

    .line 644
    iput-object v10, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    if-eqz v10, :cond_0

    .line 645
    invoke-virtual/range {p12 .. p12}, Lcom/iMe/model/translation/TranslationArgs;->getType()Lcom/iMe/fork/enums/TranslationDialogType;

    move-result-object v1

    sget-object v2, Lcom/iMe/fork/enums/TranslationDialogType;->REPLY:Lcom/iMe/fork/enums/TranslationDialogType;

    if-ne v1, v2, :cond_0

    move v1, v14

    goto :goto_0

    :cond_0
    move v1, v11

    :goto_0
    iput-boolean v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->shouldShowKeyboard:Z

    if-eqz v1, :cond_1

    .line 647
    invoke-virtual {v6, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    goto :goto_1

    .line 649
    :cond_1
    invoke-virtual {v6, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->setBackgroundColor(I)V

    .line 651
    :goto_1
    invoke-virtual {v6, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 652
    invoke-virtual {v6, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCanDismissWithSwipe(Z)V

    .line 653
    invoke-virtual {v6, v11}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 654
    invoke-virtual {v6, v11}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 658
    iput-boolean v9, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->noforwards:Z

    move-object/from16 v1, p1

    .line 659
    iput-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_2

    const-string v1, "und"

    .line 660
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 663
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textBlocks:Ljava/util/ArrayList;

    move-object/from16 v2, p8

    .line 664
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p11

    .line 666
    iput-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->onDismiss:Ljava/lang/Runnable;

    .line 672
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/16 v2, 0x1e

    if-lt v15, v2, :cond_3

    .line 673
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, -0x7fffff00

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    goto :goto_2

    :cond_3
    if-lt v15, v1, :cond_4

    .line 675
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, -0x7ffeff00

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    :cond_4
    :goto_2
    if-eqz v9, :cond_5

    .line 679
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 682
    :cond_5
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->contentView:Landroid/widget/FrameLayout;

    .line 683
    iget-object v4, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 684
    invoke-virtual {v3, v11}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 685
    invoke-virtual {v3, v11}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    if-lt v15, v1, :cond_7

    .line 687
    invoke-virtual {v3, v14}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    if-lt v15, v2, :cond_6

    const/16 v1, 0x700

    .line 689
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    goto :goto_3

    :cond_6
    const/16 v1, 0x500

    .line 691
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 695
    :cond_7
    :goto_3
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 696
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x2

    .line 697
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const v3, -0x40d70a3d    # -0.66f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x1e000000

    invoke-virtual {v1, v2, v12, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 698
    new-instance v5, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;

    invoke-direct {v5, v6, v7, v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/content/Context;Landroid/graphics/Paint;)V

    iput-object v5, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    .line 753
    invoke-virtual {v5, v11}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 755
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->header:Landroid/widget/FrameLayout;

    .line 757
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleView:Landroid/widget/TextView;

    .line 758
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    goto :goto_4

    :cond_8
    move v2, v12

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setPivotX(F)V

    .line 759
    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setPivotY(F)V

    .line 760
    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setLines(I)V

    .line 761
    sget v2, Lorg/telegram/messenger/R$string;->AutomaticTranslation:I

    const-string v3, "AutomaticTranslation"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v16, 0x5

    if-eqz v2, :cond_9

    move/from16 v2, v16

    goto :goto_5

    :cond_9
    const/4 v2, 0x3

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const-string v17, "fonts/rmedium.ttf"

    .line 763
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 764
    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x13

    .line 765
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v11, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v19, -0x1

    const/16 v20, -0x2

    const/16 v21, 0x37

    const/16 v22, 0x16

    const/16 v23, 0x16

    const/16 v24, 0x16

    const/16 v25, 0x0

    .line 766
    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    iput-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 772
    new-instance v3, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda17;

    invoke-direct {v3, v6}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda17;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 776
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleView:Landroid/widget/LinearLayout;

    .line 777
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    if-lt v15, v1, :cond_a

    .line 779
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 781
    :cond_a
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_b

    move/from16 v1, v16

    goto :goto_6

    :cond_b
    const/4 v1, 0x3

    :goto_6
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 783
    invoke-virtual {v6, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 784
    new-instance v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$3;

    if-nez v1, :cond_c

    invoke-virtual {v6, v8}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto :goto_7

    :cond_c
    move-object/from16 v19, v1

    :goto_7
    const/16 v20, 0xe

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v21

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v23

    move-object/from16 p4, v0

    move-object v13, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v12, v3

    move-object/from16 v3, v19

    move-object/from16 v26, v4

    move/from16 v4, v21

    move-object/from16 v27, v5

    move/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Lcom/iMe/fork/ui/dialog/TranslateAlert$3;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/content/Context;Ljava/lang/CharSequence;II)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleFromView:Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

    const/16 v1, 0x8

    if-eqz v10, :cond_d

    .line 799
    invoke-virtual/range {p12 .. p12}, Lcom/iMe/model/translation/TranslationArgs;->getType()Lcom/iMe/fork/enums/TranslationDialogType;

    move-result-object v2

    sget-object v3, Lcom/iMe/fork/enums/TranslationDialogType;->REPLY:Lcom/iMe/fork/enums/TranslationDialogType;

    if-eq v2, v3, :cond_d

    .line 800
    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->access$900(Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 801
    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->access$900(Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda7;

    invoke-direct {v3, v6}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda7;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 807
    :cond_d
    iput-boolean v11, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->showLoadingText:Z

    .line 808
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleArrowView:Landroid/widget/ImageView;

    .line 809
    sget v3, Lorg/telegram/messenger/R$drawable;->search_arrow:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 810
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 811
    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_e

    const/high16 v3, -0x40800000    # -1.0f

    .line 812
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 815
    :cond_e
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleToView:Landroid/widget/TextView;

    .line 816
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setLines(I)V

    .line 817
    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 818
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v11, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 819
    invoke-virtual {v6, v8}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v10, :cond_f

    .line 821
    invoke-virtual/range {p12 .. p12}, Lcom/iMe/model/translation/TranslationArgs;->getType()Lcom/iMe/fork/enums/TranslationDialogType;

    move-result-object v4

    sget-object v5, Lcom/iMe/fork/enums/TranslationDialogType;->REPLY:Lcom/iMe/fork/enums/TranslationDialogType;

    if-eq v4, v5, :cond_f

    .line 822
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 823
    new-instance v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda10;

    invoke-direct {v1, v6}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda10;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 830
    :cond_f
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v4, 0x10

    const/4 v5, -0x2

    if-eqz v1, :cond_10

    .line 831
    sget v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->paddingHorizontal:I

    invoke-virtual {v12, v1, v11, v11, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 832
    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x10

    const/16 v22, 0x3

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 833
    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v22, 0x2

    const/16 v23, 0x0

    .line 834
    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 836
    :cond_10
    sget v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->paddingHorizontal:I

    invoke-virtual {v12, v11, v11, v1, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x10

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x2

    const/16 v25, 0x0

    .line 837
    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v23, 0x1

    const/16 v24, 0x3

    .line 838
    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 839
    invoke-static {v5, v5, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v12, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_8
    if-eqz v13, :cond_11

    .line 842
    invoke-virtual {v0, v13}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->set(Ljava/lang/CharSequence;)V

    :cond_11
    const/16 v19, -0x1

    const/high16 v20, -0x40000000    # -2.0f

    .line 848
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_12

    goto :goto_9

    :cond_12
    const/16 v16, 0x3

    :goto_9
    or-int/lit8 v21, v16, 0x30

    sget v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->paddingHorizontal:I

    int-to-float v1, v0

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v1, v2

    const/high16 v2, 0x41b00000    # 22.0f

    sub-float v22, v2, v1

    const/high16 v1, 0x423c0000    # 47.0f

    sget v3, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->paddingVertical:I

    int-to-float v3, v3

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v3, v8

    sub-float v23, v1, v3

    int-to-float v0, v0

    div-float/2addr v0, v8

    sub-float v24, v2, v0

    const/16 v25, 0x0

    .line 845
    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleLayout:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v1, v26

    invoke-virtual {v1, v12, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 855
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backButton:Landroid/widget/ImageView;

    .line 856
    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 857
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 858
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 859
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v11, v3, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 860
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 861
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setClickable(Z)V

    const/4 v2, 0x0

    .line 862
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 863
    new-instance v2, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda8;

    invoke-direct {v2, v6}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda8;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v2, 0x38

    const/4 v3, 0x3

    .line 864
    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 866
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->headerShadowView:Landroid/widget/FrameLayout;

    .line 867
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/4 v2, 0x0

    .line 868
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/16 v2, 0x57

    const/4 v3, -0x1

    .line 869
    invoke-static {v3, v14, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 871
    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    const/16 v0, 0x46

    const/16 v2, 0x37

    .line 872
    invoke-static {v3, v0, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->headerLayout:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v2, v27

    invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 874
    new-instance v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$4;

    invoke-direct {v0, v6, v7}, Lcom/iMe/fork/ui/dialog/TranslateAlert$4;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/content/Context;)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    .line 893
    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 895
    new-instance v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$5;

    invoke-direct {v0, v6, v7}, Lcom/iMe/fork/ui/dialog/TranslateAlert$5;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/content/Context;)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    .line 930
    new-instance v1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>(Landroid/view/View;)V

    iput-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    .line 931
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 932
    invoke-virtual {v0, v14, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    xor-int/lit8 v1, v9, 0x1

    .line 933
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 934
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTextSelectionHighlight:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 935
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_TextSelectionCursor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/16 v2, 0x1d

    if-lt v15, v2, :cond_13

    .line 937
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/XiaomiUtilities;->isMIUI()Z

    move-result v2

    if-nez v2, :cond_13

    .line 938
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 939
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 940
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSelectHandleLeft(Landroid/graphics/drawable/Drawable;)V

    .line 942
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 943
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 944
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSelectHandleRight(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    :catch_0
    :cond_13
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 949
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    new-instance v1, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v1}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 951
    new-instance v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    iget-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;-><init>(Landroid/content/Context;IILandroid/widget/TextView;)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    const/16 v1, 0x16

    .line 953
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sget v3, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->paddingHorizontal:I

    sub-int/2addr v2, v3

    const/16 v4, 0xc

    .line 954
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sget v9, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->paddingVertical:I

    sub-int/2addr v8, v9

    .line 955
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v1, v3

    .line 956
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v3, v9

    .line 952
    invoke-virtual {v0, v2, v8, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    if-nez v10, :cond_14

    .line 960
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 961
    iget-object v2, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    invoke-virtual {v2, v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->addBlock(Ljava/lang/CharSequence;)Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;

    goto :goto_a

    .line 963
    :cond_14
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsContainerView:Landroid/widget/FrameLayout;

    if-eqz v10, :cond_15

    .line 966
    invoke-virtual/range {p12 .. p12}, Lcom/iMe/model/translation/TranslationArgs;->getType()Lcom/iMe/fork/enums/TranslationDialogType;

    move-result-object v1

    sget-object v2, Lcom/iMe/fork/enums/TranslationDialogType;->REPLY:Lcom/iMe/fork/enums/TranslationDialogType;

    if-ne v1, v2, :cond_15

    .line 967
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->initEditText()V

    const/4 v2, -0x1

    goto :goto_b

    .line 969
    :cond_15
    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    const/4 v2, -0x1

    invoke-static {v2, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 971
    :goto_b
    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v5, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 973
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    const/16 v18, -0x1

    const/16 v19, -0x2

    const/16 v20, 0x77

    const/16 v21, 0x0

    const/16 v22, 0x46

    const/16 v23, 0x0

    const/16 v24, 0x51

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    iput-object v2, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 975
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonShadowView:Landroid/widget/FrameLayout;

    .line 976
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogShadowLine:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 977
    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    const/16 v19, 0x1

    const/16 v20, 0x57

    const/16 v22, 0x0

    const/16 v24, 0x50

    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 979
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonTextView:Landroid/widget/TextView;

    .line 980
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setLines(I)V

    .line 981
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 982
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 983
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v1, 0x11

    .line 984
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 985
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 986
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v2, 0x41600000    # 14.0f

    .line 987
    invoke-virtual {v0, v14, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 988
    sget v2, Lorg/telegram/messenger/R$string;->CloseTranslation:I

    const-string v3, "CloseTranslation"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 990
    sget v2, Lorg/telegram/messenger/R$string;->Close:I

    const-string v3, "Close"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 991
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonImageView:Landroid/widget/ImageView;

    .line 992
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_close:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 994
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonView:Landroid/widget/FrameLayout;

    const/high16 v4, 0x40800000    # 4.0f

    if-eqz v10, :cond_16

    .line 1005
    invoke-virtual/range {p12 .. p12}, Lcom/iMe/model/translation/TranslationArgs;->getType()Lcom/iMe/fork/enums/TranslationDialogType;

    move-result-object v8

    sget-object v9, Lcom/iMe/fork/enums/TranslationDialogType;->INCOMING:Lcom/iMe/fork/enums/TranslationDialogType;

    if-ne v8, v9, :cond_16

    .line 1006
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonLinear:Landroid/widget/LinearLayout;

    .line 1007
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1008
    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonLinear:Landroid/widget/LinearLayout;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    new-array v5, v14, [F

    aput v4, v5, v11

    invoke-static {v3, v5}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1009
    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonLinear:Landroid/widget/LinearLayout;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0x12

    const/4 v12, 0x0

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v8

    move/from16 p7, v9

    move/from16 p8, v11

    move/from16 p9, v12

    invoke-static/range {p3 .. p9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1010
    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1011
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonLinear:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda9;

    invoke-direct {v1, v6}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda9;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1012
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->initContainerButton()V

    goto :goto_c

    .line 1014
    :cond_16
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    new-array v8, v14, [F

    aput v4, v8, v11

    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1015
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    new-array v8, v14, [F

    aput v4, v8, v11

    invoke-static {v1, v8}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x13

    .line 1016
    invoke-static {v5, v5, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1017
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1018
    new-instance v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda4;

    invoke-direct {v0, v6}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1019
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    const/4 v11, -0x1

    const/16 v12, 0x30

    const/16 v13, 0x50

    const/16 v14, 0x10

    const/16 v15, 0x10

    const/16 v16, 0x10

    const/16 v17, 0x10

    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1020
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    const/16 v2, 0x51

    const/4 v3, -0x1

    invoke-static {v3, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_c
    if-eqz v10, :cond_17

    .line 1023
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->initButtonsByType()V

    .line 1026
    :cond_17
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->bulletinContainer:Landroid/widget/FrameLayout;

    .line 1027
    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->contentView:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x77

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x51

    move/from16 p1, v2

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v7

    move/from16 p6, v8

    move/from16 p7, v9

    invoke-static/range {p1 .. p7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZLcom/iMe/model/translation/TranslationArgs;Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;)V
    .locals 14

    .line 132
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v9, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v0 .. v13}, Lcom/iMe/fork/ui/dialog/TranslateAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;ZLcom/iMe/fork/ui/dialog/TranslateAlert$OnLinkPress;Ljava/lang/Runnable;Lcom/iMe/model/translation/TranslationArgs;Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;)V

    return-void
.end method

.method static synthetic access$002(Lcom/iMe/fork/ui/dialog/TranslateAlert;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationToAnimatorPriority:Z

    return p1
.end method

.method static synthetic access$100(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allowScroll:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Z
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->canExpand()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Z
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->checkForNextLoading()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/iMe/fork/ui/dialog/TranslateAlert;FZ)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationTo(FZ)V

    return-void
.end method

.method static synthetic access$1400()I
    .locals 1

    .line 95
    sget v0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->MOST_SPEC:I

    return v0
.end method

.method static synthetic access$1500(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->bulletinContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->shouldShowKeyboard:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/iMe/fork/ui/dialog/TranslateAlert;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->shouldShowKeyboard:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsContainerView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->noforwards:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Landroid/widget/TextView;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Landroidx/core/widget/NestedScrollView;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/iMe/fork/ui/dialog/TranslateAlert;F)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimation(F)V

    return-void
.end method

.method static synthetic access$2402(Lcom/iMe/fork/ui/dialog/TranslateAlert;Z)Z
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimatorPriority:Z

    return p1
.end method

.method static synthetic access$300(Lcom/iMe/fork/ui/dialog/TranslateAlert;)I
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->minHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/iMe/fork/ui/dialog/TranslateAlert;)F
    .locals 0

    .line 95
    iget p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->containerOpenAnimationT:F

    return p0
.end method

.method static synthetic access$500(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->updateCanExpand()V

    return-void
.end method

.method static synthetic access$600(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismissed:Z

    return p0
.end method

.method static synthetic access$700(Lcom/iMe/fork/ui/dialog/TranslateAlert;)F
    .locals 0

    .line 95
    iget p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingT:F

    return p0
.end method

.method static synthetic access$800(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleFromView:Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

    return-object p0
.end method

.method private canExpand()Z
    .locals 4

    .line 605
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    .line 606
    invoke-virtual {v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getBlocksCount()I

    move-result v0

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 607
    invoke-direct {p0, v2}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->minHeight(Z)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const v3, 0x3f59999a    # 0.85f

    mul-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private checkForNextLoading()Z
    .locals 1

    .line 1424
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollAtBottom()Z

    move-result v0

    return v0
.end method

.method public static createInstanceForForkTranslation(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/translation/TranslationArgs;Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;Z)Lcom/iMe/fork/ui/dialog/TranslateAlert;
    .locals 1

    .line 143
    new-instance v0, Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/iMe/fork/ui/dialog/TranslateAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZLcom/iMe/model/translation/TranslationArgs;Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;)V

    return-object v0
.end method

.method private createOutgoingButton(ILjava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/widget/FrameLayout;
    .locals 5

    .line 405
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 406
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->singleLine(Landroid/widget/TextView;)V

    .line 407
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 408
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v1, 0x11

    .line 409
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 410
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    .line 411
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 412
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x0

    .line 413
    invoke-virtual {v0, p1, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 417
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$dimen;->margin_half_small:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 419
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 420
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    aput v4, v2, v3

    invoke-static {p2, v2}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, -0x2

    .line 421
    invoke-static {p2, p2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    new-instance p2, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda12;

    invoke-direct {p2, p3}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda12;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public static cutInBlocks(Ljava/lang/CharSequence;I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 156
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, p1, :cond_4

    const/4 v1, 0x0

    .line 157
    invoke-interface {p0, v1, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n\n"

    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    const-string v3, "\n"

    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    :cond_1
    if-ne v3, v4, :cond_2

    const-string v3, ". "

    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    :cond_2
    if-ne v3, v4, :cond_3

    .line 166
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 168
    invoke-interface {p0, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 171
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 172
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method private getScrollY()F
    .locals 3

    .line 1065
    iget v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->containerOpenAnimationT:F

    iget v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingT:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    sub-float/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private hasSelection()Z
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    return v0
.end method

.method private initButtonsByType()V
    .locals 3

    .line 291
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->initSettingsButton()V

    .line 292
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    invoke-virtual {v0}, Lcom/iMe/model/translation/TranslationArgs;->getType()Lcom/iMe/fork/enums/TranslationDialogType;

    move-result-object v0

    .line 293
    sget-object v1, Lcom/iMe/fork/enums/TranslationDialogType;->OUTGOING:Lcom/iMe/fork/enums/TranslationDialogType;

    if-ne v0, v1, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->initOutgoingButtons()V

    goto :goto_0

    .line 295
    :cond_0
    sget-object v1, Lcom/iMe/fork/enums/TranslationDialogType;->INCOMING:Lcom/iMe/fork/enums/TranslationDialogType;

    if-ne v0, v1, :cond_2

    .line 296
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->initChangeLanguageButton()V

    .line 297
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    invoke-virtual {v0}, Lcom/iMe/model/translation/TranslationArgs;->getTranslationSettings()Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translatorActionsDelegate:Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;

    invoke-interface {v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;->hasReplyingMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    invoke-virtual {v0}, Lcom/iMe/model/translation/TranslationArgs;->getTranslationSettings()Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->getDialogId()J

    move-result-wide v0

    .line 299
    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Lorg/telegram/messenger/DialogObject;->isChatDialog(J)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canSendMessages(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->Reply:I

    const-string v2, "Reply"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonImageView:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_reply:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonLinear:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 305
    :cond_2
    sget-object v1, Lcom/iMe/fork/enums/TranslationDialogType;->REPLY:Lcom/iMe/fork/enums/TranslationDialogType;

    if-ne v0, v1, :cond_3

    .line 306
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonView:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private initChangeLanguageButton()V
    .locals 9

    .line 338
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageButton:Landroid/widget/ImageView;

    .line 339
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 340
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 341
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 342
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 357
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageButton:Landroid/widget/ImageView;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    .line 358
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    invoke-virtual {v0}, Lcom/iMe/model/translation/TranslationArgs;->getTranslationSettings()Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x38

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    .line 359
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->header:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageButton:Landroid/widget/ImageView;

    const/16 v1, 0x38

    const/16 v2, 0x38

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initContainerButton()V
    .locals 14

    .line 363
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    const/16 v2, 0x30

    .line 364
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 366
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 367
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 368
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 369
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 370
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v5, 0x10

    .line 371
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 372
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v5, "fonts/rmedium.ttf"

    .line 373
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v5, 0x41600000    # 14.0f

    .line 374
    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 375
    sget v5, Lorg/telegram/messenger/R$string;->Copy:I

    const-string v6, "Copy"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x11

    .line 377
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 378
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    new-array v4, v4, [F

    const/4 v7, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    aput v8, v4, v7

    invoke-static {v6, v4}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x12

    const/4 v12, 0x0

    .line 379
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 381
    new-instance v2, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda6;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonLinear:Landroid/widget/LinearLayout;

    const/4 v6, -0x1

    const/16 v7, 0x30

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x5

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    invoke-static/range {v6 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v9, 0x3

    const/16 v10, 0x8

    const/4 v12, 0x0

    .line 387
    invoke-static/range {v6 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v5, 0x50

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/16 v9, 0x10

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->contentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    const/4 v3, -0x2

    const/16 v4, 0x51

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initEditText()V
    .locals 9

    .line 276
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x0

    .line 277
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 278
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 279
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteHintText:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    .line 280
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 281
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v1, Lorg/telegram/messenger/R$string;->Message:I

    const-string v2, "Message"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 283
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 284
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 285
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    :cond_0
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 286
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 287
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsContainerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x11

    const/16 v5, 0x16

    const/16 v6, 0xc

    const/16 v7, 0x16

    const/16 v8, 0xc

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initOutgoingButtons()V
    .locals 9

    .line 393
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 394
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_language:I

    sget v2, Lorg/telegram/messenger/R$string;->Language:I

    const-string v3, "Language"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda14;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-direct {p0, v1, v2, v3}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->createOutgoingButton(ILjava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_send:I

    sget v2, Lorg/telegram/messenger/R$string;->Send:I

    const-string v3, "Send"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda15;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-direct {p0, v1, v2, v3}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->createOutgoingButton(ILjava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 399
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 395
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 401
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/16 v3, 0x30

    const/16 v4, 0x50

    const/16 v6, 0x10

    const/16 v7, 0x10

    const/16 v8, 0x10

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initSettingsButton()V
    .locals 10

    .line 318
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsButton:Landroid/widget/ImageView;

    .line 319
    sget v1, Lorg/telegram/messenger/R$drawable;->notifications_settings:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 320
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 321
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogButtonSelector:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 322
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translatorActionsDelegate:Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda11;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsButton:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 330
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsButton:Landroid/widget/ImageView;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    .line 331
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->header:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsButton:Landroid/widget/ImageView;

    const/16 v3, 0x38

    const/16 v4, 0x38

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    iput-object v3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    invoke-virtual {v0}, Lcom/iMe/model/translation/TranslationArgs;->getTranslationSettings()Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object v0

    if-nez v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$createOutgoingButton$9(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V
    .locals 0

    .line 422
    invoke-interface {p0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method

.method private synthetic lambda$dispatchTouchEvent$17()V
    .locals 2

    .line 1207
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->contentView:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda16;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$initButtonsByType$2(Landroid/view/View;)V
    .locals 0

    .line 302
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationPresenter:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-virtual {p1}, Lcom/iMe/ui/translate/TranslationPresenter;->prepareReplyDialog()V

    return-void
.end method

.method private synthetic lambda$initButtonsByType$3(Landroid/view/View;)V
    .locals 2

    .line 307
    iget-boolean p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->isTranslated:Z

    if-eqz p1, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismiss()V

    .line 309
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translatorActionsDelegate:Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;->replyMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_0
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationPresenter:Lcom/iMe/ui/translate/TranslationPresenter;

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/iMe/ui/translate/TranslationPresenter;->translate(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$initChangeLanguageButton$5(Landroid/view/View;)V
    .locals 2

    .line 343
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translateText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 344
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getBlockAt(I)Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 347
    :cond_0
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    invoke-virtual {p1, v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getBlockAt(I)Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->access$2500(Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translateText:Ljava/lang/String;

    .line 348
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->isTranslateText:Ljava/lang/Boolean;

    .line 349
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationPresenter:Lcom/iMe/ui/translate/TranslationPresenter;

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    invoke-virtual {v1}, Lcom/iMe/model/translation/TranslationArgs;->getTextToTranslate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/iMe/ui/translate/TranslationPresenter;->replaceLanguage(ZLjava/lang/String;)V

    goto :goto_1

    .line 351
    :cond_1
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->isTranslateText:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translateText:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    invoke-virtual {p1}, Lcom/iMe/model/translation/TranslationArgs;->getTextToTranslate()Ljava/lang/String;

    move-result-object p1

    .line 352
    :goto_0
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->isTranslateText:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->isTranslateText:Ljava/lang/Boolean;

    .line 353
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationPresenter:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0, p1}, Lcom/iMe/ui/translate/TranslationPresenter;->replaceLanguage(ZLjava/lang/String;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$initContainerButton$6(Landroid/view/View;)V
    .locals 2

    .line 382
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->TextCopied:I

    const-string v1, "TextCopied"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 383
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 384
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$initOutgoingButtons$7()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationPresenter:Lcom/iMe/ui/translate/TranslationPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iMe/ui/translate/TranslationPresenter;->loadLanguages(Z)V

    return-void
.end method

.method private synthetic lambda$initOutgoingButtons$8()V
    .locals 3

    .line 396
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismiss()V

    .line 397
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translatorActionsDelegate:Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getBlockAt(I)Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->access$2500(Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;->pasteResult(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initSettingsButton$4(Landroid/view/View;)V
    .locals 0

    .line 324
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translatorActionsDelegate:Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;

    if-eqz p1, :cond_0

    .line 325
    invoke-interface {p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;->openSettings()V

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$11()V
    .locals 2

    .line 773
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    return-void
.end method

.method private synthetic lambda$new$12(Landroid/view/View;)V
    .locals 1

    const-string p1, ""

    .line 802
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translateText:Ljava/lang/String;

    .line 803
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationPresenter:Lcom/iMe/ui/translate/TranslationPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/iMe/ui/translate/TranslationPresenter;->loadLanguages(Z)V

    return-void
.end method

.method private synthetic lambda$new$13(Landroid/view/View;)V
    .locals 1

    const-string p1, ""

    .line 824
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translateText:Ljava/lang/String;

    .line 825
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationPresenter:Lcom/iMe/ui/translate/TranslationPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/iMe/ui/translate/TranslationPresenter;->loadLanguages(Z)V

    return-void
.end method

.method private synthetic lambda$new$14(Landroid/view/View;)V
    .locals 0

    .line 863
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$15(Landroid/view/View;)V
    .locals 0

    .line 1011
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$16(Landroid/view/View;)V
    .locals 0

    .line 1018
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$openAnimationTo$10(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 560
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimation(F)V

    return-void
.end method

.method private synthetic lambda$openTo$18(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1334
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingT:F

    .line 1335
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1336
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingT:F

    const/high16 v1, 0x424c0000    # 51.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1337
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->bulletinContainer:Landroid/widget/FrameLayout;

    iget v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingT:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->minHeight()I

    move-result v0

    int-to-float v0, v0

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    const v3, 0x3f59999a    # 0.85f

    mul-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$provideTranslationPresenter$0()Lorg/koin/core/parameter/ParametersHolder;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/koin/core/parameter/ParametersHolderKt;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$showLanguages$1(Ljava/lang/String;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationPresenter:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-virtual {v0, p1}, Lcom/iMe/ui/translate/TranslationPresenter;->selectLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private minHeight()I
    .locals 1

    const/4 v0, 0x0

    .line 582
    invoke-direct {p0, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->minHeight(Z)I

    move-result v0

    return v0
.end method

.method private minHeight(Z)I
    .locals 3

    .line 586
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 587
    :goto_0
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsContainerView:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    :cond_1
    add-int/2addr v1, v0

    const/16 v0, 0x93

    .line 590
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 597
    iget v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->firstMinHeight:I

    if-gez v2, :cond_2

    if-lez v1, :cond_2

    .line 598
    iput v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->firstMinHeight:I

    .line 599
    :cond_2
    iget v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->firstMinHeight:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    if-nez p1, :cond_3

    .line 600
    iget p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->firstMinHeight:I

    return p1

    :cond_3
    return v0
.end method

.method private openAnimation(F)V
    .locals 9

    const/4 v0, 0x0

    .line 481
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 482
    iget v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->containerOpenAnimationT:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    return-void

    .line 485
    :cond_0
    iput p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->containerOpenAnimationT:F

    .line 487
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsButton:Landroid/widget/ImageView;

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 488
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 490
    invoke-static {v2, v3, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iget-object v6, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 488
    invoke-virtual {v1, v4, v5, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 494
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 497
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 499
    invoke-static {v2, v3, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget-object v5, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 497
    invoke-virtual {v1, v4, v2, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 503
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    :cond_2
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleView:Landroid/widget/TextView;

    const v2, 0x3f728241    # 0.9473f

    invoke-static {v0, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 508
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleView:Landroid/widget/TextView;

    invoke-static {v0, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleY(F)V

    .line 509
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleLayout:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x16

    const/16 v4, 0x48

    .line 510
    invoke-static {v2, v4, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/16 v6, 0x8

    .line 511
    invoke-static {v2, v6, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iget-object v7, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleLayout:Landroid/widget/FrameLayout$LayoutParams;

    iget v8, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v7, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 509
    invoke-virtual {v1, v5, v6, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 515
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleLayout:Landroid/widget/FrameLayout$LayoutParams;

    .line 517
    invoke-static {v2, v4, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sget v4, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->paddingHorizontal:I

    sub-int/2addr v2, v4

    const/16 v4, 0x2f

    const/16 v5, 0x1e

    .line 518
    invoke-static {v4, v5, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sget v5, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->paddingVertical:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleLayout:Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 516
    invoke-virtual {v1, v2, v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 522
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 525
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backButton:Landroid/widget/ImageView;

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v4, p1

    add-float/2addr v4, v2

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 526
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 527
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backButton:Landroid/widget/ImageView;

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 528
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->headerShadowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_0

    :cond_4
    move v0, p1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 530
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->headerLayout:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x46

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v3, 0x38

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v2, v4, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 531
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->header:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->headerLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 535
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1, v3, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p1

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 533
    invoke-virtual {v0, v2, p1, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 539
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private openAnimationTo(FZ)V
    .locals 1

    const/4 v0, 0x0

    .line 547
    invoke-direct {p0, p1, p2, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationTo(FZLjava/lang/Runnable;)V

    return-void
.end method

.method private openAnimationTo(FZLjava/lang/Runnable;)V
    .locals 2

    .line 551
    iget-boolean v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationToAnimatorPriority:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 554
    :cond_0
    iput-boolean p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationToAnimatorPriority:Z

    const/4 p2, 0x0

    .line 555
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 556
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationToAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    .line 557
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    .line 559
    iget v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->containerOpenAnimationT:F

    aput v1, p2, v0

    const/4 v0, 0x1

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationToAnimator:Landroid/animation/ValueAnimator;

    .line 560
    new-instance p2, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 561
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationToAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/iMe/fork/ui/dialog/TranslateAlert$1;

    invoke-direct {p2, p0, p3}, Lcom/iMe/fork/ui/dialog/TranslateAlert$1;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 574
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationToAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 575
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationToAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xdc

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 576
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationToAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private openTo(FZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1310
    invoke-direct {p0, p1, p2, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openTo(FZZ)V

    return-void
.end method

.method private openTo(FZZ)V
    .locals 3

    const/4 v0, 0x0

    .line 1323
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1324
    iget-boolean v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimatorPriority:Z

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 1327
    :cond_0
    iput-boolean p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimatorPriority:Z

    .line 1328
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    .line 1329
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v1, 0x0

    .line 1331
    iget v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingT:F

    aput v2, p2, v1

    const/4 v1, 0x1

    aput p1, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimator:Landroid/animation/ValueAnimator;

    .line 1332
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingT:F

    const/high16 v2, 0x424c0000    # 51.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1333
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    cmpg-float p2, p1, v0

    if-gtz p2, :cond_2

    .line 1340
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->onDismiss:Ljava/lang/Runnable;

    if-eqz p2, :cond_2

    .line 1341
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 1344
    :cond_2
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$7;

    invoke-direct {v0, p0, p1, p3}, Lcom/iMe/fork/ui/dialog/TranslateAlert$7;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;FZ)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1375
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1376
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingT:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x43be0000    # 380.0f

    mul-float/2addr p1, v0

    float-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1377
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_3

    const-wide/16 p2, 0x3c

    goto :goto_0

    :cond_3
    const-wide/16 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1378
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private scrollAtBottom()Z
    .locals 4

    .line 1035
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1036
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1037
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    invoke-virtual {v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getFirstUnloadedBlock()Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1039
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    .line 1041
    :cond_0
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    .line 1042
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsContainerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    if-gt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private scrollYTo(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1054
    invoke-direct {p0, p1, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollYTo(FLjava/lang/Runnable;)V

    return-void
.end method

.method private scrollYTo(FLjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1058
    invoke-direct {p0, p1, v0, p2}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationTo(FZLjava/lang/Runnable;)V

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    .line 1059
    invoke-direct {p0, p1, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openTo(FZ)V

    return-void
.end method

.method private setScrollY(F)V
    .locals 4

    .line 1046
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimation(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    .line 1047
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingT:F

    .line 1048
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, 0x424c0000    # 51.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1049
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1050
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->bulletinContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingT:F

    sub-float/2addr v0, v1

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->minHeight()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    const v3, 0x3f59999a    # 0.85f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method private updateCanExpand()V
    .locals 5

    .line 612
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->canExpand()Z

    move-result v0

    .line 613
    iget v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->containerOpenAnimationT:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 614
    invoke-direct {p0, v2, v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationTo(FZ)V

    .line 617
    :cond_0
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonShadowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v4, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonShadowView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v4

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x435c0000    # 220.0f

    mul-float/2addr v0, v2

    float-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public configureScreenWith(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    invoke-virtual {v0}, Lcom/iMe/model/translation/TranslationArgs;->getType()Lcom/iMe/fork/enums/TranslationDialogType;

    move-result-object v0

    sget-object v1, Lcom/iMe/fork/enums/TranslationDialogType;->REPLY:Lcom/iMe/fork/enums/TranslationDialogType;

    if-ne v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleFromView:Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

    invoke-virtual {v0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loaded(Ljava/lang/CharSequence;)V

    .line 196
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonTextView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->translation_dialog_translate_to:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonImageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleFromView:Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

    invoke-virtual {v0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->setFromLanguageText(Ljava/lang/String;)V

    .line 201
    :goto_0
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleToView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 1298
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_0

    .line 1299
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1302
    :cond_0
    iget-boolean v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismissed:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 1304
    iput-boolean v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismissed:Z

    .line 1305
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public dismissInternal()V
    .locals 1

    .line 1383
    :try_start_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1386
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v1, p0

    .line 1092
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1093
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1095
    iget-object v3, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    iget-object v4, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->containerRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1096
    iget-object v3, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->containerRect:Landroid/graphics/Rect;

    float-to-int v4, v0

    float-to-int v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v3, :cond_1

    .line 1097
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 1098
    iput-boolean v7, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedOutside:Z

    return v7

    .line 1100
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 1101
    iget-boolean v3, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedOutside:Z

    if-eqz v3, :cond_1

    .line 1102
    iput-boolean v6, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedOutside:Z

    .line 1103
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return v7

    :cond_1
    const/4 v3, 0x0

    .line 1110
    :try_start_1
    iget-object v8, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1111
    iget-object v8, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_7

    iget-boolean v8, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->maybeScrolling:Z

    if-nez v8, :cond_7

    .line 1112
    iget-object v8, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    .line 1113
    iget-object v10, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v0, v10

    iget-object v10, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v0, v10

    float-to-int v0, v0

    .line 1114
    iget-object v10, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getTop()I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v2, v10

    iget-object v11, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getTop()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget-object v11, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getTop()I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget-object v11, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 1115
    invoke-virtual {v8, v10}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v11

    int-to-float v15, v0

    .line 1116
    invoke-virtual {v8, v11, v15}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    .line 1118
    invoke-virtual {v8, v11}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v12

    .line 1119
    iget-object v13, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTexts:Landroid/text/Spannable;

    instance-of v13, v13, Landroid/text/Spannable;

    if-eqz v13, :cond_7

    cmpg-float v13, v12, v15

    if-gtz v13, :cond_7

    invoke-virtual {v8, v11}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v11

    add-float/2addr v12, v11

    cmpl-float v11, v12, v15

    if-ltz v11, :cond_7

    .line 1120
    iget-object v11, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTexts:Landroid/text/Spannable;

    const-class v12, Landroid/text/style/ClickableSpan;

    invoke-interface {v11, v0, v0, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    if-eqz v0, :cond_7

    .line 1121
    array-length v11, v0

    if-lt v11, v7, :cond_7

    .line 1122
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    if-ne v11, v7, :cond_4

    iget-object v11, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v11

    aget-object v12, v0, v6

    if-ne v11, v12, :cond_4

    .line 1123
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    check-cast v0, Landroid/text/style/ClickableSpan;

    iget-object v8, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 1124
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    if-eqz v0, :cond_2

    .line 1125
    iget-object v8, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->removeLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 1127
    :cond_2
    iput-object v9, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 1128
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    iget-boolean v8, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->noforwards:Z

    if-nez v8, :cond_3

    move v8, v7

    goto :goto_0

    :cond_3
    move v8, v6

    :goto_0
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    goto :goto_1

    .line 1129
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_6

    .line 1130
    new-instance v9, Lorg/telegram/ui/Components/LinkSpanDrawable;

    aget-object v13, v0, v6

    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v14

    int-to-float v0, v10

    const/16 v17, 0x0

    move-object v12, v9

    move/from16 v16, v0

    invoke-direct/range {v12 .. v17}, Lorg/telegram/ui/Components/LinkSpanDrawable;-><init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FFZ)V

    iput-object v9, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 1131
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    if-eqz v0, :cond_5

    .line 1132
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 1134
    :cond_5
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->obtainNewPath()Lorg/telegram/ui/Components/LinkPath;

    move-result-object v0

    .line 1135
    iget-object v9, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTexts:Landroid/text/Spannable;

    iget-object v10, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 1136
    iget-object v10, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTexts:Landroid/text/Spannable;

    iget-object v11, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 1137
    invoke-virtual {v0, v8, v9, v3}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 1138
    invoke-virtual {v8, v9, v10, v0}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 1140
    :cond_6
    :goto_1
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    return v7

    .line 1145
    :cond_7
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v0, :cond_9

    .line 1146
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    if-eqz v0, :cond_8

    .line 1147
    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    .line 1149
    :cond_8
    iput-object v9, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1152
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1155
    :cond_9
    :goto_2
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v8, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1156
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backButton:Landroid/widget/ImageView;

    iget-object v8, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1157
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonView:Landroid/widget/FrameLayout;

    iget-object v8, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1158
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-nez v0, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1159
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backRect:Landroid/graphics/Rect;

    .line 1160
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1162
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_d

    .line 1164
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->containerOpenAnimationT:F

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->canExpand()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    move v0, v7

    goto :goto_3

    :cond_b
    move v0, v6

    :goto_3
    iput-boolean v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromScrollRect:Z

    .line 1165
    iput-boolean v7, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->maybeScrolling:Z

    .line 1166
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getBlocksCount()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    invoke-virtual {v0, v6}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getBlockAt(I)Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;

    move-result-object v0

    iget-boolean v0, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loaded:Z

    if-nez v0, :cond_c

    move v6, v7

    :cond_c
    iput-boolean v6, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrolling:Z

    .line 1167
    iput v2, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromY:F

    .line 1168
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->getScrollY()F

    move-result v0

    iput v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromScrollY:F

    .line 1169
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromScrollViewY:F

    .line 1170
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v7

    .line 1172
    :cond_d
    iget-boolean v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->maybeScrolling:Z

    if-eqz v0, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_17

    .line 1173
    :cond_e
    iget v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromY:F

    sub-float/2addr v0, v2

    .line 1174
    iget-boolean v2, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromScrollRect:Z

    if-eqz v2, :cond_f

    .line 1175
    iget v2, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromScrollViewY:F

    const/16 v4, 0x30

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    neg-float v2, v2

    sub-float/2addr v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    neg-float v0, v0

    cmpg-float v2, v0, v3

    if-gez v2, :cond_10

    .line 1177
    iput-boolean v7, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrolling:Z

    .line 1178
    iget-object v2, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    goto :goto_4

    .line 1180
    :cond_f
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_10

    iget-boolean v2, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromScrollRect:Z

    if-nez v2, :cond_10

    .line 1181
    iput-boolean v7, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrolling:Z

    .line 1182
    iget-object v2, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 1183
    iget-object v2, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v2}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll()V

    .line 1184
    iput-boolean v6, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allowScroll:Z

    .line 1186
    :cond_10
    :goto_4
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    .line 1187
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->minHeight()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f59999a    # 0.85f

    mul-float/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1188
    iget v5, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromScrollY:F

    const/high16 v8, -0x40800000    # -1.0f

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    neg-float v5, v5

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v5, v9, v5

    mul-float/2addr v5, v4

    sub-float/2addr v2, v4

    iget v10, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromScrollY:F

    invoke-static {v10, v3}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    mul-float/2addr v10, v2

    add-float/2addr v5, v10

    add-float/2addr v5, v0

    cmpl-float v10, v5, v4

    if-lez v10, :cond_11

    sub-float/2addr v5, v4

    div-float/2addr v5, v2

    goto :goto_5

    :cond_11
    div-float/2addr v5, v4

    sub-float v2, v9, v5

    neg-float v5, v2

    .line 1190
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->canExpand()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1191
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1193
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->updateCanExpand()V

    .line 1195
    iget-boolean v2, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrolling:Z

    if-eqz v2, :cond_17

    .line 1196
    invoke-direct {v1, v5}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->setScrollY(F)V

    .line 1197
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v7, :cond_16

    .line 1198
    iput-boolean v6, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrolling:Z

    .line 1199
    iget-object v2, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    iget-boolean v3, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->noforwards:Z

    if-nez v3, :cond_13

    move v3, v7

    goto :goto_6

    :cond_13
    move v3, v6

    :goto_6
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 1200
    iput-boolean v6, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->maybeScrolling:Z

    .line 1201
    iput-boolean v7, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allowScroll:Z

    .line 1203
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_15

    .line 1204
    iget v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromScrollY:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget v2, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromScrollY:F

    cmpl-float v3, v5, v2

    if-lez v3, :cond_14

    move v8, v9

    :cond_14
    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v8, v2

    add-float/2addr v0, v8

    goto :goto_7

    .line 1205
    :cond_15
    iget v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromScrollY:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    :goto_7
    new-instance v2, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda18;

    invoke-direct {v2, v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda18;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    .line 1202
    invoke-direct {v1, v0, v2}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollYTo(FLjava/lang/Runnable;)V

    :cond_16
    return v7

    .line 1215
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->maybeScrolling:Z

    if-eqz v0, :cond_19

    .line 1216
    iput-boolean v6, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrolling:Z

    .line 1217
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    iget-boolean v2, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->noforwards:Z

    if-nez v2, :cond_18

    move v2, v7

    goto :goto_8

    :cond_18
    move v2, v6

    :goto_8
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 1218
    iput-boolean v6, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->maybeScrolling:Z

    .line 1219
    iput-boolean v7, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allowScroll:Z

    .line 1220
    iget v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromScrollY:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {v1, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollYTo(F)V

    .line 1222
    :cond_19
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v0

    :catch_1
    move-exception v0

    .line 1224
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1225
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public languageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const-string v1, "und"

    .line 1392
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1395
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/LocaleController;->getBuiltinLanguageByPlural(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object p1

    .line 1396
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    .line 1400
    iget-object v0, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pluralLangCode:Ljava/lang/String;

    const-string v1, "en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 1403
    iget-object p1, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    return-object p1

    .line 1405
    :cond_3
    iget-object p1, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    return-object p1

    :cond_4
    :goto_1
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1234
    invoke-super {p0, p1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->onCreate(Landroid/os/Bundle;)V

    .line 1236
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->contentView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1239
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1241
    sget v1, Lorg/telegram/messenger/R$style;->DialogNoAnimation:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 1242
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 1243
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v3, 0x33

    .line 1244
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, 0x0

    .line 1245
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1246
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1248
    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/iMe/model/translation/TranslationArgs;->getType()Lcom/iMe/fork/enums/TranslationDialogType;

    move-result-object v3

    sget-object v4, Lcom/iMe/fork/enums/TranslationDialogType;->REPLY:Lcom/iMe/fork/enums/TranslationDialogType;

    if-ne v3, v4, :cond_0

    const/16 v3, 0x10

    .line 1249
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1250
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x20001

    and-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 1252
    :cond_0
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1253
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 1254
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x7ffeff00

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1259
    :cond_1
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1260
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1261
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1263
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    .line 1264
    invoke-static {p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;I)V

    .line 1265
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fe7126e978d4fdfL    # 0.721

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    .line 1267
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->forceLayout()V

    return-void
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 184
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->contentView:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method public onLoadingState(Ljava/lang/String;Z)V
    .locals 2

    .line 239
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    invoke-virtual {p2}, Lcom/iMe/model/translation/TranslationArgs;->getType()Lcom/iMe/fork/enums/TranslationDialogType;

    move-result-object p2

    sget-object v0, Lcom/iMe/fork/enums/TranslationDialogType;->REPLY:Lcom/iMe/fork/enums/TranslationDialogType;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    .line 240
    invoke-virtual {p0, v1, v1, p1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    return-void

    .line 243
    :cond_0
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getBlockAt(I)Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 245
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 247
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textBlocks:Ljava/util/ArrayList;

    .line 248
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->blockIndex:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->blockIndex:I

    .line 250
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    invoke-virtual {p2, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->addBlock(Ljava/lang/CharSequence;)Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;

    const/high16 p1, 0x30000000

    .line 251
    invoke-direct {p0, p1, v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationTo(FZ)V

    return-void
.end method

.method public openReplyDialog(Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;)V
    .locals 6

    .line 261
    new-instance v0, Lcom/iMe/fork/ui/dialog/TranslateAlert;

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->noforwards:Z

    new-instance v3, Lcom/iMe/model/translation/TranslationArgs;

    sget-object v4, Lcom/iMe/fork/enums/TranslationDialogType;->REPLY:Lcom/iMe/fork/enums/TranslationDialogType;

    const-string v5, ""

    invoke-direct {v3, v4, v5, p1}, Lcom/iMe/model/translation/TranslationArgs;-><init>(Lcom/iMe/fork/enums/TranslationDialogType;Ljava/lang/String;Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;)V

    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translatorActionsDelegate:Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZLcom/iMe/model/translation/TranslationArgs;Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;)V

    .line 262
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 264
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method provideTranslationPresenter()Lcom/iMe/ui/translate/TranslationPresenter;
    .locals 3
    .annotation runtime Lmoxy/presenter/ProvidePresenter;
    .end annotation

    .line 105
    const-class v0, Lcom/iMe/ui/translate/TranslationPresenter;

    new-instance v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda19;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/translate/TranslationPresenter;

    return-object v0
.end method

.method public show()V
    .locals 2

    .line 1280
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    const/4 v0, 0x0

    .line 1282
    invoke-direct {p0, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimation(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 1283
    invoke-direct {p0, v0, v1, v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openTo(FZZ)V

    .line 1285
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1286
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1287
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->contentView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public showAppUpdateDialog()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createUpdateAppDialog(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showLanguages(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/translation/TranslationLanguageUiModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 229
    new-instance v0, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;

    .line 230
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda13;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    .line 229
    invoke-virtual {p0, v0}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showSubtitleLanguage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleToView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleFromView:Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

    invoke-virtual {p2, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loaded(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showTranslation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    invoke-virtual {v0}, Lcom/iMe/model/translation/TranslationArgs;->getType()Lcom/iMe/fork/enums/TranslationDialogType;

    move-result-object v0

    sget-object v1, Lcom/iMe/fork/enums/TranslationDialogType;->REPLY:Lcom/iMe/fork/enums/TranslationDialogType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 p2, 0x1

    .line 207
    invoke-virtual {p0, v3, p2, v2}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    .line 208
    iput-boolean p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->isTranslated:Z

    .line 209
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 211
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->Send:I

    const-string p3, "Send"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleToView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object p3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleFromView:Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

    invoke-virtual {p3, p2}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loaded(Ljava/lang/CharSequence;)V

    .line 215
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    invoke-virtual {p2, v3}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getBlockAt(I)Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loaded(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    .line 216
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    invoke-virtual {p2, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->setWholeText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    :goto_0
    return-void
.end method
