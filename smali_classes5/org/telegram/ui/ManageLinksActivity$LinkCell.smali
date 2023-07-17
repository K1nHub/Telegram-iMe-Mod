.class Lorg/telegram/ui/ManageLinksActivity$LinkCell;
.super Landroid/widget/FrameLayout;
.source "ManageLinksActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ManageLinksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinkCell"
.end annotation


# instance fields
.field animateFromState:I

.field animateHideExpiring:Z

.field animateToStateProgress:F

.field drawDivider:Z

.field invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

.field lastDrawExpringProgress:F

.field lastDrawingState:I

.field optionsView:Landroid/widget/ImageView;

.field paint:Landroid/graphics/Paint;

.field paint2:Landroid/graphics/Paint;

.field position:I

.field rectF:Landroid/graphics/RectF;

.field subtitleView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/ManageLinksActivity;

.field private timerParticles:Lorg/telegram/ui/Components/TimerParticles;

.field timerRunning:Z

.field titleView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$6WOTWE2QlARDKBPxMERVDFywqN8(Lorg/telegram/ui/ManageLinksActivity$LinkCell;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->lambda$new$2(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DxGMyVJLMV4b0gNBU6Rbynbup9M(Lorg/telegram/ui/ManageLinksActivity$LinkCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KHYV0vl116lLL85kDJ1vrDM_Ogw(Lorg/telegram/ui/ManageLinksActivity$LinkCell;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->lambda$new$0(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iU3pKUh53t6yBBXjGu7fwKbz9LI(Lorg/telegram/ui/ManageLinksActivity$LinkCell;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->lambda$new$1(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/Context;)V
    .locals 8

    .line 2635
    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    .line 2636
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2622
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->paint:Landroid/graphics/Paint;

    .line 2623
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->paint2:Landroid/graphics/Paint;

    .line 2624
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->rectF:Landroid/graphics/RectF;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2629
    iput p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->animateToStateProgress:F

    .line 2774
    new-instance p1, Lorg/telegram/ui/Components/TimerParticles;

    invoke-direct {p1}, Lorg/telegram/ui/Components/TimerParticles;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->timerParticles:Lorg/telegram/ui/Components/TimerParticles;

    .line 2638
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->paint2:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2639
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->paint2:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2641
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2642
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x10

    const/16 v4, 0x46

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    .line 2644
    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2646
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->titleView:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    .line 2647
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2648
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->titleView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2649
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 2650
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->titleView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2652
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->subtitleView:Landroid/widget/TextView;

    const/high16 v2, 0x41500000    # 13.0f

    .line 2653
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2654
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->subtitleView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2656
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->titleView:Landroid/widget/TextView;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2657
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->subtitleView:Landroid/widget/TextView;

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2659
    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->optionsView:Landroid/widget/ImageView;

    .line 2660
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2661
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->optionsView:Landroid/widget/ImageView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2662
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->optionsView:Landroid/widget/ImageView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menu:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 2663
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->optionsView:Landroid/widget/ImageView;

    new-instance p2, Lorg/telegram/ui/ManageLinksActivity$LinkCell$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ManageLinksActivity$LinkCell$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ManageLinksActivity$LinkCell;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2759
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->optionsView:Landroid/widget/ImageView;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-static {p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2760
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->optionsView:Landroid/widget/ImageView;

    const/16 p2, 0x28

    const/16 v0, 0x30

    const/16 v1, 0x15

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2763
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/4 p1, 0x0

    .line 2764
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private getColor(IF)I
    .locals 2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2890
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachAudioBackground:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float v0, p2, p1

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_1

    sub-float/2addr p2, p1

    div-float/2addr p2, p1

    .line 2894
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachLocationBackground:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPollBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    sub-float/2addr v1, p2

    invoke-static {p1, v0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    return p1

    :cond_1
    div-float/2addr p2, p1

    .line 2897
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPollBackground:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachAudioBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    sub-float/2addr v1, p2

    invoke-static {p1, v0, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    return p1

    :cond_2
    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 2900
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPollBackground:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1

    :cond_3
    const/4 p2, 0x4

    if-ne p1, p2, :cond_4

    .line 2902
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterMuted:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1

    .line 2904
    :cond_4
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    return p1
.end method

.method private hasProgress(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private synthetic lambda$new$0(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2737
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ManageLinksActivity;->revokeLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2746
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ManageLinksActivity;->deleteLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 3

    .line 2702
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    const/4 p3, 0x0

    const-string v0, "Cancel"

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    .line 2742
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 2743
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2744
    sget v1, Lorg/telegram/messenger/R$string;->DeleteLink:I

    const-string v2, "DeleteLink"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2745
    sget v1, Lorg/telegram/messenger/R$string;->DeleteLinkHelp:I

    const-string v2, "DeleteLinkHelp"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2746
    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v2, "Delete"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$LinkCell$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$LinkCell$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ManageLinksActivity$LinkCell;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    invoke-virtual {p2, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2747
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2748
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 2733
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 2734
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2735
    sget v1, Lorg/telegram/messenger/R$string;->RevokeAlert:I

    const-string v2, "RevokeAlert"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2736
    sget v1, Lorg/telegram/messenger/R$string;->RevokeLink:I

    const-string v2, "RevokeLink"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2737
    sget v1, Lorg/telegram/messenger/R$string;->RevokeButton:I

    const-string v2, "RevokeButton"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$LinkCell$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$LinkCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ManageLinksActivity$LinkCell;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    invoke-virtual {p2, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2738
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2739
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 2730
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->editLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    goto :goto_0

    .line 2718
    :cond_3
    :try_start_0
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    if-nez p1, :cond_4

    return-void

    .line 2721
    :cond_4
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.SEND"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "text/plain"

    .line 2722
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.TEXT"

    .line 2723
    iget-object p3, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2724
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    const-string p3, "InviteToGroupByLink"

    sget v0, Lorg/telegram/messenger/R$string;->InviteToGroupByLink:I

    invoke-static {p3, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/16 p3, 0x1f4

    invoke-virtual {p2, p1, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2726
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2705
    :cond_5
    :try_start_1
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    if-nez p1, :cond_6

    return-void

    .line 2708
    :cond_6
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    const-string p2, "label"

    .line 2709
    iget-object p3, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    invoke-static {p2, p3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    .line 2710
    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 2711
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyLinkBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2713
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 7

    .line 2664
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-nez p1, :cond_0

    return-void

    .line 2667
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2668
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2669
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2672
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 2673
    sget v2, Lorg/telegram/messenger/R$string;->Delete:I

    const-string v5, "Delete"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2674
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    .line 2675
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    move v2, v4

    goto/16 :goto_1

    .line 2678
    :cond_1
    sget v2, Lorg/telegram/messenger/R$string;->CopyLink:I

    const-string v5, "CopyLink"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2679
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2680
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2682
    sget v2, Lorg/telegram/messenger/R$string;->ShareLink:I

    const-string v5, "ShareLink"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2683
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_share:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2684
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2686
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->permanent:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$4900(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2687
    sget v2, Lorg/telegram/messenger/R$string;->EditLink:I

    const-string v5, "EditLink"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2688
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    .line 2689
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2692
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v2}, Lorg/telegram/ui/ManageLinksActivity;->access$4900(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2693
    sget v2, Lorg/telegram/messenger/R$string;->RevokeLink:I

    const-string v5, "RevokeLink"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2694
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x3

    .line 2695
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    move v2, v3

    .line 2700
    :goto_1
    new-instance v5, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v6, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 2701
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->toIntArray(Ljava/util/List;)[I

    move-result-object v0

    new-instance v6, Lorg/telegram/ui/ManageLinksActivity$LinkCell$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v1}, Lorg/telegram/ui/ManageLinksActivity$LinkCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ManageLinksActivity$LinkCell;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v3, v0, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2752
    sget v0, Lorg/telegram/messenger/R$string;->InviteLink:I

    const-string v1, "InviteLink"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2753
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 2754
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v2, :cond_4

    .line 2756
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v4

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setItemColor(III)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    .line 2778
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x24

    .line 2781
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    .line 2782
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v9, v1, 0x2

    .line 2788
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expired:Z

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v2, :cond_8

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    if-eqz v2, :cond_1

    goto :goto_3

    .line 2790
    :cond_1
    iget v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expire_date:I

    if-gtz v2, :cond_3

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v5

    move v1, v6

    const/4 v3, 0x0

    goto :goto_5

    :cond_3
    :goto_0
    if-lez v2, :cond_5

    .line 2793
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v11, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-wide v11, v11, Lorg/telegram/ui/ManageLinksActivity;->timeDif:J

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    add-long/2addr v1, v11

    .line 2794
    iget-object v11, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget v12, v11, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expire_date:I

    int-to-long v3, v12

    mul-long/2addr v3, v13

    .line 2795
    iget v12, v11, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->start_date:I

    if-gtz v12, :cond_4

    iget v12, v11, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->date:I

    :cond_4
    int-to-long v11, v12

    mul-long/2addr v11, v13

    sub-long/2addr v1, v11

    sub-long/2addr v3, v11

    long-to-float v1, v1

    long-to-float v2, v3

    div-float/2addr v1, v2

    sub-float v1, v6, v1

    goto :goto_1

    :cond_5
    move v1, v6

    .line 2800
    :goto_1
    iget-object v2, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    if-lez v3, :cond_6

    .line 2801
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    sub-int v2, v3, v2

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_2

    :cond_6
    move v2, v6

    .line 2803
    :goto_2
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    cmpg-float v3, v2, v5

    if-gtz v3, :cond_7

    .line 2805
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iput-boolean v10, v3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expired:Z

    .line 2807
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v3}, Lorg/telegram/ui/ManageLinksActivity;->access$000(Lorg/telegram/ui/ManageLinksActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    const/4 v3, 0x3

    goto :goto_5

    :cond_7
    move v3, v10

    goto :goto_5

    .line 2789
    :cond_8
    :goto_3
    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    if-eqz v1, :cond_9

    const/4 v3, 0x4

    goto :goto_4

    :cond_9
    const/4 v3, 0x3

    :goto_4
    move v2, v5

    move v1, v6

    .line 2815
    :goto_5
    iget v4, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->lastDrawingState:I

    if-eq v3, v4, :cond_b

    if-ltz v4, :cond_b

    .line 2816
    iput v4, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->animateFromState:I

    .line 2817
    iput v5, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->animateToStateProgress:F

    .line 2818
    invoke-direct {p0, v4}, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->hasProgress(I)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-direct {p0, v3}, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->hasProgress(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 2819
    iput-boolean v10, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->animateHideExpiring:Z

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    .line 2821
    iput-boolean v4, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->animateHideExpiring:Z

    .line 2825
    :cond_b
    :goto_6
    iput v3, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->lastDrawingState:I

    .line 2827
    iget v4, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->animateToStateProgress:F

    cmpl-float v5, v4, v6

    if-eqz v5, :cond_d

    const v5, 0x3d83126f    # 0.064f

    add-float/2addr v4, v5

    .line 2828
    iput v4, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->animateToStateProgress:F

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_c

    .line 2830
    iput v6, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->animateToStateProgress:F

    const/4 v4, 0x0

    .line 2831
    iput-boolean v4, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->animateHideExpiring:Z

    goto :goto_7

    .line 2833
    :cond_c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2837
    :cond_d
    :goto_7
    iget v4, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->animateToStateProgress:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_e

    .line 2838
    iget v4, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->animateFromState:I

    invoke-direct {p0, v4, v2}, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->getColor(IF)I

    move-result v4

    invoke-direct {p0, v3, v2}, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->getColor(IF)I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->animateToStateProgress:F

    invoke-static {v4, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    goto :goto_8

    .line 2840
    :cond_e
    invoke-direct {p0, v3, v2}, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->getColor(IF)I

    move-result v2

    .line 2843
    :goto_8
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v8

    int-to-float v4, v9

    const/16 v5, 0x20

    .line 2844
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v5, v11

    iget-object v11, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4, v5, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2845
    iget-boolean v3, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->animateHideExpiring:Z

    if-nez v3, :cond_f

    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expired:Z

    if-nez v5, :cond_15

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expire_date:I

    if-lez v5, :cond_15

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    if-nez v4, :cond_15

    :cond_f
    if-eqz v3, :cond_10

    .line 2847
    iget v1, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->lastDrawExpringProgress:F

    :cond_10
    move v11, v1

    .line 2850
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->paint2:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2851
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->rectF:Landroid/graphics/RectF;

    const/16 v2, 0x14

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int v3, v8, v3

    int-to-float v3, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int v4, v9, v4

    int-to-float v4, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v5, v8

    int-to-float v5, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v2, v9

    int-to-float v2, v2

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2853
    iget v1, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->animateToStateProgress:F

    cmpl-float v1, v1, v6

    const/high16 v2, 0x43b40000    # 360.0f

    if-eqz v1, :cond_13

    iget v1, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->animateFromState:I

    invoke-direct {p0, v1}, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->hasProgress(I)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->animateHideExpiring:Z

    if-eqz v1, :cond_13

    .line 2854
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2855
    iget-boolean v1, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->animateHideExpiring:Z

    if-eqz v1, :cond_12

    iget v1, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->animateToStateProgress:F

    sub-float/2addr v6, v1

    move v12, v6

    goto :goto_9

    :cond_12
    iget v1, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->animateToStateProgress:F

    move v12, v1

    :goto_9
    const-wide v3, 0x3fe6666666666666L    # 0.7

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v12

    float-to-double v5, v1

    add-double/2addr v5, v3

    double-to-float v1, v5

    .line 2857
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {v7, v1, v1, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2858
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->rectF:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    neg-float v1, v11

    mul-float v13, v1, v2

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->paint2:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move v4, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 2859
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->timerParticles:Lorg/telegram/ui/Components/TimerParticles;

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->paint2:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->rectF:Landroid/graphics/RectF;

    move-object/from16 v2, p1

    move v5, v13

    move v6, v12

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/TimerParticles;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;FF)V

    .line 2860
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_a

    .line 2862
    :cond_13
    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->rectF:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    neg-float v1, v11

    mul-float v12, v1, v2

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->paint2:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 2863
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->timerParticles:Lorg/telegram/ui/Components/TimerParticles;

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->paint2:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->rectF:Landroid/graphics/RectF;

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v2, p1

    move v5, v12

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/TimerParticles;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;FF)V

    .line 2865
    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    invoke-static {v1}, Lorg/telegram/ui/ManageLinksActivity;->access$9300(Lorg/telegram/ui/ManageLinksActivity;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 2866
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 2868
    :cond_14
    iput v11, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->lastDrawExpringProgress:F

    .line 2871
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    const/16 v2, 0xc

    if-eqz v1, :cond_16

    .line 2872
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v1, v1, Lorg/telegram/ui/ManageLinksActivity;->linkIconRevoked:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int v3, v8, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int v4, v9, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v8, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v9, v2

    invoke-virtual {v1, v3, v4, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2873
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v1, v1, Lorg/telegram/ui/ManageLinksActivity;->linkIconRevoked:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b

    .line 2875
    :cond_16
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v1, v1, Lorg/telegram/ui/ManageLinksActivity;->linkIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int v3, v8, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int v4, v9, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v8, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v9, v2

    invoke-virtual {v1, v3, v4, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2876
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v1, v1, Lorg/telegram/ui/ManageLinksActivity;->linkIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2879
    :goto_b
    iget-boolean v1, v0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->drawDivider:Z

    if-eqz v1, :cond_17

    const/16 v1, 0x46

    .line 2880
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, v10

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    const/16 v4, 0x17

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_17
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const/16 p2, 0x40

    .line 2770
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2771
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->paint2:Landroid/graphics/Paint;

    const/4 p2, 0x2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;I)V
    .locals 8

    const/4 v0, 0x0

    .line 2909
    iput-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->timerRunning:Z

    .line 2910
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 2911
    iput v1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->lastDrawingState:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2912
    iput v1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->animateToStateProgress:F

    .line 2914
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 2915
    iput p2, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->position:I

    if-nez p1, :cond_2

    return-void

    .line 2921
    :cond_2
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->title:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 2922
    new-instance p2, Landroid/text/SpannableStringBuilder;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->title:Ljava/lang/String;

    invoke-direct {p2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2923
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    invoke-static {p2, v1, v2, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    .line 2924
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2925
    :cond_3
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    const-string v1, "https://t.me/+"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2926
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->titleView:Landroid/widget/TextView;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2927
    :cond_4
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    const-string v1, "https://t.me/joinchat/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2928
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->titleView:Landroid/widget/TextView;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2929
    :cond_5
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 2930
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->titleView:Landroid/widget/TextView;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2932
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->titleView:Landroid/widget/TextView;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2936
    :goto_0
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    if-nez p2, :cond_7

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    if-nez v1, :cond_7

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->requested:I

    if-nez v1, :cond_7

    .line 2937
    sget p2, Lorg/telegram/messenger/R$string;->NoOneJoinedYet:I

    const-string v1, "NoOneJoinedYet"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_2

    .line 2939
    :cond_7
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    if-lez v1, :cond_8

    if-nez p2, :cond_8

    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expired:Z

    if-nez v2, :cond_8

    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    if-nez v2, :cond_8

    new-array p2, v0, [Ljava/lang/Object;

    const-string v2, "CanJoin"

    .line 2940
    invoke-static {v2, v1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_8
    const-string v2, ", "

    const-string v3, "PeopleJoined"

    if-lez v1, :cond_9

    .line 2941
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expired:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    if-eqz v1, :cond_9

    .line 2942
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    sub-int/2addr v1, v2

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "PeopleJoinedRemaining"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_9
    if-lez p2, :cond_a

    new-array v1, v0, [Ljava/lang/Object;

    .line 2945
    invoke-static {v3, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_a
    const-string p2, ""

    .line 2947
    :goto_1
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->requested:I

    if-lez v1, :cond_c

    .line 2948
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    if-lez v1, :cond_b

    .line 2949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2951
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->requested:I

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "JoinRequests"

    invoke-static {v3, p2, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2955
    :cond_c
    :goto_2
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->permanent:Z

    const-string v2, "  .  "

    const/high16 v3, 0x3fc00000    # 1.5f

    if-eqz v1, :cond_d

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    if-nez v1, :cond_d

    .line 2956
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2957
    new-instance p2, Lorg/telegram/ui/Components/DotDividerSpan;

    invoke-direct {p2}, Lorg/telegram/ui/Components/DotDividerSpan;-><init>()V

    .line 2958
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/DotDividerSpan;->setTopPadding(I)V

    .line 2959
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, p2, v2, v3, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2960
    sget p2, Lorg/telegram/messenger/R$string;->Permanent:I

    const-string v0, "Permanent"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2961
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 2962
    :cond_d
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expired:Z

    if-nez v1, :cond_12

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    if-eqz v1, :cond_e

    goto/16 :goto_4

    .line 2976
    :cond_e
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expire_date:I

    if-lez v1, :cond_11

    .line 2977
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2978
    new-instance p2, Lorg/telegram/ui/Components/DotDividerSpan;

    invoke-direct {p2}, Lorg/telegram/ui/Components/DotDividerSpan;-><init>()V

    .line 2979
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/DotDividerSpan;->setTopPadding(I)V

    .line 2980
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, p2, v3, v4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2982
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->this$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-wide v4, p2, Lorg/telegram/ui/ManageLinksActivity;->timeDif:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 2983
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expire_date:I

    int-to-long p1, p1

    mul-long/2addr p1, v6

    sub-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-gez v4, :cond_f

    move-wide p1, v2

    :cond_f
    const-wide/32 v2, 0x5265c00

    cmp-long v4, p1, v2

    if-lez v4, :cond_10

    .line 2989
    div-long/2addr p1, v2

    long-to-int p1, p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "DaysLeft"

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    .line 2991
    :cond_10
    div-long/2addr p1, v6

    const-wide/16 v2, 0x3c

    rem-long v4, p1, v2

    long-to-int v4, v4

    .line 2992
    div-long/2addr p1, v2

    rem-long v5, p1, v2

    long-to-int v5, v5

    .line 2993
    div-long/2addr p1, v2

    long-to-int p1, p1

    .line 2994
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "%02d"

    invoke-static {p2, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    const-string v5, ":%02d"

    invoke-static {p2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2995
    iput-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->timerRunning:Z

    .line 2997
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 2999
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 2963
    :cond_12
    :goto_4
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    if-eqz v1, :cond_13

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    if-nez v1, :cond_13

    .line 2964
    sget p2, Lorg/telegram/messenger/R$string;->NoOneJoined:I

    const-string v1, "NoOneJoined"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 2966
    :cond_13
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2967
    new-instance p2, Lorg/telegram/ui/Components/DotDividerSpan;

    invoke-direct {p2}, Lorg/telegram/ui/Components/DotDividerSpan;-><init>()V

    .line 2968
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {p2, v3}, Lorg/telegram/ui/Components/DotDividerSpan;->setTopPadding(I)V

    .line 2969
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, p2, v3, v4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2970
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    if-nez p2, :cond_14

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    if-lez v0, :cond_14

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    if-lt p1, v0, :cond_14

    .line 2971
    sget p1, Lorg/telegram/messenger/R$string;->LinkLimitReached:I

    const-string p2, "LinkLimitReached"

    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_6

    :cond_14
    if-eqz p2, :cond_15

    .line 2973
    sget p1, Lorg/telegram/messenger/R$string;->Revoked:I

    const-string p2, "Revoked"

    goto :goto_5

    :cond_15
    sget p1, Lorg/telegram/messenger/R$string;->Expired:I

    const-string p2, "Expired"

    :goto_5
    invoke-static {p2, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2975
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    return-void
.end method
