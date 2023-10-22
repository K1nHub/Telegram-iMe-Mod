.class public Lorg/telegram/ui/Stories/recorder/CaptionStory;
.super Lorg/telegram/ui/Stories/recorder/CaptionContainerView;
.source "CaptionStory.java"


# static fields
.field public static final periods:[I


# instance fields
.field private onPeriodUpdate:Lorg/telegram/messenger/Utilities$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onPremiumHintShow:Lorg/telegram/messenger/Utilities$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public periodButton:Landroid/widget/ImageView;

.field public periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

.field private periodIndex:I

.field private periodPopup:Lorg/telegram/ui/Components/ItemOptions;

.field private periodVisible:Z


# direct methods
.method public static synthetic $r8$lambda$FiEqbf3bKtk68SGbZlxwHRBTCE4(Lorg/telegram/messenger/Utilities$Callback;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->lambda$new$2(Lorg/telegram/messenger/Utilities$Callback;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KfhhAspgmtDTDx6ptqRs-yDwVEw(Lorg/telegram/ui/Stories/recorder/CaptionStory;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->lambda$new$4(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YYsYWO1SFRq6RxXDIhwMDtL1v_Q(Lorg/telegram/ui/Stories/recorder/CaptionStory;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->lambda$new$1(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eWQS5LKtG7YgTZ7Z62I1hVcUmM0(Lorg/telegram/ui/Stories/recorder/CaptionStory;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->lambda$new$0(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hQRdleZlmUG0rvI2Prndid2YerY(Lorg/telegram/messenger/Utilities$Callback;I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->lambda$new$3(Lorg/telegram/messenger/Utilities$Callback;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 33
    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periods:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x5460
        0xa8c0
        0x15180
        0x2a300
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V
    .locals 7

    .line 38
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    const/4 p3, 0x1

    .line 31
    iput-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodVisible:Z

    const/4 p4, 0x0

    .line 35
    iput p4, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodIndex:I

    .line 40
    new-instance p6, Landroid/widget/ImageView;

    invoke-direct {p6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p6, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodButton:Landroid/widget/ImageView;

    .line 41
    new-instance p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    invoke-direct {p1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    invoke-virtual {p6, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodButton:Landroid/widget/ImageView;

    const/16 p6, 0x12

    invoke-static {p6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p6

    const v0, 0x40ffffff    # 7.9999995f

    invoke-static {v0, p3, p6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 43
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodButton:Landroid/widget/ImageView;

    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodButton:Landroid/widget/ImageView;

    new-instance p3, Lorg/telegram/ui/Stories/recorder/CaptionStory$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2, p5}, Lorg/telegram/ui/Stories/recorder/CaptionStory$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionStory;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x15180

    .line 85
    invoke-virtual {p0, p1, p4}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->setPeriod(IZ)V

    .line 86
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodButton:Landroid/widget/ImageView;

    const/16 v0, 0x2c

    const/16 v1, 0x2c

    const/16 v2, 0x55

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xb

    const/16 v6, 0xa

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;)V
    .locals 1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->setPeriod(I)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->onPeriodUpdate:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Integer;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->onPremiumHintShow:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$2(Lorg/telegram/messenger/Utilities$Callback;I)V
    .locals 0

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$new$3(Lorg/telegram/messenger/Utilities$Callback;I)V
    .locals 0

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 9

    .line 45
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodPopup:Lorg/telegram/ui/Components/ItemOptions;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/telegram/ui/Components/ItemOptions;->isShown()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance p3, Lorg/telegram/ui/Stories/recorder/CaptionStory$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Stories/recorder/CaptionStory$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionStory;)V

    .line 56
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v2, v1

    goto :goto_0

    .line 58
    :cond_1
    new-instance v2, Lorg/telegram/ui/Stories/recorder/CaptionStory$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/CaptionStory$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/CaptionStory;)V

    .line 64
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodButton:Landroid/widget/ImageView;

    invoke-static {p1, p2, v3}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodPopup:Lorg/telegram/ui/Components/ItemOptions;

    const-string p2, "StoryPeriodHint"

    .line 65
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/16 v3, 0xd

    invoke-virtual {p1, p2, v3}, Lorg/telegram/ui/Components/ItemOptions;->addText(Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/ItemOptions;

    .line 66
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodPopup:Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    const/4 p1, 0x0

    move p2, p1

    .line 67
    :goto_1
    sget-object v3, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periods:[I

    array-length v4, v3

    if-ge p2, v4, :cond_6

    .line 68
    aget v3, v3, p2

    .line 69
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodPopup:Lorg/telegram/ui/Components/ItemOptions;

    const v5, 0x7fffffff

    if-ne v3, v5, :cond_2

    const-string v6, "StoryPeriodKeep"

    .line 72
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 73
    :cond_2
    div-int/lit16 v6, v3, 0xe10

    new-array v7, p1, [Ljava/lang/Object;

    const-string v8, "Hours"

    invoke-static {v8, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    new-instance v8, Lorg/telegram/ui/Stories/recorder/CaptionStory$$ExternalSyntheticLambda1;

    invoke-direct {v8, p3, v3}, Lorg/telegram/ui/Stories/recorder/CaptionStory$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/Utilities$Callback;I)V

    .line 69
    invoke-virtual {v4, p1, v6, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ILjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v4

    if-nez v0, :cond_4

    const v6, 0x15180

    if-eq v3, v6, :cond_4

    if-ne v3, v5, :cond_3

    goto :goto_3

    .line 77
    :cond_3
    new-instance v5, Lorg/telegram/ui/Stories/recorder/CaptionStory$$ExternalSyntheticLambda2;

    invoke-direct {v5, v2, v3}, Lorg/telegram/ui/Stories/recorder/CaptionStory$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/Utilities$Callback;I)V

    goto :goto_4

    :cond_4
    :goto_3
    move-object v5, v1

    .line 76
    :goto_4
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->putPremiumLock(Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 79
    iget v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodIndex:I

    if-ne v3, p2, :cond_5

    .line 80
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodPopup:Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ItemOptions;->putCheck()Lorg/telegram/ui/Components/ItemOptions;

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 83
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodPopup:Lorg/telegram/ui/Components/ItemOptions;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method


# virtual methods
.method protected afterUpdateShownKeyboard(Z)V
    .locals 3

    .line 144
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-nez p1, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodVisible:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 146
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected beforeUpdateShownKeyboard(Z)V
    .locals 1

    if-nez p1, :cond_1

    .line 133
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected getCaptionDefaultLimit()I
    .locals 1

    .line 157
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->storyCaptionLengthLimitDefault:I

    return v0
.end method

.method protected getCaptionPremiumLimit()I
    .locals 1

    .line 152
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->storyCaptionLengthLimitPremium:I

    return v0
.end method

.method public hidePeriodPopup()V
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodPopup:Lorg/telegram/ui/Components/ItemOptions;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodPopup:Lorg/telegram/ui/Components/ItemOptions;

    :cond_0
    return-void
.end method

.method protected onUpdateShowKeyboard(F)V
    .locals 2

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodButton:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public setOnPeriodUpdate(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->onPeriodUpdate:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setOnPremiumHint(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->onPremiumHintShow:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setPeriod(I)V
    .locals 1

    const/4 v0, 0x1

    .line 90
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->setPeriod(IZ)V

    return-void
.end method

.method public setPeriod(IZ)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 100
    :goto_0
    sget-object v2, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periods:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 101
    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 106
    :goto_1
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodIndex:I

    if-ne v2, v1, :cond_2

    return-void

    .line 109
    :cond_2
    iput v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodIndex:I

    .line 110
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodDrawable:Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;

    div-int/lit16 p1, p1, 0xe10

    invoke-virtual {v1, p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$PeriodDrawable;->setValue(IZZ)V

    return-void
.end method

.method public setPeriodVisible(Z)V
    .locals 1

    .line 94
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodVisible:Z

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionStory;->periodButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
