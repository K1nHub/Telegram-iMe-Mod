.class public Lorg/telegram/ui/Components/MessagePrivateSeenView;
.super Landroid/widget/FrameLayout;
.source "MessagePrivateSeenView.java"


# instance fields
.field private final currentAccount:I

.field private final dialogId:J

.field private final dismiss:Ljava/lang/Runnable;

.field public isPremiumLocked:Z

.field private final loadingView:Landroid/widget/TextView;

.field private final messageId:I

.field minWidth:F

.field private final premiumTextView:Landroid/widget/TextView;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private final valueLayout:Landroid/widget/LinearLayout;

.field private final valueTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$AhVvaZDNLRU7n4qIhefAQXM6sIc(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->lambda$showSheet$5(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BN_jLp18_qg-k6tznaouB0vasZM(Lorg/telegram/ui/Components/MessagePrivateSeenView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->lambda$request$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D7o9k_mg0bwHGZaf-2sGm0NX7-U(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->lambda$showSheet$3(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EDzooidW5LMdgGtJTEQRJUVnew4(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->lambda$showSheet$6(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MUPFHbc3FnQ2ZeqZyfhl75MHDW0(Lorg/telegram/ui/Components/MessagePrivateSeenView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->lambda$request$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pq6_A7mRuTSkRVizF8MEFADHfdA(Lorg/telegram/ui/Components/MessagePrivateSeenView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->request()V

    return-void
.end method

.method public static synthetic $r8$lambda$UxGeWKmKDtJljohRljSp1XaRT1g(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->lambda$showSheet$4(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iiKodjXAg8HTLm9k_HTm3aBW91w(Lorg/telegram/ui/Components/MessagePrivateSeenView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->lambda$request$1(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jQMJqVVVYKxurl-r7o-saHlc4Zc(ZLorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->lambda$showSheet$8(ZLorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xh-GDHGeOOPcxfm5I81eT5mT_94(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;ZILorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->lambda$showSheet$7(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;ZILorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/MessageObject;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 61
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 145
    iput-boolean v3, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->isPremiumLocked:Z

    const/high16 v4, -0x40800000    # -1.0f

    .line 295
    iput v4, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->minWidth:F

    move-object/from16 v4, p2

    .line 63
    iget v5, v4, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    iput v5, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->currentAccount:I

    .line 64
    iput-object v2, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object/from16 v5, p3

    .line 65
    iput-object v5, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->dismiss:Ljava/lang/Runnable;

    .line 67
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    iput-wide v5, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->dialogId:J

    .line 68
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    iput v5, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->messageId:I

    .line 70
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v6, 0x18

    const/16 v7, 0x18

    const/16 v8, 0x13

    const/16 v9, 0xb

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 71
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v4

    if-eqz v4, :cond_0

    sget v4, Lorg/telegram/messenger/R$drawable;->msg_played:I

    goto :goto_0

    :cond_0
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_seen:I

    :goto_0
    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 73
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-static {v7, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 74
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->loadingView:Landroid/widget/TextView;

    .line 77
    new-instance v5, Landroid/text/SpannableStringBuilder;

    const-string v6, "loading text "

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 78
    new-instance v6, Lorg/telegram/ui/Components/LoadingSpan;

    const/16 v7, 0x60

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    invoke-direct {v6, v4, v7, v9, v2}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    const/16 v10, 0x11

    invoke-virtual {v5, v6, v3, v7, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 79
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v7

    const v10, 0x3f333333    # 0.7f

    invoke-static {v7, v10}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41500000    # 13.0f

    .line 81
    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v10, 0x60

    const/4 v11, -0x2

    const/16 v12, 0x13

    const/16 v13, 0x28

    const/4 v14, -0x1

    const/16 v15, 0x8

    const/16 v16, 0x0

    .line 82
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueLayout:Landroid/widget/LinearLayout;

    .line 85
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x0

    .line 86
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/4 v10, -0x1

    const/16 v13, 0x26

    const/4 v14, 0x0

    .line 87
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    .line 90
    invoke-static {v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41600000    # 14.0f

    .line 91
    invoke-virtual {v3, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v10, -0x2

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    .line 92
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->premiumTextView:Landroid/widget/TextView;

    const/16 v1, 0x14

    .line 95
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    invoke-static {v5, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v5

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-static {v5, v7}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-static {v1, v5}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    invoke-static {v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41300000    # 11.0f

    .line 97
    invoke-virtual {v3, v9, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const v1, 0x40aa8f5c    # 5.33f

    .line 98
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const v6, 0x40151eb8    # 2.33f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v3, v2, v5, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v7, -0x2

    const/4 v8, -0x2

    const/16 v9, 0x13

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 99
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->request()V

    return-void
.end method

.method private synthetic lambda$request$0(Landroid/view/View;)V
    .locals 8

    .line 137
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->currentAccount:I

    iget-wide v2, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->dialogId:J

    iget-object v5, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->dismiss:Ljava/lang/Runnable;

    new-instance v6, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/MessagePrivateSeenView;)V

    iget-object v7, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x0

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/MessagePrivateSeenView;->showSheet(Landroid/content/Context;IJZLjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$request$1(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eqz p1, :cond_2

    .line 115
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "USER_PRIVACY_RESTRICTED"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 116
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->PmReadUnknown:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->premiumTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "YOUR_PRIVACY_RESTRICTED"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 119
    iput-boolean v1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->isPremiumLocked:Z

    .line 120
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->PmRead:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->premiumTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->PmReadShowWhen:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    const-string v1, "UnknownError"

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->premiumTextView:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->make(Landroid/content/Context;)Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    goto :goto_0

    .line 127
    :cond_2
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_outboxReadDate;

    if-eqz p1, :cond_3

    .line 128
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_outboxReadDate;

    .line 129
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    sget v3, Lorg/telegram/messenger/R$string;->PmReadAt:I

    new-array v1, v1, [Ljava/lang/Object;

    iget p2, p2, Lorg/telegram/tgnet/TLRPC$TL_outboxReadDate;->date:I

    int-to-long v4, p2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->formatSeenDate(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v0

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->premiumTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    :cond_3
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0x140

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 133
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->loadingView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 135
    iget-boolean p1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->isPremiumLocked:Z

    if-eqz p1, :cond_4

    .line 136
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    const/4 p2, 0x6

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 137
    new-instance p1, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/MessagePrivateSeenView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 139
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 140
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$request$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 113
    new-instance v0, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/MessagePrivateSeenView;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$showSheet$3(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 196
    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->global()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 200
    invoke-virtual {p1, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 201
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 203
    invoke-static {}, Lorg/telegram/ui/Components/BulletinFactory;->global()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    sget p2, Lorg/telegram/messenger/R$string;->PremiumLastSeenSet:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    if-eqz p3, :cond_1

    .line 205
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$showSheet$4(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 194
    new-instance p3, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda4;

    invoke-direct {p3, p4, p0, p1, p2}, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$showSheet$5(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 217
    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->make(Landroid/content/Context;)Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 221
    invoke-virtual {p3, p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 222
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 224
    invoke-static {p1}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->make(Landroid/content/Context;)Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    sget p2, Lorg/telegram/messenger/R$string;->PremiumReadSet:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    if-eqz p5, :cond_1

    .line 226
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$showSheet$6(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 215
    new-instance p5, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda3;

    move-object v0, p5

    move-object v1, p6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V

    invoke-static {p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$showSheet$7(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;ZILorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 6

    const/4 p7, 0x1

    .line 189
    invoke-virtual {p0, p7}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    if-eqz p1, :cond_0

    .line 191
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;-><init>()V

    .line 192
    new-instance p5, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyStatusTimestamp;

    invoke-direct {p5}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyKeyStatusTimestamp;-><init>()V

    iput-object p5, p1, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->key:Lorg/telegram/tgnet/TLRPC$InputPrivacyKey;

    .line 193
    iget-object p5, p1, Lorg/telegram/tgnet/TLRPC$TL_account_setPrivacy;->rules:Ljava/util/ArrayList;

    new-instance p6, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;

    invoke-direct {p6}, Lorg/telegram/tgnet/TLRPC$TL_inputPrivacyValueAllowAll;-><init>()V

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p5, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda9;

    invoke-direct {p5, p0, p3, p4}, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V

    invoke-virtual {p2, p1, p5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 209
    :cond_0
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_account_setGlobalPrivacySettings;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_account_setGlobalPrivacySettings;-><init>()V

    .line 210
    invoke-static {p2}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p7

    invoke-virtual {p7}, Lorg/telegram/messenger/ContactsController;->getGlobalPrivacySettings()Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    move-result-object p7

    iput-object p7, p1, Lorg/telegram/tgnet/TLRPC$TL_account_setGlobalPrivacySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    if-nez p7, :cond_1

    .line 212
    new-instance p7, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    invoke-direct {p7}, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;-><init>()V

    iput-object p7, p1, Lorg/telegram/tgnet/TLRPC$TL_account_setGlobalPrivacySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    .line 214
    :cond_1
    iget-object p7, p1, Lorg/telegram/tgnet/TLRPC$TL_account_setGlobalPrivacySettings;->settings:Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;

    const/4 v0, 0x0

    iput-boolean v0, p7, Lorg/telegram/tgnet/TLRPC$TL_globalPrivacySettings;->hide_read_marks:Z

    .line 215
    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p7, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda7;

    move-object v0, p7

    move-object v1, p5

    move-object v2, p6

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V

    invoke-virtual {p2, p1, p7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$showSheet$8(ZLorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 1

    .line 272
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 274
    new-instance v0, Lorg/telegram/ui/PremiumPreviewFragment;

    if-eqz p0, :cond_0

    const-string p0, "lastseen"

    goto :goto_0

    :cond_0
    const-string p0, "readtime"

    :goto_0
    invoke-direct {v0, p0}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 275
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    if-eqz p2, :cond_1

    .line 277
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private request()V
    .locals 4

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->loadingView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->premiumTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getOutboxReadDate;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getOutboxReadDate;-><init>()V

    .line 111
    iget v1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getOutboxReadDate;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 112
    iget v1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->messageId:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getOutboxReadDate;->msg_id:I

    .line 113
    iget v1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/MessagePrivateSeenView;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public static showSheet(Landroid/content/Context;IJZLjava/lang/Runnable;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 33

    move-object/from16 v8, p0

    move/from16 v9, p4

    move-object/from16 v10, p7

    .line 148
    new-instance v11, Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v12, 0x0

    invoke-direct {v11, v8, v12, v10}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 149
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v0, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    .line 151
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v13

    .line 153
    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x1

    .line 154
    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    .line 155
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-virtual {v14, v1, v12, v0, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 157
    new-instance v0, Lorg/telegram/ui/Components/RLottieImageView;

    invoke-direct {v0, v8}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    .line 158
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-eqz v9, :cond_0

    .line 159
    sget v1, Lorg/telegram/messenger/R$raw;->large_lastseen:I

    goto :goto_0

    :cond_0
    sget v1, Lorg/telegram/messenger/R$raw;->large_readtime:I

    :goto_0
    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 160
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 161
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v1, 0x50

    .line 162
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v2, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v16, 0x50

    const/16 v17, 0x50

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x10

    const/16 v21, 0x0

    const/16 v22, 0x10

    .line 163
    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v16, "fonts/rmedium.ttf"

    .line 166
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v7, 0x11

    .line 167
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 168
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v6, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41a00000    # 20.0f

    .line 169
    invoke-virtual {v0, v15, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v9, :cond_1

    .line 170
    sget v1, Lorg/telegram/messenger/R$string;->PremiumLastSeenHeader1:I

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->PremiumReadHeader1:I

    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v17, -0x1

    const/16 v18, -0x2

    const/16 v19, 0x1

    const/16 v20, 0xc

    const/16 v21, 0x0

    const/16 v22, 0xc

    const/16 v23, 0x0

    .line 171
    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 174
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 175
    invoke-static {v6, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41600000    # 14.0f

    .line 176
    invoke-virtual {v0, v15, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_2

    .line 179
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 180
    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v1, ""

    :goto_2
    move-object/from16 v17, v1

    if-eqz v9, :cond_4

    if-eqz v13, :cond_3

    .line 182
    sget v1, Lorg/telegram/messenger/R$string;->PremiumLastSeenText1Locked:I

    goto :goto_3

    :cond_3
    sget v1, Lorg/telegram/messenger/R$string;->PremiumLastSeenText1:I

    goto :goto_3

    :cond_4
    if-eqz v13, :cond_5

    sget v1, Lorg/telegram/messenger/R$string;->PremiumReadText1Locked:I

    goto :goto_3

    :cond_5
    sget v1, Lorg/telegram/messenger/R$string;->PremiumReadText1:I

    :goto_3
    new-array v2, v15, [Ljava/lang/Object;

    aput-object v17, v2, v12

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v18, -0x1

    const/16 v19, -0x2

    const/16 v20, 0x1

    const/16 v21, 0x20

    const/16 v22, 0x9

    const/16 v23, 0x20

    const/16 v24, 0x13

    .line 183
    invoke-static/range {v18 .. v24}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    new-instance v2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v2, v8, v10}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-eqz v9, :cond_6

    .line 186
    sget v0, Lorg/telegram/messenger/R$string;->PremiumLastSeenButton1:I

    goto :goto_4

    :cond_6
    sget v0, Lorg/telegram/messenger/R$string;->PremiumReadButton1:I

    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v12}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    const/16 v0, 0x30

    .line 187
    invoke-static {v3, v0, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v14, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    new-instance v3, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda1;

    move-object v0, v3

    move-object v1, v2

    move-object v12, v2

    move/from16 v2, p4

    move-object v15, v3

    move/from16 v3, p1

    move-object v4, v11

    move-object/from16 v20, v11

    move v11, v5

    move-object/from16 v5, p6

    move v11, v6

    move-object/from16 v6, p0

    move v9, v7

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;ZILorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v12, v15}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v13, :cond_a

    .line 233
    new-instance v0, Lorg/telegram/ui/Components/MessagePrivateSeenView$1;

    invoke-direct {v0, v8, v10}, Lorg/telegram/ui/Components/MessagePrivateSeenView$1;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 248
    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 249
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 250
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-static {v1, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lorg/telegram/messenger/R$string;->PremiumOr:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    const/16 v1, 0xe

    .line 252
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    const/16 v26, 0x10e

    const/16 v27, -0x2

    const/16 v28, 0x1

    const/16 v29, 0xc

    const/16 v30, 0x11

    const/16 v31, 0xc

    const/16 v32, 0x11

    .line 253
    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 256
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 257
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 258
    invoke-static {v11, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41a00000    # 20.0f

    const/4 v2, 0x1

    .line 259
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    move/from16 v1, p4

    move v2, v9

    if-eqz v1, :cond_7

    .line 260
    sget v3, Lorg/telegram/messenger/R$string;->PremiumLastSeenHeader2:I

    goto :goto_5

    :cond_7
    sget v3, Lorg/telegram/messenger/R$string;->PremiumReadHeader2:I

    :goto_5
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v26, -0x1

    const/16 v27, -0x2

    const/16 v28, 0x1

    const/16 v29, 0xc

    const/16 v30, 0x0

    const/16 v31, 0xc

    const/16 v32, 0x0

    .line 261
    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v14, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 264
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 265
    invoke-static {v11, v10}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x1

    .line 266
    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v1, :cond_8

    .line 267
    sget v2, Lorg/telegram/messenger/R$string;->PremiumLastSeenText2:I

    goto :goto_6

    :cond_8
    sget v2, Lorg/telegram/messenger/R$string;->PremiumReadText2:I

    :goto_6
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v17, v4, v3

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v21, -0x1

    const/16 v22, -0x2

    const/16 v23, 0x1

    const/16 v24, 0x20

    const/16 v25, 0x9

    const/16 v26, 0x20

    const/16 v27, 0x13

    .line 268
    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    const/4 v2, 0x1

    invoke-direct {v0, v8, v2, v10}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 271
    new-instance v2, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda2;

    move-object/from16 v3, p5

    move-object/from16 v4, v20

    invoke-direct {v2, v1, v4, v3}, Lorg/telegram/ui/Components/MessagePrivateSeenView$$ExternalSyntheticLambda2;-><init>(ZLorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_9

    .line 281
    sget v1, Lorg/telegram/messenger/R$string;->PremiumLastSeenButton2:I

    goto :goto_7

    :cond_9
    sget v1, Lorg/telegram/messenger/R$string;->PremiumReadButton2:I

    :goto_7
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    const/4 v1, -0x1

    const/16 v2, 0x30

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    move/from16 p0, v1

    move/from16 p1, v2

    move/from16 p2, v3

    move/from16 p3, v5

    move/from16 p4, v6

    move/from16 p5, v7

    move/from16 p6, v8

    .line 282
    invoke-static/range {p0 .. p6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    :cond_a
    move-object/from16 v4, v20

    .line 285
    :goto_8
    invoke-virtual {v4, v14}, Lorg/telegram/ui/ActionBar/BottomSheet;->setCustomView(Landroid/view/View;)V

    .line 286
    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .line 291
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 292
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 299
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 300
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 301
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 303
    iget v1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->minWidth:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 304
    iput v2, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->minWidth:F

    const/16 v1, 0x90

    .line 305
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->minWidth:F

    const/16 v2, 0x30

    .line 306
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->PmReadUnknown:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->minWidth:F

    const/16 v3, 0x40

    .line 307
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Lorg/telegram/messenger/R$string;->PmRead:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->premiumTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/R$string;->PmReadShowWhen:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->minWidth:F

    .line 308
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->PmReadAt:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    sget v8, Lorg/telegram/messenger/R$string;->TodayAtFormattedWithToday:I

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "99:99"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->minWidth:F

    .line 309
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    new-array v7, v6, [Ljava/lang/Object;

    sget v8, Lorg/telegram/messenger/R$string;->YesterdayAtFormatted:I

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->minWidth:F

    .line 310
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->valueTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    sget v7, Lorg/telegram/messenger/R$string;->formatDateAtTime:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "99.99.99"

    aput-object v9, v8, v10

    aput-object v11, v8, v6

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/MessagePrivateSeenView;->minWidth:F

    :cond_0
    if-eqz v0, :cond_1

    .line 316
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    .line 317
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 321
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
