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
.field private allTexts:Landroid/text/Spannable;

.field private allTextsView:Landroid/widget/TextView;

.field private allowScroll:Z

.field private backButton:Landroid/widget/ImageView;

.field protected backDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private backRect:Landroid/graphics/Rect;

.field private blockIndex:I

.field private bulletinContainer:Landroid/widget/FrameLayout;

.field private buttonCopyImageView:Landroid/widget/ImageView;

.field private buttonCopyTextView:Landroid/widget/TextView;

.field private buttonCopyView:Landroid/widget/LinearLayout;

.field private buttonImageView:Landroid/widget/ImageView;

.field private buttonLinear:Landroid/widget/LinearLayout;

.field private buttonRect:Landroid/graphics/Rect;

.field private buttonShadowView:Landroid/widget/FrameLayout;

.field private buttonTextView:Landroid/widget/TextView;

.field private buttonView:Landroid/widget/FrameLayout;

.field private changeLanguageButton:Landroid/widget/ImageView;

.field private changeLanguageViewLayout:Landroid/widget/FrameLayout$LayoutParams;

.field private container:Landroid/widget/FrameLayout;

.field private containerOpenAnimationT:F

.field private containerRect:Landroid/graphics/Rect;

.field private contentView:Landroid/widget/FrameLayout;

.field private dismissed:Z

.field private editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field private fastHide:Z

.field private firstMinHeight:I

.field private fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private fromScrollRect:Z

.field private fromScrollViewY:F

.field private fromScrollY:F

.field private fromY:F

.field private header:Landroid/widget/FrameLayout;

.field private headerLayout:Landroid/widget/FrameLayout$LayoutParams;

.field private headerShadowView:Landroid/widget/FrameLayout;

.field private heightMaxPercent:F

.field private isTranslateText:Ljava/lang/Boolean;

.field private isTranslated:Z

.field private links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

.field private maybeScrolling:Z

.field private noforwards:Z

.field private onDismiss:Ljava/lang/Runnable;

.field private openAnimationToAnimator:Landroid/animation/ValueAnimator;

.field private openAnimationToAnimatorPriority:Z

.field private openingAnimator:Landroid/animation/ValueAnimator;

.field private openingAnimatorPriority:Z

.field private openingT:F

.field private pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

.field private pressedOutside:Z

.field private scrollRect:Landroid/graphics/Rect;

.field private scrollView:Landroidx/core/widget/NestedScrollView;

.field private scrollViewLayout:Landroid/widget/FrameLayout$LayoutParams;

.field private scrolling:Z

.field private settingsButton:Landroid/widget/ImageView;

.field private settingsViewLayout:Landroid/widget/FrameLayout$LayoutParams;

.field private shouldShowKeyboard:Z

.field private subtitleArrowView:Landroid/widget/ImageView;

.field private subtitleFromView:Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

.field private subtitleLayout:Landroid/widget/FrameLayout$LayoutParams;

.field private subtitleToView:Landroid/widget/TextView;

.field private subtitleView:Landroid/widget/LinearLayout;

.field private textBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private textRect:Landroid/graphics/Rect;

.field private textsContainerView:Landroid/widget/FrameLayout;

.field private textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

.field private titleLayout:Landroid/widget/FrameLayout$LayoutParams;

