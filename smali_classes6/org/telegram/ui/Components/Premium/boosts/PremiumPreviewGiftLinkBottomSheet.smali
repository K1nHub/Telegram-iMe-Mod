.class public Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;
.super Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;
.source "PremiumPreviewGiftLinkBottomSheet.java"


# static fields
.field private static instance:Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;


# instance fields
.field private actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

.field private final isUsed:Z

.field private final slug:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$2qFQv-TfKEBMX2n4qLrgZn1b0-A(Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->lambda$init$2(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8Ubn7J5RbJAbF4cOUTis-MUMk-Q(Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->lambda$init$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PtPHweHil5-2hKuSqlHPpNkK_Vk(Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;Ljava/lang/String;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->lambda$share$0(Ljava/lang/String;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$g-PTyfxhyLe9fhVpbRc7LRzrrl4(Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->share()V

    return-void
.end method

.method public static synthetic $r8$lambda$vAAXISJvYjN2Nrf0U-zBeOktjIM(Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->lambda$init$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$zqW6XJjdJCW1yGxTWh5Z4jS1QFs(Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->lambda$init$3(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    .line 58
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 59
    iput-object p5, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->slug:Ljava/lang/String;

    .line 60
    iput-boolean p6, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->isUsed:Z

    .line 61
    invoke-direct {p0}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->init()V

    return-void
.end method

.method private init()V
    .locals 9

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet$1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    .line 142
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->isUsed:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/4 v2, 0x0

    const/16 v3, 0x44

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 144
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    .line 145
    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->setActivateForFreeStyle()V

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    const/4 v2, -0x1

    const/16 v3, 0x44

    const/16 v4, 0x50

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    return-void
.end method

.method private synthetic lambda$init$1()V
    .locals 7

    .line 154
    new-instance v6, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v0, 0x1

    .line 155
    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->setAnimateConfetti(Z)Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    move-result-object v1

    .line 156
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->setAnimateConfettiWithStars(Z)Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    move-result-object v1

    .line 157
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->setOutboundGift(Z)Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$init$2(Ljava/lang/Void;)V
    .locals 2

    .line 151
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    .line 152
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->dismiss()V

    .line 153
    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;)V

    const-wide/16 v0, 0xc8

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$init$3(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 161
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    .line 162
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    new-instance v2, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;)V

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->processApplyGiftCodeError(Lorg/telegram/tgnet/TLRPC$TL_error;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$init$4(Landroid/view/View;)V
    .locals 2

    .line 146
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 149
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->actionBtn:Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/ActionBtnCell;->updateLoading(Z)V

    .line 150
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->slug:Ljava/lang/String;

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;)V

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;)V

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->applyGiftCode(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$share$0(Ljava/lang/String;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z
    .locals 21

    move-object/from16 v0, p7

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 98
    invoke-interface {v0, v2}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 103
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    move-object/from16 v4, p3

    .line 104
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v2, v2, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    .line 105
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getSendMessagesHelper()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v15

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v5, p1

    move-wide v6, v2

    move-object v1, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v20

    invoke-static/range {v5 .. v19}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    .line 108
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showGiftLinkForwardedBulletin(J)V

    const/4 v0, 0x1

    return v0
.end method

.method private share()V
    .locals 4

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://t.me/giftcode/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->slug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "onlySelect"

    const/4 v3, 0x1

    .line 92
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "dialogsType"

    const/4 v3, 0x3

    .line 93
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    new-instance v2, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 95
    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 111
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 112
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->dismiss()V

    return-void
.end method

.method public static show(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 0

    .line 43
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-static {p1, p0, p3}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)V

    return-void
.end method

.method public static show(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;Lorg/telegram/tgnet/TLRPC$User;Z)V
    .locals 8

    .line 47
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 48
    sget-object v0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->instance:Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance v4, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;

    invoke-direct {v4, p1}, Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;-><init>(Lorg/telegram/tgnet/TLRPC$TL_premiumGiftOption;)V

    .line 52
    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;

    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    move-object v0, p1

    move-object v3, p2

    move-object v5, p0

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/Premium/GiftPremiumBottomSheet$GiftTier;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 53
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->show()V

    .line 54
    sput-object p1, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->instance:Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dismissInternal()V
    .locals 1

    .line 173
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    const/4 v0, 0x0

    .line 174
    sput-object v0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->instance:Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;

    return-void
.end method

.method protected getAdditionItemViewType(I)I
    .locals 0

    const/4 p1, 0x6

    return p1
.end method

.method protected onBindAdditionCell(Landroid/view/View;I)V
    .locals 0

    .line 127
    check-cast p1, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;->slug:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;->setSlug(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreateAdditionCell(ILandroid/content/Context;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 118
    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/Components/Premium/boosts/cells/LinkCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 p2, 0x8

    .line 119
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, p2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setTitle(Z)V
    .locals 3

    .line 77
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->setTitle(Z)V

    .line 78
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 79
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v0, 0xe

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 80
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v0, 0xc

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 81
    sget p1, Lorg/telegram/messenger/R$string;->GiftPremiumAboutThisLink:I

    const-string v0, "GiftPremiumAboutThisLink"

    invoke-static {v0, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 82
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/PremiumPreviewGiftLinkBottomSheet;)V

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->subtitleView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->GiftPremiumAboutThisLinkEnd:I

    const-string v2, "GiftPremiumAboutThisLinkEnd"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string v2, "%1$s"

    invoke-static {v2, p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected updateRows()V
    .locals 2

    .line 66
    iget v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->paddingRow:I

    .line 67
    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->additionStartRow:I

    add-int/lit8 v1, v1, 0x1

    .line 68
    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->additionEndRow:I

    .line 69
    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->featuresStartRow:I

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->premiumFeatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->rowCount:I

    .line 71
    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->featuresEndRow:I

    add-int/lit8 v0, v1, 0x1

    .line 72
    iput v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->sectionRow:I

    return-void
.end method