.field private titleView:Landroid/widget/TextView;

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

    .line 494
    new-instance v0, Lorg/telegram/messenger/DispatchQueue;

    const-string v1, "translateQueue"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;Z)V

    const v0, 0xf423f

    const/high16 v1, -0x80000000

    .line 1482
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->MOST_SPEC:I

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/tgnet/TLRPC$InputPeer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;ZLcom/iMe/fork/ui/dialog/TranslateAlert$OnLinkPress;Ljava/lang/Runnable;Lcom/iMe/model/translation/TranslationArgs;Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;)V
    .locals 26

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v0, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    move-object/from16 v10, p12

    .line 685
    sget v1, Lorg/telegram/messenger/R$style;->TransparentDialog:I

    invoke-direct {v6, v7, v1}, Lcom/iMe/ui/base/mvp/JavaMvpBottomSheet;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 128
    iput-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v2, ""

    .line 135
    iput-object v2, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translateText:Ljava/lang/String;

    const/4 v11, 0x0

    .line 139
    iput-boolean v11, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->isTranslated:Z

    .line 520
    iput v11, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->blockIndex:I

    const/4 v12, 0x0

    .line 523
    iput v12, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->containerOpenAnimationT:F

    .line 588
    iput-boolean v11, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationToAnimatorPriority:Z

    .line 589
    iput-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationToAnimator:Landroid/animation/ValueAnimator;

    const/4 v13, -0x1

    .line 624
    iput v13, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->firstMinHeight:I

    const/4 v14, 0x1

    .line 672
    iput-boolean v14, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allowScroll:Z

    .line 1107
    iput v12, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromScrollY:F

    .line 1117
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->containerRect:Landroid/graphics/Rect;

    .line 1118
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textRect:Landroid/graphics/Rect;

    .line 1119
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1120
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonRect:Landroid/graphics/Rect;

    .line 1121
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backRect:Landroid/graphics/Rect;

    .line 1122
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollRect:Landroid/graphics/Rect;

    .line 1123
    iput v12, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromY:F

    .line 1124
    iput-boolean v11, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedOutside:Z

    .line 1125
    iput-boolean v11, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->maybeScrolling:Z

    .line 1126
    iput-boolean v11, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrolling:Z

    .line 1127
    iput-boolean v11, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromScrollRect:Z

    .line 1129
    iput v12, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromScrollViewY:F

    .line 1130
    iput-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTexts:Landroid/text/Spannable;

    .line 1273
    iput v12, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingT:F

    .line 1314
    new-instance v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$6;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v6, v2}, Lcom/iMe/fork/ui/dialog/TranslateAlert$6;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;I)V

    iput-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 1337
    iput-boolean v11, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismissed:Z

    const v1, 0x3f59999a    # 0.85f

    .line 1361
    iput v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->heightMaxPercent:F

    .line 1363
    iput-boolean v11, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fastHide:Z

    .line 1364
    iput-boolean v11, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimatorPriority:Z

    move-object/from16 v1, p13

    .line 687
    iput-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translatorActionsDelegate:Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;

    .line 688
    iput-object v10, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    if-eqz v10, :cond_0

    .line 689
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

    .line 691
    invoke-virtual {v6, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    goto :goto_1

    .line 693
    :cond_1
    invoke-virtual {v6, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->setBackgroundColor(I)V

    .line 695
    :goto_1
    invoke-virtual {v6, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 696
    invoke-virtual {v6, v11}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCanDismissWithSwipe(Z)V

    .line 697
    invoke-virtual {v6, v11}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 698
    invoke-virtual {v6, v11}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 702
    iput-boolean v9, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->noforwards:Z

    move-object/from16 v1, p1

    .line 703
    iput-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_2

    const-string v1, "und"

    .line 704
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 707
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textBlocks:Ljava/util/ArrayList;

    move-object/from16 v2, p8

    .line 708
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p11

    .line 710
    iput-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->onDismiss:Ljava/lang/Runnable;

    .line 716
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/16 v2, 0x1e

    if-lt v15, v2, :cond_3

    .line 717
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, -0x7fffff00

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    goto :goto_2

    :cond_3
    if-lt v15, v1, :cond_4

    .line 719
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, -0x7ffeff00

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    :cond_4
    :goto_2
    if-eqz v9, :cond_5

    .line 723
    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 726
    :cond_5
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->contentView:Landroid/widget/FrameLayout;

    .line 727
    iget-object v4, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 728
    iget-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v11}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 729
    iget-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v11}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    if-lt v15, v1, :cond_7

    .line 731
    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v14}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    if-lt v15, v2, :cond_6

    .line 733
    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->contentView:Landroid/widget/FrameLayout;

    const/16 v2, 0x700

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    goto :goto_3

    .line 735
    :cond_6
    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->contentView:Landroid/widget/FrameLayout;

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 739
    :cond_7
    :goto_3
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const-string v2, "dialogBackground"

    .line 740
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x2

    .line 741
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    const v3, -0x40d70a3d    # -0.66f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x1e000000

    invoke-virtual {v1, v2, v12, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 742
    new-instance v2, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;

    invoke-direct {v2, v6, v7, v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$2;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/content/Context;Landroid/graphics/Paint;)V

    iput-object v2, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    .line 797
    invoke-virtual {v2, v11}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 799
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->header:Landroid/widget/FrameLayout;

    .line 801
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleView:Landroid/widget/TextView;

    .line 802
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

    .line 803
    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setPivotY(F)V

    .line 804
    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setLines(I)V

    .line 805
    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/messenger/R$string;->AutomaticTranslation:I

    const-string v3, "AutomaticTranslation"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleView:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v16, 0x5

    const/4 v5, 0x3

    if-eqz v2, :cond_9

    move/from16 v2, v16

    goto :goto_5

    :cond_9
    move v2, v5

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 807
    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleView:Landroid/widget/TextView;

    const-string v17, "fonts/rmedium.ttf"

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 808
    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleView:Landroid/widget/TextView;

    const-string v18, "dialogTextBlack"

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 809
    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleView:Landroid/widget/TextView;

    const/16 v4, 0x13

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v11, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 810
    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->header:Landroid/widget/FrameLayout;

    iget-object v2, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleView:Landroid/widget/TextView;

    const/16 v19, -0x1

    const/16 v20, -0x2

    const/16 v21, 0x37

    const/16 v22, 0x16

    const/16 v23, 0x16

    const/16 v24, 0x16

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    iput-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 816
    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleView:Landroid/widget/TextView;

    new-instance v2, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda17;

    invoke-direct {v2, v6}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda17;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 820
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleView:Landroid/widget/LinearLayout;

    .line 821
    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x11

    if-lt v15, v3, :cond_a

    .line 823
    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleView:Landroid/widget/LinearLayout;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 825
    :cond_a
    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleView:Landroid/widget/LinearLayout;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_b

    move/from16 v2, v16

    goto :goto_6

    :cond_b
    move v2, v5

    :goto_6
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 827
    invoke-virtual {v6, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 828
    new-instance v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$3;

    if-nez v2, :cond_c

    invoke-virtual {v6, v8}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_7

    :cond_c
    move-object/from16 v19, v2

    :goto_7
    const/16 v20, 0xe

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v21

    const-string v22, "player_actionBarSubtitle"

    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v23

    move-object v0, v1

    move-object v13, v1

    move-object/from16 v1, p0

    move-object v12, v2

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    move/from16 v4, v21

    move/from16 v5, v23

    invoke-direct/range {v0 .. v5}, Lcom/iMe/fork/ui/dialog/TranslateAlert$3;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/content/Context;Ljava/lang/CharSequence;II)V

    iput-object v13, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleFromView:Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

    .line 843
    invoke-virtual/range {p12 .. p12}, Lcom/iMe/model/translation/TranslationArgs;->getType()Lcom/iMe/fork/enums/TranslationDialogType;

    move-result-object v0

    sget-object v1, Lcom/iMe/fork/enums/TranslationDialogType;->REPLY:Lcom/iMe/fork/enums/TranslationDialogType;

    const/16 v2, 0x8

    if-eq v0, v1, :cond_d

    .line 844
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleFromView:Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->access$1000(Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 845
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleFromView:Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->access$1000(Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda7;

    invoke-direct {v3, v6}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda7;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 851
    :cond_d
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleFromView:Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

    iput-boolean v11, v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->showLoadingText:Z

    .line 852
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleArrowView:Landroid/widget/ImageView;

    .line 853
    sget v3, Lorg/telegram/messenger/R$drawable;->search_arrow:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 854
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleArrowView:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 855
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_e

    .line 856
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleArrowView:Landroid/widget/ImageView;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 859
    :cond_e
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleToView:Landroid/widget/TextView;

    .line 860
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setLines(I)V

    .line 861
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleToView:Landroid/widget/TextView;

    invoke-static/range {v22 .. v22}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 862
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleToView:Landroid/widget/TextView;

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v11, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 863
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleToView:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->languageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    invoke-virtual/range {p12 .. p12}, Lcom/iMe/model/translation/TranslationArgs;->getType()Lcom/iMe/fork/enums/TranslationDialogType;

    move-result-object v0

    if-eq v0, v1, :cond_f

    .line 866
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleToView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 867
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleToView:Landroid/widget/TextView;

    new-instance v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda10;

    invoke-direct {v1, v6}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda10;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 874
    :cond_f
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v1, 0x10

    const/4 v2, -0x2

    if-eqz v0, :cond_10

    .line 875
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleView:Landroid/widget/LinearLayout;

    sget v3, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->paddingHorizontal:I

    invoke-virtual {v0, v3, v11, v11, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 876
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleView:Landroid/widget/LinearLayout;

    iget-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleToView:Landroid/widget/TextView;

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 877
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleView:Landroid/widget/LinearLayout;

    iget-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleArrowView:Landroid/widget/ImageView;

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x10

    const/16 v22, 0x3

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 878
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleView:Landroid/widget/LinearLayout;

    iget-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleFromView:Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

    const/16 v22, 0x2

    const/16 v23, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 880
    :cond_10
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleView:Landroid/widget/LinearLayout;

    sget v3, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->paddingHorizontal:I

    invoke-virtual {v0, v11, v11, v3, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 881
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleView:Landroid/widget/LinearLayout;

    iget-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleFromView:Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x10

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x2

    const/16 v25, 0x0

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 882
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleView:Landroid/widget/LinearLayout;

    iget-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleArrowView:Landroid/widget/ImageView;

    const/16 v23, 0x1

    const/16 v24, 0x3

    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 883
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleView:Landroid/widget/LinearLayout;

    iget-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleToView:Landroid/widget/TextView;

    invoke-static {v2, v2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_8
    if-eqz v12, :cond_11

    .line 886
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleFromView:Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

    invoke-virtual {v0, v12}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->set(Ljava/lang/CharSequence;)V

    .line 889
    :cond_11
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->header:Landroid/widget/FrameLayout;

    iget-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleView:Landroid/widget/LinearLayout;

    const/16 v19, -0x1

    const/high16 v20, -0x40000000    # -2.0f

    .line 892
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_12

    goto :goto_9

    :cond_12
    const/16 v16, 0x3

    :goto_9
    or-int/lit8 v21, v16, 0x30

    sget v4, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->paddingHorizontal:I

    int-to-float v5, v4

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v5, v8

    const/high16 v8, 0x41b00000    # 22.0f

    sub-float v22, v8, v5

    const/high16 v5, 0x423c0000    # 47.0f

    sget v12, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->paddingVertical:I

    int-to-float v12, v12

    sget v13, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v12, v13

    sub-float v23, v5, v12

    int-to-float v4, v4

    div-float/2addr v4, v13

    sub-float v24, v8, v4

    const/16 v25, 0x0

    .line 889
    invoke-static/range {v19 .. v25}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    iput-object v4, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 899
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backButton:Landroid/widget/ImageView;

    .line 900
    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 901
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backButton:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 902
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 903
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backButton:Landroid/widget/ImageView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v0, v3, v11, v4, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 904
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backButton:Landroid/widget/ImageView;

    const-string v3, "dialogButtonSelector"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 905
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 906
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backButton:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 907
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda8;

    invoke-direct {v3, v6}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda8;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 908
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->header:Landroid/widget/FrameLayout;

    iget-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backButton:Landroid/widget/ImageView;

    const/16 v4, 0x38

    const/4 v5, 0x3

    invoke-static {v4, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 910
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->headerShadowView:Landroid/widget/FrameLayout;

    const-string v3, "dialogShadowLine"

    .line 911
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 912
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->headerShadowView:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 913
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->header:Landroid/widget/FrameLayout;

    iget-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->headerShadowView:Landroid/widget/FrameLayout;

    const/16 v4, 0x57

    const/4 v5, -0x1

    invoke-static {v5, v14, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 915
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->header:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 916
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    iget-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->header:Landroid/widget/FrameLayout;

    const/16 v4, 0x46

    const/16 v8, 0x37

    invoke-static {v5, v4, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    iput-object v4, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->headerLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 918
    new-instance v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$4;

    invoke-direct {v0, v6, v7}, Lcom/iMe/fork/ui/dialog/TranslateAlert$4;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/content/Context;)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    .line 937
    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 939
    new-instance v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$5;

    invoke-direct {v0, v6, v7}, Lcom/iMe/fork/ui/dialog/TranslateAlert$5;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;Landroid/content/Context;)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    .line 974
    new-instance v3, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>(Landroid/view/View;)V

    iput-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    .line 975
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 976
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v0, v14, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 977
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    xor-int/lit8 v3, v9, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 978
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    const-string v3, "chat_inTextSelectionHighlight"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    const-string v0, "chat_TextSelectionCursor"

    .line 979
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x1d

    if-lt v15, v3, :cond_13

    .line 981
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/XiaomiUtilities;->isMIUI()Z

    move-result v3

    if-nez v3, :cond_13

    .line 982
    iget-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 983
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 984
    iget-object v4, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextSelectHandleLeft(Landroid/graphics/drawable/Drawable;)V

    .line 986
    iget-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 987
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 988
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSelectHandleRight(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    :catch_0
    :cond_13
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 993
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    new-instance v3, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v3}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 995
    new-instance v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-direct {v0, v7, v1, v3, v4}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;-><init>(Landroid/content/Context;IILandroid/widget/TextView;)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    const/16 v1, 0x16

    .line 997
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget v3, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->paddingHorizontal:I

    sub-int/2addr v1, v3

    const/16 v4, 0xc

    .line 998
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sget v5, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->paddingVertical:I

    sub-int/2addr v4, v5

    const/16 v8, 0x16

    .line 999
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v8, v3

    const/16 v3, 0xc

    .line 1000
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v3, v5

    .line 996
    invoke-virtual {v0, v1, v4, v8, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1007
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsContainerView:Landroid/widget/FrameLayout;

    .line 1010
    invoke-virtual/range {p12 .. p12}, Lcom/iMe/model/translation/TranslationArgs;->getType()Lcom/iMe/fork/enums/TranslationDialogType;

    move-result-object v0

    sget-object v1, Lcom/iMe/fork/enums/TranslationDialogType;->REPLY:Lcom/iMe/fork/enums/TranslationDialogType;

    if-ne v0, v1, :cond_14

    .line 1011
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->initEditText()V

    const/4 v3, -0x1

    goto :goto_a

    .line 1013
    :cond_14
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsContainerView:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    const/4 v3, -0x1

    invoke-static {v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1015
    :goto_a
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsContainerView:Landroid/widget/FrameLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1017
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x77

    const/4 v8, 0x0

    const/16 v9, 0x46

    const/4 v12, 0x0

    const/16 v13, 0x51

    move/from16 p4, v3

    move/from16 p5, v4

    move/from16 p6, v5

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v12

    move/from16 p10, v13

    invoke-static/range {p4 .. p10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    iput-object v3, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1019
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonShadowView:Landroid/widget/FrameLayout;

    const-string v1, "dialogShadowLine"

    .line 1020
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1021
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonShadowView:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/16 v5, 0x57

    const/4 v9, 0x0

    const/16 v13, 0x50

    move/from16 p4, v3

    move/from16 p5, v4

    move/from16 p6, v5

    move/from16 p8, v9

    move/from16 p10, v13

    invoke-static/range {p4 .. p10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1023
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonTextView:Landroid/widget/TextView;

    .line 1024
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setLines(I)V

    .line 1025
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1026
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 1027
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1028
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1029
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonTextView:Landroid/widget/TextView;

    const-string v3, "featuredStickers_buttonText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1030
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonTextView:Landroid/widget/TextView;

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1031
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v0, v14, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1032
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->CloseTranslation:I

    const-string v4, "CloseTranslation"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->Close:I

    const-string v4, "Close"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonImageView:Landroid/widget/ImageView;

    .line 1036
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_close:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1038
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonView:Landroid/widget/FrameLayout;

    .line 1049
    invoke-virtual/range {p12 .. p12}, Lcom/iMe/model/translation/TranslationArgs;->getType()Lcom/iMe/fork/enums/TranslationDialogType;

    move-result-object v0

    sget-object v3, Lcom/iMe/fork/enums/TranslationDialogType;->INCOMING:Lcom/iMe/fork/enums/TranslationDialogType;

    const/high16 v4, 0x40800000    # 4.0f

    const-string v5, "featuredStickers_addButton"

    if-ne v0, v3, :cond_15

    .line 1050
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonLinear:Landroid/widget/LinearLayout;

    .line 1051
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1052
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonLinear:Landroid/widget/LinearLayout;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    new-array v2, v14, [F

    aput v4, v2, v11

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1053
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonLinear:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonImageView:Landroid/widget/ImageView;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x12

    const/4 v10, 0x0

    move/from16 p3, v2

    move/from16 p4, v3

    move/from16 p5, v4

    move/from16 p6, v5

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    invoke-static/range {p3 .. p9}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1054
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonLinear:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1055
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonLinear:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda9;

    invoke-direct {v1, v6}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda9;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1056
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->initContainerButton()V

    goto :goto_b

    .line 1058
    :cond_15
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonView:Landroid/widget/FrameLayout;

    new-array v1, v14, [F

    aput v4, v1, v11

    invoke-static {v5, v1}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(Ljava/lang/String;[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1059
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonView:Landroid/widget/FrameLayout;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    new-array v3, v14, [F

    aput v4, v3, v11

    invoke-static {v1, v3}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1060
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonView:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonImageView:Landroid/widget/ImageView;

    const/16 v3, 0x13

    invoke-static {v2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1061
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonView:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1062
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonView:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda4;

    invoke-direct {v1, v6}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda4;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1063
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonView:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v5, 0x50

    const/16 v8, 0x10

    const/16 v9, 0x10

    const/16 v10, 0x10

    const/16 v11, 0x10

    move/from16 p4, v3

    move/from16 p5, v4

    move/from16 p6, v5

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    invoke-static/range {p4 .. p10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1064
    iget-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    const/16 v3, 0x51

    const/4 v4, -0x1

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1068
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->initButtonsByType()V

    .line 1071
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v6, Lcom/iMe/fork/ui/dialog/TranslateAlert;->bulletinContainer:Landroid/widget/FrameLayout;

    .line 1072
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

    .line 145
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

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

    .line 94
    iput-boolean p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationToAnimatorPriority:Z

    return p1
.end method

.method static synthetic access$100(Lcom/iMe/fork/ui/dialog/TranslateAlert;)F
    .locals 0

    .line 94
    iget p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->heightMaxPercent:F

    return p0
.end method

.method static synthetic access$1100(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allowScroll:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Z
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->canExpand()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Z
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->checkForNextLoading()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/iMe/fork/ui/dialog/TranslateAlert;FZ)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationTo(FZ)V

    return-void
.end method

.method static synthetic access$1500()I
    .locals 1

    .line 94
    sget v0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->MOST_SPEC:I

    return v0
.end method

.method static synthetic access$1600(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->bulletinContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->shouldShowKeyboard:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/iMe/fork/ui/dialog/TranslateAlert;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->shouldShowKeyboard:Z

    return p1
.end method

.method static synthetic access$200(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Lorg/telegram/ui/Components/EditTextBoldCursor;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->noforwards:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Landroid/widget/TextView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Landroidx/core/widget/NestedScrollView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/iMe/fork/ui/dialog/TranslateAlert;F)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimation(F)V

    return-void
.end method

.method static synthetic access$2502(Lcom/iMe/fork/ui/dialog/TranslateAlert;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimatorPriority:Z

    return p1
.end method

.method static synthetic access$300(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsContainerView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/iMe/fork/ui/dialog/TranslateAlert;)I
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->minHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/iMe/fork/ui/dialog/TranslateAlert;)F
    .locals 0

    .line 94
    iget p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->containerOpenAnimationT:F

    return p0
.end method

.method static synthetic access$600(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->updateCanExpand()V

    return-void
.end method

.method static synthetic access$700(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismissed:Z

    return p0
.end method

.method static synthetic access$800(Lcom/iMe/fork/ui/dialog/TranslateAlert;)F
    .locals 0

    .line 94
    iget p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingT:F

    return p0
.end method

.method static synthetic access$900(Lcom/iMe/fork/ui/dialog/TranslateAlert;)Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleFromView:Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

    return-object p0
.end method

.method private canExpand()Z
    .locals 4

    .line 650
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    .line 651
    invoke-virtual {v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getBlocksCount()I

    move-result v0

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 652
    invoke-direct {p0, v2}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->minHeight(Z)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->heightMaxPercent:F

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

    .line 1468
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollAtBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static createInstanceForForkTranslation(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/translation/TranslationArgs;Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;Z)Lcom/iMe/fork/ui/dialog/TranslateAlert;
    .locals 1

    .line 161
    new-instance v0, Lcom/iMe/fork/ui/dialog/TranslateAlert;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/iMe/fork/ui/dialog/TranslateAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZLcom/iMe/model/translation/TranslationArgs;Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;)V

    return-object v0
.end method

.method private createOutgoingButton(ILjava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/widget/FrameLayout;
    .locals 5

    .line 468
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 469
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->singleLine(Landroid/widget/TextView;)V

    .line 470
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 471
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v1, 0x11

    .line 472
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v2, "featuredStickers_buttonText"

    .line 473
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    .line 474
    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 475
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x0

    .line 476
    invoke-virtual {v0, p1, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 480
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$dimen;->margin_half_small:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 482
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string p2, "featuredStickers_addButton"

    .line 483
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    aput v4, v2, v3

    invoke-static {p2, v2}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, -0x2

    .line 484
    invoke-static {p2, p2, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
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

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 174
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, p1, :cond_4

    const/4 v1, 0x0

    .line 175
    invoke-interface {p0, v1, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n\n"

    .line 176
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    const-string v3, "\n"

    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    :cond_1
    if-ne v3, v4, :cond_2

    const-string v3, ". "

    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    :cond_2
    if-ne v3, v4, :cond_3

    .line 184
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 186
    invoke-interface {p0, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 189
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 190
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method private getScrollY()F
    .locals 3

    .line 1110
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

    .line 1114
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    return v0
.end method

.method private initButtonsByType()V
    .locals 3

    .line 326
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->initSettingsButton()V

    .line 327
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    invoke-virtual {v0}, Lcom/iMe/model/translation/TranslationArgs;->getType()Lcom/iMe/fork/enums/TranslationDialogType;

    move-result-object v0

    .line 328
    sget-object v1, Lcom/iMe/fork/enums/TranslationDialogType;->OUTGOING:Lcom/iMe/fork/enums/TranslationDialogType;

    if-ne v0, v1, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->initOutgoingButtons()V

    goto :goto_0

    .line 330
    :cond_0
    sget-object v1, Lcom/iMe/fork/enums/TranslationDialogType;->INCOMING:Lcom/iMe/fork/enums/TranslationDialogType;

    if-ne v0, v1, :cond_2

    .line 331
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->initChangeLanguageButton()V

    .line 332
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    invoke-virtual {v0}, Lcom/iMe/model/translation/TranslationArgs;->getTranslationSettings()Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translatorActionsDelegate:Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;

    invoke-interface {v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;->hasReplyingMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 333
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    invoke-virtual {v0}, Lcom/iMe/model/translation/TranslationArgs;->getTranslationSettings()Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;->getDialogId()J

    move-result-wide v0

    .line 334
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

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonTextView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->Reply:I

    const-string v2, "Reply"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonImageView:Landroid/widget/ImageView;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_reply:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 337
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonLinear:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 340
    :cond_2
    sget-object v1, Lcom/iMe/fork/enums/TranslationDialogType;->REPLY:Lcom/iMe/fork/enums/TranslationDialogType;

    if-ne v0, v1, :cond_3

    .line 341
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

    .line 375
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageButton:Landroid/widget/ImageView;

    .line 376
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_retry:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 377
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 378
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageButton:Landroid/widget/ImageView;

    const-string v1, "dialogButtonSelector"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 379
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda5;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageButton:Landroid/widget/ImageView;

    const-string v1, "dialogTextBlack"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 396
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageButton:Landroid/widget/ImageView;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    .line 397
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

    .line 398
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
    .locals 11

    .line 406
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    const/16 v2, 0x30

    .line 407
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonCopyImageView:Landroid/widget/ImageView;

    .line 409
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 410
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonCopyTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    .line 411
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLines(I)V

    .line 412
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 413
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonCopyTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 414
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonCopyTextView:Landroid/widget/TextView;

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 415
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonCopyTextView:Landroid/widget/TextView;

    const-string v4, "featuredStickers_buttonText"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 416
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonCopyTextView:Landroid/widget/TextView;

    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 417
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonCopyTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 418
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonCopyTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->Copy:I

    const-string v5, "Copy"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonCopyView:Landroid/widget/LinearLayout;

    const/16 v4, 0x11

    .line 420
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 421
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonCopyView:Landroid/widget/LinearLayout;

    const-string v4, "featuredStickers_addButton"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    new-array v3, v3, [F

    const/4 v5, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    aput v6, v3, v5

    invoke-static {v4, v3}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 422
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonCopyView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonCopyImageView:Landroid/widget/ImageView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x12

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonCopyView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 424
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonCopyView:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda6;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonLinear:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x5

    const/16 v9, 0x8

    invoke-static/range {v3 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonCopyView:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/4 v6, 0x3

    const/16 v7, 0x8

    const/4 v9, 0x0

    invoke-static/range {v3 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/16 v5, 0x50

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/16 v9, 0x10

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 432
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

    .line 307
    new-instance v0, Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x0

    .line 308
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 309
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v1, "windowBackgroundWhiteBlackText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 310
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const-string v1, "windowBackgroundWhiteHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintColor(I)V

    .line 311
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 312
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget v1, Lorg/telegram/messenger/R$string;->Message:I

    const-string v2, "Message"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setHintText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 314
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 315
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 316
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    :cond_0
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 317
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 318
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

    .line 436
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 437
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_language:I

    sget v2, Lorg/telegram/messenger/R$string;->Language:I

    const-string v3, "Language"

    .line 440
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda14;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    .line 438
    invoke-direct {p0, v1, v2, v3}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->createOutgoingButton(ILjava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 443
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 437
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 445
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_send:I

    sget v2, Lorg/telegram/messenger/R$string;->Send:I

    const-string v3, "Send"

    .line 448
    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda15;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    .line 446
    invoke-direct {p0, v1, v2, v3}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->createOutgoingButton(ILjava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 454
    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 445
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 460
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

    .line 353
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsButton:Landroid/widget/ImageView;

    .line 354
    sget v1, Lorg/telegram/messenger/R$drawable;->notifications_settings:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 355
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 356
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsButton:Landroid/widget/ImageView;

    const-string v1, "dialogButtonSelector"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 357
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

    .line 358
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda11;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsButton:Landroid/widget/ImageView;

    const-string v1, "dialogTextBlack"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 363
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsButton:Landroid/widget/ImageView;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V

    .line 364
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

    .line 369
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    invoke-virtual {v0}, Lcom/iMe/model/translation/TranslationArgs;->getTranslationSettings()Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object v0

    if-nez v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$createOutgoingButton$9(Lcom/iMe/fork/utils/Callbacks$Callback;Landroid/view/View;)V
    .locals 0

    .line 485
    invoke-interface {p0}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    return-void
.end method

.method private synthetic lambda$dispatchTouchEvent$17()V
    .locals 2

    .line 1251
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->contentView:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda16;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$initButtonsByType$2(Landroid/view/View;)V
    .locals 0

    .line 337
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationPresenter:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-virtual {p1}, Lcom/iMe/ui/translate/TranslationPresenter;->prepareReplyDialog()V

    return-void
.end method

.method private synthetic lambda$initButtonsByType$3(Landroid/view/View;)V
    .locals 2

    .line 342
    iget-boolean p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->isTranslated:Z

    if-eqz p1, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismiss()V

    .line 344
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translatorActionsDelegate:Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;->replyMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 346
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

    .line 380
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translateText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 382
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getBlockAt(I)Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 386
    :cond_0
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    invoke-virtual {p1, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getBlockAt(I)Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->access$2600(Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translateText:Ljava/lang/String;

    .line 387
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->isTranslateText:Ljava/lang/Boolean;

    .line 388
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationPresenter:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    invoke-virtual {v1}, Lcom/iMe/model/translation/TranslationArgs;->getTextToTranslate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/iMe/ui/translate/TranslationPresenter;->replaceLanguage(ZLjava/lang/String;)V

    goto :goto_1

    .line 390
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

    .line 391
    :goto_0
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->isTranslateText:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->isTranslateText:Ljava/lang/Boolean;

    .line 392
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationPresenter:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0, p1}, Lcom/iMe/ui/translate/TranslationPresenter;->replaceLanguage(ZLjava/lang/String;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$initContainerButton$6(Landroid/view/View;)V
    .locals 2

    .line 425
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

    .line 426
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 427
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$initOutgoingButtons$7()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationPresenter:Lcom/iMe/ui/translate/TranslationPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iMe/ui/translate/TranslationPresenter;->loadLanguages(Z)V

    return-void
.end method

.method private synthetic lambda$initOutgoingButtons$8()V
    .locals 3

    .line 450
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismiss()V

    .line 451
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translatorActionsDelegate:Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getBlockAt(I)Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->access$2600(Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;)Landroid/widget/TextView;

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

    .line 359
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translatorActionsDelegate:Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;

    invoke-interface {p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;->openSettings()V

    .line 360
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$11()V
    .locals 2

    .line 817
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

    .line 846
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translateText:Ljava/lang/String;

    .line 847
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationPresenter:Lcom/iMe/ui/translate/TranslationPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/iMe/ui/translate/TranslationPresenter;->loadLanguages(Z)V

    return-void
.end method

.method private synthetic lambda$new$13(Landroid/view/View;)V
    .locals 1

    const-string p1, ""

    .line 868
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translateText:Ljava/lang/String;

    .line 869
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationPresenter:Lcom/iMe/ui/translate/TranslationPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/iMe/ui/translate/TranslationPresenter;->loadLanguages(Z)V

    return-void
.end method

.method private synthetic lambda$new$14(Landroid/view/View;)V
    .locals 0

    .line 907
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$15(Landroid/view/View;)V
    .locals 0

    .line 1055
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$new$16(Landroid/view/View;)V
    .locals 0

    .line 1062
    invoke-virtual {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$openAnimationTo$10(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 605
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

    .line 1378
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingT:F

    .line 1379
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1380
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingT:F

    const/high16 v1, 0x424c0000    # 51.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1381
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

    iget v3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->heightMaxPercent:F

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

    .line 104
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/koin/core/parameter/ParametersHolderKt;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$showLanguages$1(Ljava/lang/String;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationPresenter:Lcom/iMe/ui/translate/TranslationPresenter;

    invoke-virtual {v0, p1}, Lcom/iMe/ui/translate/TranslationPresenter;->selectLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private minHeight()I
    .locals 1

    const/4 v0, 0x0

    .line 627
    invoke-direct {p0, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->minHeight(Z)I

    move-result v0

    return v0
.end method

.method private minHeight(Z)I
    .locals 3

    .line 631
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 632
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

    .line 635
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v0, v1

    .line 642
    iget v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->firstMinHeight:I

    if-gez v2, :cond_2

    if-lez v1, :cond_2

    .line 643
    iput v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->firstMinHeight:I

    .line 644
    :cond_2
    iget v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->firstMinHeight:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    if-nez p1, :cond_3

    .line 645
    iget p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->firstMinHeight:I

    return p1

    :cond_3
    return v0
.end method

.method private openAnimation(F)V
    .locals 9

    const/4 v0, 0x0

    .line 526
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 527
    iget v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->containerOpenAnimationT:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    return-void

    .line 530
    :cond_0
    iput p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->containerOpenAnimationT:F

    .line 532
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsButton:Landroid/widget/ImageView;

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 533
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 535
    invoke-static {v2, v3, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    iget-object v6, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 533
    invoke-virtual {v1, v4, v5, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 539
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsButton:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 541
    :cond_1
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 542
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->settingsViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 544
    invoke-static {v2, v3, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget-object v5, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 542
    invoke-virtual {v1, v4, v2, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 548
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->changeLanguageViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    :cond_2
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleView:Landroid/widget/TextView;

    const v2, 0x3f728241    # 0.9473f

    invoke-static {v0, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 553
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleView:Landroid/widget/TextView;

    invoke-static {v0, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setScaleY(F)V

    .line 554
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleLayout:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x16

    const/16 v4, 0x48

    .line 555
    invoke-static {v2, v4, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/16 v6, 0x8

    .line 556
    invoke-static {v2, v6, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    iget-object v7, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleLayout:Landroid/widget/FrameLayout$LayoutParams;

    iget v8, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v7, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 554
    invoke-virtual {v1, v5, v6, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 560
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->titleLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleLayout:Landroid/widget/FrameLayout$LayoutParams;

    .line 562
    invoke-static {v2, v4, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sget v4, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->paddingHorizontal:I

    sub-int/2addr v2, v4

    const/16 v4, 0x2f

    const/16 v5, 0x1e

    .line 563
    invoke-static {v4, v5, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sget v5, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->paddingVertical:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleLayout:Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 561
    invoke-virtual {v1, v2, v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 567
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 570
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backButton:Landroid/widget/ImageView;

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v4, p1

    add-float/2addr v4, v2

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 571
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 572
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backButton:Landroid/widget/ImageView;

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 573
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

    .line 575
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

    .line 576
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->header:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->headerLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 580
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1, v3, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result p1

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 578
    invoke-virtual {v0, v2, p1, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 584
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollViewLayout:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private openAnimationTo(FZ)V
    .locals 1

    const/4 v0, 0x0

    .line 592
    invoke-direct {p0, p1, p2, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationTo(FZLjava/lang/Runnable;)V

    return-void
.end method

.method private openAnimationTo(FZLjava/lang/Runnable;)V
    .locals 2

    .line 596
    iget-boolean v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationToAnimatorPriority:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 599
    :cond_0
    iput-boolean p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationToAnimatorPriority:Z

    const/4 p2, 0x0

    .line 600
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 601
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationToAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    .line 602
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    .line 604
    iget v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->containerOpenAnimationT:F

    aput v1, p2, v0

    const/4 v0, 0x1

    aput p1, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationToAnimator:Landroid/animation/ValueAnimator;

    .line 605
    new-instance p2, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 606
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationToAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/iMe/fork/ui/dialog/TranslateAlert$1;

    invoke-direct {p2, p0, p3}, Lcom/iMe/fork/ui/dialog/TranslateAlert$1;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 619
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationToAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 620
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationToAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xdc

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 621
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationToAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private openTo(FZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1354
    invoke-direct {p0, p1, p2, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openTo(FZZ)V

    return-void
.end method

.method private openTo(FZZ)V
    .locals 3

    const/4 v0, 0x0

    .line 1367
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1368
    iget-boolean v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimatorPriority:Z

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 1371
    :cond_0
    iput-boolean p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimatorPriority:Z

    .line 1372
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_1

    .line 1373
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v1, 0x0

    .line 1375
    iget v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingT:F

    aput v2, p2, v1

    const/4 v1, 0x1

    aput p1, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimator:Landroid/animation/ValueAnimator;

    .line 1376
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingT:F

    const/high16 v2, 0x424c0000    # 51.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1377
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    cmpg-float p2, p1, v0

    if-gtz p2, :cond_2

    .line 1384
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->onDismiss:Ljava/lang/Runnable;

    if-eqz p2, :cond_2

    .line 1385
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 1388
    :cond_2
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/iMe/fork/ui/dialog/TranslateAlert$7;

    invoke-direct {v0, p0, p1, p3}, Lcom/iMe/fork/ui/dialog/TranslateAlert$7;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;FZ)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1419
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1420
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingT:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-boolean v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fastHide:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xc8

    goto :goto_0

    :cond_3
    const/16 v0, 0x17c

    :goto_0
    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1421
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimator:Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_4

    const-wide/16 p2, 0x3c

    goto :goto_1

    :cond_4
    const-wide/16 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1422
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private scrollAtBottom()Z
    .locals 4

    .line 1080
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1081
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1082
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    invoke-virtual {v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getFirstUnloadedBlock()Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1084
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    .line 1086
    :cond_0
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v3

    add-int/2addr v1, v3

    sub-int/2addr v0, v1

    .line 1087
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

    .line 1099
    invoke-direct {p0, p1, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollYTo(FLjava/lang/Runnable;)V

    return-void
.end method

.method private scrollYTo(FLjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1103
    invoke-direct {p0, p1, v0, p2}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationTo(FZLjava/lang/Runnable;)V

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    .line 1104
    invoke-direct {p0, p1, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openTo(FZ)V

    return-void
.end method

.method private setScrollY(F)V
    .locals 4

    .line 1091
    invoke-direct {p0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimation(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    .line 1092
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingT:F

    .line 1093
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, 0x424c0000    # 51.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1094
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1095
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->bulletinContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openingT:F

    sub-float/2addr v0, v1

    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->minHeight()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->heightMaxPercent:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method private updateCanExpand()V
    .locals 5

    .line 657
    invoke-direct {p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->canExpand()Z

    move-result v0

    .line 658
    iget v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->containerOpenAnimationT:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 659
    invoke-direct {p0, v2, v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationTo(FZ)V

    .line 662
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

    .line 212
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    invoke-virtual {v0}, Lcom/iMe/model/translation/TranslationArgs;->getType()Lcom/iMe/fork/enums/TranslationDialogType;

    move-result-object v0

    sget-object v1, Lcom/iMe/fork/enums/TranslationDialogType;->REPLY:Lcom/iMe/fork/enums/TranslationDialogType;

    if-ne v0, v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleFromView:Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

    invoke-virtual {v0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loaded(Ljava/lang/CharSequence;)V

    .line 214
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonTextView:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->translation_dialog_translate_to:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatStringInternal(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonImageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleFromView:Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

    invoke-virtual {v0, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->setFromLanguageText(Ljava/lang/String;)V

    .line 219
    :goto_0
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleToView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 1342
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    if-eqz v0, :cond_0

    .line 1343
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1346
    :cond_0
    iget-boolean v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismissed:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 1348
    iput-boolean v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismissed:Z

    .line 1349
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public dismissInternal()V
    .locals 1

    .line 1427
    :try_start_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1430
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v1, p0

    .line 1137
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1138
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1140
    iget-object v3, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    iget-object v4, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->containerRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1141
    iget-object v3, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->containerRect:Landroid/graphics/Rect;

    float-to-int v4, v0

    float-to-int v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v3, :cond_1

    .line 1142
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 1143
    iput-boolean v7, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedOutside:Z

    return v7

    .line 1145
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 1146
    iget-boolean v3, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedOutside:Z

    if-eqz v3, :cond_1

    .line 1147
    iput-boolean v6, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedOutside:Z

    .line 1148
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return v7

    :cond_1
    const/4 v3, 0x0

    .line 1155
    :try_start_1
    iget-object v8, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    iget-object v9, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1156
    iget-object v8, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_7

    iget-boolean v8, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->maybeScrolling:Z

    if-nez v8, :cond_7

    .line 1157
    iget-object v8, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v8

    .line 1158
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

    .line 1159
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

    .line 1160
    invoke-virtual {v8, v10}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v11

    int-to-float v15, v0

    .line 1161
    invoke-virtual {v8, v11, v15}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    .line 1163
    invoke-virtual {v8, v11}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v12

    .line 1164
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

    .line 1165
    iget-object v11, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTexts:Landroid/text/Spannable;

    const-class v12, Landroid/text/style/ClickableSpan;

    invoke-interface {v11, v0, v0, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    if-eqz v0, :cond_7

    .line 1166
    array-length v11, v0

    if-lt v11, v7, :cond_7

    .line 1167
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    if-ne v11, v7, :cond_4

    iget-object v11, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v11

    aget-object v12, v0, v6

    if-ne v11, v12, :cond_4

    .line 1168
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    check-cast v0, Landroid/text/style/ClickableSpan;

    iget-object v8, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 1169
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    if-eqz v0, :cond_2

    .line 1170
    iget-object v8, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->removeLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 1172
    :cond_2
    iput-object v9, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    .line 1173
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

    .line 1174
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_6

    .line 1175
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

    .line 1176
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    if-eqz v0, :cond_5

    .line 1177
    invoke-virtual {v0, v9}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 1179
    :cond_5
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->obtainNewPath()Lorg/telegram/ui/Components/LinkPath;

    move-result-object v0

    .line 1180
    iget-object v9, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTexts:Landroid/text/Spannable;

    iget-object v10, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v10}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 1181
    iget-object v10, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTexts:Landroid/text/Spannable;

    iget-object v11, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/LinkSpanDrawable;->getSpan()Landroid/text/style/CharacterStyle;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 1182
    invoke-virtual {v0, v8, v9, v3}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/Layout;IF)V

    .line 1183
    invoke-virtual {v8, v9, v10, v0}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 1185
    :cond_6
    :goto_1
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    return v7

    .line 1190
    :cond_7
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-eqz v0, :cond_9

    .line 1191
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    if-eqz v0, :cond_8

    .line 1192
    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    .line 1194
    :cond_8
    iput-object v9, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1197
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1200
    :cond_9
    :goto_2
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v8, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1201
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backButton:Landroid/widget/ImageView;

    iget-object v8, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1202
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonView:Landroid/widget/FrameLayout;

    iget-object v8, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 1203
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->pressedLink:Lorg/telegram/ui/Components/LinkSpanDrawable;

    if-nez v0, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1204
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->backRect:Landroid/graphics/Rect;

    .line 1205
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1207
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_d

    .line 1209
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

    .line 1210
    iput-boolean v7, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->maybeScrolling:Z

    .line 1211
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

    .line 1212
    iput v2, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromY:F

    .line 1213
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->getScrollY()F

    move-result v0

    iput v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromScrollY:F

    .line 1214
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromScrollViewY:F

    .line 1215
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v7

    .line 1216
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

    .line 1217
    :cond_e
    iget v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromY:F

    sub-float/2addr v0, v2

    .line 1218
    iget-boolean v2, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromScrollRect:Z

    if-eqz v2, :cond_f

    .line 1219
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

    .line 1221
    iput-boolean v7, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrolling:Z

    .line 1222
    iget-object v2, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    goto :goto_4

    .line 1224
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

    .line 1225
    iput-boolean v7, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrolling:Z

    .line 1226
    iget-object v2, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 1227
    iget-object v2, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollView:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v2}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll()V

    .line 1228
    iput-boolean v6, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allowScroll:Z

    .line 1230
    :cond_10
    :goto_4
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    .line 1231
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->minHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->heightMaxPercent:F

    mul-float/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1232
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

    .line 1234
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->canExpand()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1235
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1237
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->updateCanExpand()V

    .line 1239
    iget-boolean v2, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrolling:Z

    if-eqz v2, :cond_17

    .line 1240
    invoke-direct {v1, v5}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->setScrollY(F)V

    .line 1241
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v7, :cond_16

    .line 1242
    iput-boolean v6, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrolling:Z

    .line 1243
    iget-object v2, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    iget-boolean v3, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->noforwards:Z

    if-nez v3, :cond_13

    move v3, v7

    goto :goto_6

    :cond_13
    move v3, v6

    :goto_6
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 1244
    iput-boolean v6, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->maybeScrolling:Z

    .line 1245
    iput-boolean v7, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allowScroll:Z

    .line 1247
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_15

    .line 1248
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

    .line 1249
    :cond_15
    iget v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromScrollY:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    :goto_7
    new-instance v2, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda18;

    invoke-direct {v2, v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda18;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    .line 1246
    invoke-direct {v1, v0, v2}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollYTo(FLjava/lang/Runnable;)V

    :cond_16
    return v7

    .line 1259
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-boolean v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->maybeScrolling:Z

    if-eqz v0, :cond_19

    .line 1260
    iput-boolean v6, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrolling:Z

    .line 1261
    iget-object v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    iget-boolean v2, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->noforwards:Z

    if-nez v2, :cond_18

    move v2, v7

    goto :goto_8

    :cond_18
    move v2, v6

    :goto_8
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 1262
    iput-boolean v6, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->maybeScrolling:Z

    .line 1263
    iput-boolean v7, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allowScroll:Z

    .line 1264
    iget v0, v1, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fromScrollY:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {v1, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->scrollYTo(F)V

    .line 1266
    :cond_19
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v0

    :catch_1
    move-exception v0

    .line 1268
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1269
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public languageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const-string v1, "und"

    .line 1436
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1439
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/LocaleController;->getBuiltinLanguageByPlural(Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object p1

    .line 1440
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    .line 1444
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

    .line 1447
    iget-object p1, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    return-object p1

    .line 1449
    :cond_3
    iget-object p1, p1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    return-object p1

    :cond_4
    :goto_1
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1278
    invoke-super {p0, p1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->onCreate(Landroid/os/Bundle;)V

    .line 1280
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->contentView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1283
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 1285
    sget v1, Lorg/telegram/messenger/R$style;->DialogNoAnimation:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 1286
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 1287
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v3, 0x33

    .line 1288
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v3, 0x0

    .line 1289
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1290
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1292
    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/iMe/model/translation/TranslationArgs;->getType()Lcom/iMe/fork/enums/TranslationDialogType;

    move-result-object v3

    sget-object v4, Lcom/iMe/fork/enums/TranslationDialogType;->REPLY:Lcom/iMe/fork/enums/TranslationDialogType;

    if-ne v3, v4, :cond_0

    const/16 v3, 0x10

    .line 1293
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1294
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x20001

    and-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 1296
    :cond_0
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1297
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 1298
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x7ffeff00

    or-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1303
    :cond_1
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1304
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1305
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-string v1, "windowBackgroundWhite"

    .line 1307
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    .line 1308
    invoke-static {p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->setNavigationBarColor(Landroid/view/Window;I)V

    .line 1309
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3fe7126e978d4fdfL    # 0.721

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/Window;Z)V

    .line 1311
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->container:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->forceLayout()V

    return-void
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 202
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->contentView:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method public onLoadingState(Ljava/lang/String;Z)V
    .locals 2

    .line 259
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    invoke-virtual {p2}, Lcom/iMe/model/translation/TranslationArgs;->getType()Lcom/iMe/fork/enums/TranslationDialogType;

    move-result-object p2

    sget-object v0, Lcom/iMe/fork/enums/TranslationDialogType;->REPLY:Lcom/iMe/fork/enums/TranslationDialogType;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    const/4 p1, 0x0

    .line 260
    invoke-virtual {p0, v1, v1, p1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    return-void

    .line 264
    :cond_0
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getBlockAt(I)Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 266
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 269
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textBlocks:Ljava/util/ArrayList;

    .line 270
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    iget p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->blockIndex:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->blockIndex:I

    .line 272
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    invoke-virtual {p2, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->addBlock(Ljava/lang/CharSequence;)Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;

    const/high16 p1, 0x30000000

    .line 273
    invoke-direct {p0, p1, v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimationTo(FZ)V

    return-void
.end method

.method public openReplyDialog(Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;)V
    .locals 6

    .line 283
    new-instance v0, Lcom/iMe/fork/ui/dialog/TranslateAlert;

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-boolean v2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->noforwards:Z

    new-instance v3, Lcom/iMe/model/translation/TranslationArgs;

    sget-object v4, Lcom/iMe/fork/enums/TranslationDialogType;->REPLY:Lcom/iMe/fork/enums/TranslationDialogType;

    const-string v5, ""

    invoke-direct {v3, v4, v5, p1}, Lcom/iMe/model/translation/TranslationArgs;-><init>(Lcom/iMe/fork/enums/TranslationDialogType;Ljava/lang/String;Lcom/iMe/storage/domain/model/dialogs/DialogTranslationSettings;)V

    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translatorActionsDelegate:Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZLcom/iMe/model/translation/TranslationArgs;Lcom/iMe/fork/ui/dialog/TranslateAlert$TranslatorActionsDelegate;)V

    .line 293
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 295
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 298
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

    .line 104
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

    .line 1324
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    const/4 v0, 0x0

    .line 1326
    invoke-direct {p0, v0}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openAnimation(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    .line 1327
    invoke-direct {p0, v0, v1, v1}, Lcom/iMe/fork/ui/dialog/TranslateAlert;->openTo(FZZ)V

    .line 1329
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1330
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1331
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->contentView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public showAppUpdateDialog()V
    .locals 2

    .line 278
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

    .line 247
    new-instance v0, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;

    .line 249
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0}, Lcom/iMe/fork/ui/dialog/TranslateAlert$$ExternalSyntheticLambda13;-><init>(Lcom/iMe/fork/ui/dialog/TranslateAlert;)V

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/iMe/fork/ui/dialog/SelectLanguageBottomSheet;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    .line 247
    invoke-virtual {p0, v0}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showSubtitleLanguage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleToView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleFromView:Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

    invoke-virtual {p2, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loaded(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showTranslation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->translationArgs:Lcom/iMe/model/translation/TranslationArgs;

    invoke-virtual {v0}, Lcom/iMe/model/translation/TranslationArgs;->getType()Lcom/iMe/fork/enums/TranslationDialogType;

    move-result-object v0

    sget-object v1, Lcom/iMe/fork/enums/TranslationDialogType;->REPLY:Lcom/iMe/fork/enums/TranslationDialogType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 p2, 0x1

    .line 225
    invoke-virtual {p0, v3, p2, v2}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    .line 226
    iput-boolean p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->isTranslated:Z

    .line 227
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 229
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->buttonTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->Send:I

    const-string p3, "Send"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleToView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object p3, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->subtitleFromView:Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;

    invoke-virtual {p3, p2}, Lcom/iMe/fork/ui/dialog/TranslateAlert$InlineLoadingTextView;->loaded(Ljava/lang/CharSequence;)V

    .line 233
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    invoke-virtual {p2, v3}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->getBlockAt(I)Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Lcom/iMe/fork/ui/dialog/TranslateAlert$LoadingTextView2;->loaded(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    .line 234
    iget-object p2, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->textsView:Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;

    invoke-virtual {p2, p1}, Lcom/iMe/fork/ui/dialog/TranslateAlert$TextBlocksLayout;->setWholeText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/TranslateAlert;->allTextsView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestFocus()Z

    :goto_0
    return-void
.end method
