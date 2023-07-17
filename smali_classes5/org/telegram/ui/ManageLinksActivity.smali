.class public Lorg/telegram/ui/ManageLinksActivity;
.super Lcom/iMe/ui/base/wallet_auth/JavaWalletAuthBaseFragment;
.source "ManageLinksActivity.java"

# interfaces
.implements Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView;
.implements Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountView;
.implements Lcom/iMe/ui/wallet/donations/WalletDonationsView;
.implements Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionView;
.implements Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorView;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ManageLinksActivity$DiffCallback;,
        Lorg/telegram/ui/ManageLinksActivity$LinkCell;,
        Lorg/telegram/ui/ManageLinksActivity$ListAdapter;,
        Lorg/telegram/ui/ManageLinksActivity$HintInnerCell;,
        Lorg/telegram/ui/ManageLinksActivity$EmptyView;
    }
.end annotation


# static fields
.field public static BINANCE_PAY_CREATE_COLLECTION_SCREEN_TYPE:I = 0x1

.field public static BINANCE_REPLENISH_SCREEN_TYPE:I = 0x5

.field public static CHANNEL_ADMIN_DONATIONS:I = 0x4

.field public static STAKING_CALCULATOR_SCREEN_TYPE:I = 0x9

.field public static STAKING_PROFIT_SCREEN_TYPE:I = 0x7

.field public static STAKING_REPLENISH_SCREEN_TYPE:I = 0x6

.field public static STAKING_WITHDRAW_SCREEN_TYPE:I = 0x8

.field public static WALLET_TRANSFER_DONATIONS_SCREEN_TYPE:I = 0x3

.field public static WALLET_TRANSFER_SCREEN_TYPE:I = 0x2


# instance fields
.field private adminId:J

.field private admins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;",
            ">;"
        }
    .end annotation
.end field

.field private adminsDividerRow:I

.field private adminsEndRow:I

.field private adminsHeaderRow:I

.field adminsLoaded:Z

.field private adminsStartRow:I

.field private binancePayScreenArgs:Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

.field public binanceReceivePresenter:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;
    .annotation runtime Lmoxy/presenter/InjectPresenter;
    .end annotation
.end field

.field private canEdit:Z

.field private chooseContactHeaderRow:I

.field private chooseContactRow:I

.field private chooseRecipientOptionsRow:I

.field private commentHeaderRow:I

.field private commentRow:I

.field private createLinkHelpRow:I

.field private createNewLinkRow:I

.field private creatorDividerRow:I

.field private creatorRow:I

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private currentChatId:J

.field deletingRevokedLinks:Z

.field private dividerRow:I

.field private donationBalanceHeaderRow:I

.field private donationBalanceRow:I

.field private donationTransactionsEndRow:I

.field private donationTransactionsHeaderRow:I

.field private donationTransactionsSeeMoreRow:I

.field private donationTransactionsStartRow:I

.field private donationsDividerRow:I

.field public donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;
    .annotation runtime Lmoxy/presenter/InjectPresenter;
    .end annotation
.end field

.field private donationsTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/iMe/model/wallet/transaction/TransactionItem;",
            ">;"
        }
    .end annotation
.end field

.field private feeRow:I

.field private forcedAmountText:Ljava/lang/String;

.field hasMore:Z

.field private helpRow:I

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private informationRow:I

.field private inputHeaderRow:I

.field private inputRow:I

.field private invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

.field private inviteLinkBottomSheet:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

.field private invites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;",
            ">;"
        }
    .end annotation
.end field

.field private invitesCount:I

.field private isBinancePayCreateCollectionType:Z

.field private isBinanceReplenishType:Z

.field private isChannel:Z

.field private isDonationsTransferType:Z

.field private isDonationsType:Z

.field private isOpened:Z

.field private isPublic:Z

.field private isStakingCalculatorType:Z

.field private isStakingDepositType:Z

.field private isStakingProfitType:Z

.field private isStakingWithdrawType:Z

.field private isWalletTransferType:Z

.field private lastDivider:I

.field private final linkEditActivityCallback:Lorg/telegram/ui/LinkEditActivity$Callback;

.field linkIcon:Landroid/graphics/drawable/Drawable;

.field linkIconRevoked:Landroid/graphics/drawable/Drawable;

.field private linksEndRow:I

.field private linksHeaderRow:I

.field linksLoading:Z

.field private linksLoadingRow:I

.field private linksStartRow:I

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

.field loadAdmins:Z

.field loadRevoked:Z

.field notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private permanentLinkHeaderRow:I

.field private permanentLinkRow:I

.field private presetAmount:Ljava/lang/Double;

.field private recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

.field private final resourceManager:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/iMe/storage/domain/utils/system/ResourceManager;",
            ">;"
        }
    .end annotation
.end field

.field private revokeAllDivider:I

.field private revokeAllRow:I

.field private revokedDivider:I

.field private revokedHeader:I

.field private revokedInvites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;",
            ">;"
        }
    .end annotation
.end field

.field private revokedLinksEndRow:I

.field private revokedLinksStartRow:I

.field private rowCount:I

.field private screenType:I

.field private selectTokenHeaderRow:I

.field private selectTokenRow:I

.field public sendPresenter:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;
    .annotation runtime Lmoxy/presenter/InjectPresenter;
    .end annotation
.end field

.field private stakingActionsRow:I

.field public stakingCalculatorPresenter:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;
    .annotation runtime Lmoxy/presenter/InjectPresenter;
    .end annotation
.end field

.field private stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

.field private stakingInfoRow:I

.field private stakingPrognosisRow:I

.field private stakingSafeWithdrawalRow:I

.field private stakingSelectProgrammeHeaderRow:I

.field public stakingTransactionPresenter:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;
    .annotation runtime Lmoxy/presenter/InjectPresenter;
    .end annotation
.end field

.field private stakingWithdrawalFeeRow:I

.field timeDif:J

.field private final tokenBuyCoordinator:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;",
            ">;"
        }
    .end annotation
.end field

.field private transferScreenArgs:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

.field updateTimerRunnable:Ljava/lang/Runnable;

.field private users:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-1rDk1mtxX96pp8fQb4-I_pFhOo(Lorg/telegram/ui/ManageLinksActivity;)Lorg/koin/core/parameter/ParametersHolder;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->lambda$provideDonationsPresenter$3()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1aBZJTgFwAFic_eJufrmXM6vOYg(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$openSelectToken$15(Lorg/telegram/ui/Components/LinkActionView;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1f1DlXEH2Bim5nEUP0PsWTK-_Ag(Lorg/telegram/ui/ManageLinksActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->lambda$setupScreenState$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$6siKXBul4ByZOB55apETPdousCs(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$createView$28(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$7dnyNOSbBgCGKI_qlzg-HqPFPMY(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Cells/CheckBoxCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$onSuccessValidation$5(Lorg/telegram/ui/Cells/CheckBoxCell;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9-3kYUH7DEMcCHFOrXIPJGNPjs8(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$onSuccessValidation$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CEHwbipIDgCrP3U9TpVmpc74ric(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ManageLinksActivity;->lambda$createView$29(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CcSi-k1HuyEZu7ZaEY1E1yyWIzU(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$openSelectToken$16(Lorg/telegram/ui/Components/LinkActionView;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Czg3wYgiecu6TnR575iD3qSWF98(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->lambda$createView$26(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fekh__gUv1EE83JGMpLAsyDvJko(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$getInputOptionsMenuItems$11(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hcp-ioniqBcV8l8Z_eZ_RkmxB7o(Lorg/telegram/ui/ManageLinksActivity;Lcom/iMe/model/twitter/TwitterUserItem;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$openTwitterSearchScreen$14(Lcom/iMe/model/twitter/TwitterUserItem;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Iovpy_Lgi0kO9KDqSop_WjO-pB8(Lorg/telegram/ui/ManageLinksActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->lambda$getThemeDescriptions$37()V

    return-void
.end method

.method public static synthetic $r8$lambda$K3KNGUV4-xArxESTNbtbceYmv-Q(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ManageLinksActivity;->lambda$revokePermanent$32(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KBFaFGkzowGSiTpKHroyG9S64lA(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ManageLinksActivity;->lambda$revokeLink$36(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LjW439zKGpLDKwONiqmf048BraU(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ManageLinksActivity;->lambda$revokeLink$35(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MOforjRp1XnrHzfPxHOVf-1TQ-o(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ManageLinksActivity;->lambda$loadLinks$24(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Moln46v3781LkzXt4naupm9IKI0(Lorg/telegram/ui/ManageLinksActivity;)Lorg/koin/core/parameter/ParametersHolder;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->lambda$provideSendPresenter$1()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MpDut1seYHJZQbQ3xmHlloN9Zng(Lorg/telegram/ui/ManageLinksActivity;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$createView$30(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MthVdUsQq_0aFpI_JSxmVBl4gek(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ManageLinksActivity;->lambda$loadLinks$25(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sh86xJS0DwAarBUQajS0ZBNY25M(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$getInputOptionsMenuItems$10(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VLVKHMrKs1d4_fVqugzVyyo5XnU(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$loadLinks$20(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z1fhm2VmbNyH_2lxlGEB-BHOMgc()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/ManageLinksActivity;->lambda$showCommonInfoAlert$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$cLymkkh9EDrQhdG8lbQB8010uo4(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$getInputOptionsMenuItems$12(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eFiAViIrEvvjgv-nyLfXhnHiX-4(Lorg/telegram/ui/ManageLinksActivity;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->lambda$showLevelRequiredDialog$8(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eMgyfHV70WeiPFGziRgrGPUzUuc(Lorg/telegram/ui/ManageLinksActivity;)Lorg/koin/core/parameter/ParametersHolder;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->lambda$provideBinanceReceivePresenter$0()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iYrMpZDPa3mSjWaBuUokQpYSxiY(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$onRequestPermissionsResultFragment$9(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ikzPvNL3ckkhaDn5LTJ8m1jKrp4(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$openChooseContact$17(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$itFsEy7p9U_DSLATVLf2p0hw-e4(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$createView$27(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mlYsyBh1fISgkdIYfeJoHEPsazM(Lorg/telegram/ui/ManageLinksActivity;)Lorg/koin/core/parameter/ParametersHolder;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->lambda$provideStakingCalculatorPresenter$4()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nLHGvKQJaPIjS24wDgnQ1yiXeAk(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$loadLinks$22(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nOER6lKAHPe8OruF0q6ACguINmA(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ManageLinksActivity;->lambda$deleteLink$34(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r1gXVcq8kxidqLMHYjuUQnH3yoA(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$deleteLink$33(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    return-void
.end method

.method public static synthetic $r8$lambda$swdk8qt-zunnswvpcSyzSh4hvyc(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$getInputOptionsMenuItems$13(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wcd_g30l4uy49d2BjnhLPvv1DW4(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ManageLinksActivity;->lambda$openChooseContact$18(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ContactsActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xTGo_aYZGZ8OZtVKK9CTlBWcrEw(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ManageLinksActivity;->lambda$loadLinks$23(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$yaZMo4hK6sfIqgTHImEBpKF7wT0(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ManageLinksActivity;->lambda$revokePermanent$31(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ymI84yrDTXyx1qbIy9IJvIduqJM(Lorg/telegram/ui/ManageLinksActivity;)Lorg/koin/core/parameter/ParametersHolder;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->lambda$provideStakingTransactionPresenter$2()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zqviLdM9bwG4oC53YbivUo37GWY(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$loadLinks$21(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 3

    .line 1123
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/JavaWalletAuthBaseFragment;-><init>()V

    .line 200
    const-class v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 201
    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->inject(Ljava/lang/Class;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    .line 202
    const-class v0, Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;

    .line 203
    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->inject(Ljava/lang/Class;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->tokenBuyCoordinator:Lkotlin/Lazy;

    .line 217
    new-instance v0, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    invoke-direct {v0}, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->transferScreenArgs:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    .line 218
    new-instance v0, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    invoke-direct {v0}, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->binancePayScreenArgs:Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsTransactions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    .line 221
    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->presetAmount:Ljava/lang/Double;

    const/4 v1, -0x1

    .line 223
    iput v1, p0, Lorg/telegram/ui/ManageLinksActivity;->screenType:I

    .line 258
    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->forcedAmountText:Ljava/lang/String;

    .line 994
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    .line 995
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    .line 996
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->users:Ljava/util/HashMap;

    .line 999
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->admins:Ljava/util/ArrayList;

    .line 1006
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ManageLinksActivity$4;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->updateTimerRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 1138
    iput-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->loadRevoked:Z

    .line 3062
    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ManageLinksActivity$9;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    iput-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->linkEditActivityCallback:Lorg/telegram/ui/LinkEditActivity$Callback;

    .line 3398
    new-instance v1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 1124
    iput-wide p1, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    .line 1125
    iput p5, p0, Lorg/telegram/ui/ManageLinksActivity;->invitesCount:I

    .line 1126
    iget p5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p5, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1127
    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->isChannel:Z

    const-wide/16 v1, 0x0

    cmp-long p1, p3, v1

    if-nez p1, :cond_1

    .line 1129
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-wide p3, p1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iput-wide p3, p0, Lorg/telegram/ui/ManageLinksActivity;->adminId:J

    goto :goto_1

    .line 1131
    :cond_1
    iput-wide p3, p0, Lorg/telegram/ui/ManageLinksActivity;->adminId:J

    .line 1134
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide p3, p0, Lorg/telegram/ui/ManageLinksActivity;->adminId:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 1135
    iget-wide p3, p0, Lorg/telegram/ui/ManageLinksActivity;->adminId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object p5

    invoke-virtual {p5}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p5

    iget-wide v1, p5, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long p3, p3, v1

    if-eqz p3, :cond_2

    if-eqz p1, :cond_3

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-nez p1, :cond_3

    :cond_2
    move v0, p2

    :cond_3
    iput-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->canEdit:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 6

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 261
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ManageLinksActivity;-><init>(JJI)V

    .line 262
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ManageLinksActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ManageLinksActivity;)Z
    .locals 0

    .line 159
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->isForkScreenType()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ManageLinksActivity;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingProfitType:Z

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ManageLinksActivity;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingWithdrawType:Z

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ManageLinksActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->showCommonInfoAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ManageLinksActivity;Z)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->loadLinks(Z)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ManageLinksActivity;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lorg/telegram/ui/ManageLinksActivity;->isChannel:Z

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsStartRow:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsEndRow:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->creatorRow:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ManageLinksActivity;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinancePayCreateCollectionType:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->createNewLinkRow:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksStartRow:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksEndRow:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedLinksStartRow:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedLinksEndRow:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokeAllRow:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsStartRow:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsEndRow:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->feeRow:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ManageLinksActivity;)J
    .locals 2

    .line 159
    iget-wide v0, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ManageLinksActivity;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lorg/telegram/ui/ManageLinksActivity;->isWalletTransferType:Z

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ManageLinksActivity;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->revokePermanent()V

    return-void
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ManageLinksActivity;)Lorg/telegram/ui/Components/InviteLinkBottomSheet;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/ManageLinksActivity;->inviteLinkBottomSheet:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    return-object p0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Lorg/telegram/ui/Components/InviteLinkBottomSheet;
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->inviteLinkBottomSheet:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    return-object p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ManageLinksActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    return-object p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ManageLinksActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/ManageLinksActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/HashMap;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/ManageLinksActivity;->users:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseContactHeaderRow:I

    return p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsHeaderRow:I

    return p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsTransactions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ManageLinksActivity;)J
    .locals 2

    .line 159
    iget-wide v0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminId:J

    return-wide v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseContactRow:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ManageLinksActivity;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinanceReplenishType:Z

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->selectTokenRow:I

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->inputRow:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ManageLinksActivity;)Ljava/lang/String;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/ManageLinksActivity;->forcedAmountText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/ManageLinksActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->forcedAmountText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/ManageLinksActivity;)Ljava/lang/String;
    .locals 0

    .line 159
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->getCurrentForcedAmount()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->checkButtonEnabled(Lorg/telegram/ui/Components/LinkActionView;)V

    return-void
.end method

.method static synthetic access$4500(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)Ljava/util/ArrayList;
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->getInputOptionsMenuItems(Lorg/telegram/ui/Components/LinkActionView;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->commentRow:I

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/ManageLinksActivity;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lorg/telegram/ui/ManageLinksActivity;->isPublic:Z

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/ManageLinksActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/ManageLinksActivity;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lorg/telegram/ui/ManageLinksActivity;->canEdit:Z

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ManageLinksActivity;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lorg/telegram/ui/ManageLinksActivity;->isDonationsType:Z

    return p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->commentHeaderRow:I

    return p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->selectTokenHeaderRow:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->inputHeaderRow:I

    return p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationBalanceHeaderRow:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->permanentLinkHeaderRow:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedHeader:I

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksHeaderRow:I

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsHeaderRow:I

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ManageLinksActivity;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lorg/telegram/ui/ManageLinksActivity;->isDonationsTransferType:Z

    return p0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->invitesCount:I

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/ManageLinksActivity;->admins:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseRecipientOptionsRow:I

    return p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingPrognosisRow:I

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingInfoRow:I

    return p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingActionsRow:I

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingSafeWithdrawalRow:I

    return p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingWithdrawalFeeRow:I

    return p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingSelectProgrammeHeaderRow:I

    return p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsSeeMoreRow:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ManageLinksActivity;)Z
    .locals 0

    .line 159
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->isStakingTransactionScreenType()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationBalanceRow:I

    return p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->helpRow:I

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->permanentLinkRow:I

    return p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsDividerRow:I

    return p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->dividerRow:I

    return p0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedDivider:I

    return p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokeAllDivider:I

    return p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->creatorDividerRow:I

    return p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsDividerRow:I

    return p0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksLoadingRow:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ManageLinksActivity;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingCalculatorType:Z

    return p0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->lastDivider:I

    return p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->informationRow:I

    return p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 159
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->createLinkHelpRow:I

    return p0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/ManageLinksActivity;Ljava/lang/String;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->saveDonationsAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8400(Lorg/telegram/ui/ManageLinksActivity;Ljava/lang/String;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->createCollection(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8500(Lorg/telegram/ui/ManageLinksActivity;Ljava/lang/String;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->transferAmount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8600(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->openSelectToken(Lorg/telegram/ui/Components/LinkActionView;)V

    return-void
.end method

.method static synthetic access$8700(Lorg/telegram/ui/ManageLinksActivity;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->openChooseContact()V

    return-void
.end method

.method static synthetic access$8800(Lorg/telegram/ui/ManageLinksActivity;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->openDonationAddressOnScanner()V

    return-void
.end method

.method static synthetic access$8900(Lorg/telegram/ui/ManageLinksActivity;)Landroid/view/View;
    .locals 0

    .line 159
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ManageLinksActivity;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingDepositType:Z

    return p0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/ManageLinksActivity;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->openAddAdminScreen()V

    return-void
.end method

.method static synthetic access$9100(Lorg/telegram/ui/ManageLinksActivity;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->openScanQrCodeScreen()V

    return-void
.end method

.method static synthetic access$9200(Lorg/telegram/ui/ManageLinksActivity;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->openTwitterSearchScreen()V

    return-void
.end method

.method static synthetic access$9300(Lorg/telegram/ui/ManageLinksActivity;)Z
    .locals 0

    .line 159
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    return p0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/ManageLinksActivity;)Lorg/telegram/ui/ManageLinksActivity$DiffCallback;
    .locals 0

    .line 159
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->saveListState()Lorg/telegram/ui/ManageLinksActivity$DiffCallback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/ManageLinksActivity$DiffCallback;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->updateRecyclerViewAnimated(Lorg/telegram/ui/ManageLinksActivity$DiffCallback;)V

    return-void
.end method

.method static synthetic access$9600(Lorg/telegram/ui/ManageLinksActivity;Z)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->updateRows(Z)V

    return-void
.end method

.method private checkButtonEnabled(Lorg/telegram/ui/Components/LinkActionView;)V
    .locals 2

    .line 753
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    if-eqz v0, :cond_2

    .line 754
    invoke-virtual {v0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->getCurrentDonationsAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->getCurrentDonationsAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkActionView;->getEditText()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    .line 755
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/LinkActionView;->setEnabledActionButton(ZLjava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method private createCollection(Ljava/lang/String;)V
    .locals 1

    .line 788
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 789
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->binanceReceivePresenter:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {v0, p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->createCollection(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getCurrentForcedAmount()Ljava/lang/String;
    .locals 1

    .line 924
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->forcedAmountText:Ljava/lang/String;

    return-object v0
.end method

.method private getInputOptionsMenuItems(Lorg/telegram/ui/Components/LinkActionView;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/Components/LinkActionView;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;",
            ">;"
        }
    .end annotation

    .line 646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 647
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    if-eqz v1, :cond_2

    .line 649
    invoke-virtual {v1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->getCurrentDonationsAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 650
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 651
    sget v4, Lorg/telegram/messenger/R$string;->GetQRCode:I

    const-string v5, "GetQRCode"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_qrcode:I

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 652
    new-instance v4, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 658
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->channel_donations_unlink_address_dialog_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 659
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 660
    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 665
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {v1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->getCurrentDonationsAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 666
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {v1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->isCryptoAddressCreated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 668
    iget-object v4, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->channel_donations_link_non_castodial_wallet_address_dialog_title:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 669
    new-instance v4, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 673
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_1
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 676
    sget v2, Lorg/telegram/messenger/R$string;->AuthAnotherClientScan:I

    const-string v3, "AuthAnotherClientScan"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_qrcode:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 677
    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 681
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getStakingLastRow()I
    .locals 2

    .line 918
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingWithdrawType:Z

    if-eqz v0, :cond_0

    .line 919
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingWithdrawalFeeRow:I

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingActionsRow:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 920
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->feeRow:I

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingActionsRow:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method private isForkScreenType()Z
    .locals 2

    .line 928
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->screenType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isStakingTransactionScreenType()Z
    .locals 1

    .line 932
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingDepositType:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingProfitType:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingWithdrawType:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private synthetic lambda$createView$26(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    const/4 v0, 0x0

    .line 1675
    iput-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->deletingRevokedLinks:Z

    if-nez p1, :cond_0

    .line 1677
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->saveListState()Lorg/telegram/ui/ManageLinksActivity$DiffCallback;

    move-result-object p1

    .line 1678
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1679
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->updateRecyclerViewAnimated(Lorg/telegram/ui/ManageLinksActivity$DiffCallback;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$27(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1674
    new-instance p1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda19;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$28(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1666
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteRevokedExportedChatInvites;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteRevokedExportedChatInvites;-><init>()V

    .line 1667
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v0, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    neg-long v0, v0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteRevokedExportedChatInvites;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1668
    iget-wide v0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 1669
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteRevokedExportedChatInvites;->admin_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    goto :goto_0

    .line 1671
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminId:J

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteRevokedExportedChatInvites;->admin_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    :goto_0
    const/4 p2, 0x1

    .line 1673
    iput-boolean p2, p0, Lorg/telegram/ui/ManageLinksActivity;->deletingRevokedLinks:Z

    .line 1674
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$createView$29(Landroid/content/Context;Landroid/view/View;I)V
    .locals 10

    .line 1624
    iget p2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsStartRow:I

    const/4 v0, 0x0

    if-lt p3, p2, :cond_1

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsEndRow:I

    if-ge p3, v1, :cond_1

    .line 1625
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsTransactions:Ljava/util/ArrayList;

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/model/wallet/transaction/TransactionItem;

    .line 1626
    invoke-virtual {p1}, Lcom/iMe/model/wallet/transaction/TransactionItem;->isUnsupported()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 1629
    :cond_0
    new-instance p2, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;

    invoke-direct {p2, p1}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType$TransactionDetails;-><init>(Lcom/iMe/model/wallet/transaction/TransactionItem;)V

    invoke-static {p0, p2, v0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog$ScreenType;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1635
    :cond_1
    iget p2, p0, Lorg/telegram/ui/ManageLinksActivity;->creatorRow:I

    const/4 v1, 0x0

    if-ne p3, p2, :cond_2

    .line 1636
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->users:Ljava/util/HashMap;

    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->admin_id:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_9

    .line 1638
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1639
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string p3, "user_id"

    invoke-virtual {p2, p3, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1640
    sget p3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p1, v1}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 1641
    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 1642
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 1644
    :cond_2
    iget p2, p0, Lorg/telegram/ui/ManageLinksActivity;->createNewLinkRow:I

    if-ne p3, p2, :cond_3

    .line 1645
    new-instance p1, Lorg/telegram/ui/LinkEditActivity;

    iget-wide p2, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    invoke-direct {p1, v1, p2, p3}, Lorg/telegram/ui/LinkEditActivity;-><init>(IJ)V

    .line 1646
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->linkEditActivityCallback:Lorg/telegram/ui/LinkEditActivity$Callback;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/LinkEditActivity;->setCallback(Lorg/telegram/ui/LinkEditActivity$Callback;)V

    .line 1647
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 1648
    :cond_3
    iget p2, p0, Lorg/telegram/ui/ManageLinksActivity;->linksStartRow:I

    if-lt p3, p2, :cond_4

    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->linksEndRow:I

    if-ge p3, v2, :cond_4

    .line 1649
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    sub-int/2addr p3, p2

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 1650
    new-instance p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, p0, Lorg/telegram/ui/ManageLinksActivity;->users:Ljava/util/HashMap;

    iget-wide v6, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    const/4 v8, 0x0

    iget-boolean v9, p0, Lorg/telegram/ui/ManageLinksActivity;->isChannel:Z

    move-object v0, p2

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/util/HashMap;Lorg/telegram/ui/ActionBar/BaseFragment;JZZ)V

    iput-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->inviteLinkBottomSheet:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    .line 1651
    iget-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->canEdit:Z

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->setCanEdit(Z)V

    .line 1652
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->inviteLinkBottomSheet:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->show()V

    goto/16 :goto_0

    .line 1653
    :cond_4
    iget p2, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedLinksStartRow:I

    if-lt p3, p2, :cond_5

    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedLinksEndRow:I

    if-ge p3, v2, :cond_5

    .line 1654
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    sub-int/2addr p3, p2

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 1655
    new-instance p2, Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, p0, Lorg/telegram/ui/ManageLinksActivity;->users:Ljava/util/HashMap;

    iget-wide v6, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    const/4 v8, 0x0

    iget-boolean v9, p0, Lorg/telegram/ui/ManageLinksActivity;->isChannel:Z

    move-object v0, p2

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/util/HashMap;Lorg/telegram/ui/ActionBar/BaseFragment;JZZ)V

    iput-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->inviteLinkBottomSheet:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    .line 1656
    invoke-virtual {p2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->show()V

    goto/16 :goto_0

    .line 1657
    :cond_5
    iget p1, p0, Lorg/telegram/ui/ManageLinksActivity;->revokeAllRow:I

    if-ne p3, p1, :cond_7

    .line 1658
    iget-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->deletingRevokedLinks:Z

    if-eqz p1, :cond_6

    return-void

    .line 1662
    :cond_6
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1663
    sget p2, Lorg/telegram/messenger/R$string;->DeleteAllRevokedLinks:I

    const-string p3, "DeleteAllRevokedLinks"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1664
    sget p2, Lorg/telegram/messenger/R$string;->DeleteAllRevokedLinkHelp:I

    const-string p3, "DeleteAllRevokedLinkHelp"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1665
    sget p2, Lorg/telegram/messenger/R$string;->Delete:I

    const-string p3, "Delete"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1683
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string p3, "Cancel"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1684
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 1685
    :cond_7
    iget p1, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsStartRow:I

    if-lt p3, p1, :cond_9

    iget p2, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsEndRow:I

    if-ge p3, p2, :cond_9

    sub-int/2addr p3, p1

    .line 1687
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->admins:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;

    .line 1688
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->users:Ljava/util/HashMap;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;->admin_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1689
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ManageLinksActivity;->users:Ljava/util/HashMap;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;->admin_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p2, p3, v1}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 1691
    :cond_8
    new-instance p2, Lorg/telegram/ui/ManageLinksActivity;

    iget-wide v3, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;->admin_id:J

    iget v7, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;->invites_count:I

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/ManageLinksActivity;-><init>(JJI)V

    .line 1692
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ManageLinksActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)V

    .line 1693
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_9
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$30(Landroid/view/View;I)Z
    .locals 2

    .line 1697
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksStartRow:I

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksEndRow:I

    if-lt p2, v0, :cond_1

    :cond_0
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedLinksStartRow:I

    if-lt p2, v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedLinksEndRow:I

    if-ge p2, v0, :cond_2

    .line 1698
    :cond_1
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/ManageLinksActivity$LinkCell;

    .line 1699
    iget-object p2, p2, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->optionsView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->callOnClick()Z

    const/4 p2, 0x2

    .line 1700
    invoke-virtual {p1, v1, p2}, Landroid/view/View;->performHapticFeedback(II)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private synthetic lambda$deleteLink$33(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 0

    if-nez p1, :cond_0

    .line 3010
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->linkEditActivityCallback:Lorg/telegram/ui/LinkEditActivity$Callback;

    invoke-interface {p1, p2}, Lorg/telegram/ui/LinkEditActivity$Callback;->onLinkRemoved(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$deleteLink$34(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 3008
    new-instance p2, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda24;

    invoke-direct {p2, p0, p3, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getInputOptionsMenuItems$10(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    .line 653
    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkActionView;->dismissPopupWindow()V

    .line 654
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->showDonationAddressQrCode()V

    return-void
.end method

.method private synthetic lambda$getInputOptionsMenuItems$11(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    .line 661
    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkActionView;->dismissPopupWindow()V

    .line 662
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->unlinkWalletAddress()V

    return-void
.end method

.method private synthetic lambda$getInputOptionsMenuItems$12(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    .line 670
    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkActionView;->dismissPopupWindow()V

    .line 671
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->linkCryptoWalletAddress()V

    return-void
.end method

.method private synthetic lambda$getInputOptionsMenuItems$13(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    .line 678
    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkActionView;->dismissPopupWindow()V

    .line 679
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->openScanQrCodeScreen()V

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$37()V
    .locals 6

    .line 3301
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_f

    .line 3302
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_f

    .line 3304
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3306
    instance-of v4, v3, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;

    if-eqz v4, :cond_0

    .line 3307
    move-object v4, v3

    check-cast v4, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;

    invoke-virtual {v4}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->setupColors()V

    goto/16 :goto_1

    .line 3308
    :cond_0
    instance-of v4, v3, Lcom/iMe/ui/custom/StakingPrognosisView;

    if-eqz v4, :cond_1

    .line 3309
    move-object v4, v3

    check-cast v4, Lcom/iMe/ui/custom/StakingPrognosisView;

    invoke-virtual {v4}, Lcom/iMe/ui/custom/StakingPrognosisView;->setupColors()V

    goto/16 :goto_1

    .line 3310
    :cond_1
    instance-of v4, v3, Lcom/iMe/ui/custom/StakingPercentageView;

    if-eqz v4, :cond_2

    .line 3311
    move-object v4, v3

    check-cast v4, Lcom/iMe/ui/custom/StakingPercentageView;

    invoke-virtual {v4}, Lcom/iMe/ui/custom/StakingPercentageView;->setupColors()V

    goto/16 :goto_1

    .line 3312
    :cond_2
    instance-of v4, v3, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;

    if-eqz v4, :cond_3

    .line 3313
    move-object v4, v3

    check-cast v4, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;

    invoke-virtual {v4}, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;->setupColors()V

    goto/16 :goto_1

    .line 3314
    :cond_3
    instance-of v4, v3, Lcom/iMe/ui/custom/StakingSafeWithdrawalView;

    if-eqz v4, :cond_4

    .line 3315
    move-object v4, v3

    check-cast v4, Lcom/iMe/ui/custom/StakingSafeWithdrawalView;

    invoke-virtual {v4}, Lcom/iMe/ui/custom/StakingSafeWithdrawalView;->setupColors()V

    goto/16 :goto_1

    .line 3316
    :cond_4
    instance-of v4, v3, Lcom/iMe/ui/custom/StakingWithdrawalFeeView;

    if-eqz v4, :cond_5

    .line 3317
    move-object v4, v3

    check-cast v4, Lcom/iMe/ui/custom/StakingWithdrawalFeeView;

    invoke-virtual {v4}, Lcom/iMe/ui/custom/StakingWithdrawalFeeView;->setupColors()V

    goto :goto_1

    .line 3318
    :cond_5
    instance-of v4, v3, Lcom/iMe/ui/custom/FeeView;

    if-eqz v4, :cond_6

    .line 3319
    move-object v4, v3

    check-cast v4, Lcom/iMe/ui/custom/FeeView;

    invoke-virtual {v4}, Lcom/iMe/ui/custom/FeeView;->setupColors()V

    goto :goto_1

    .line 3320
    :cond_6
    instance-of v4, v3, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;

    if-eqz v4, :cond_7

    .line 3321
    move-object v4, v3

    check-cast v4, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;

    invoke-virtual {v4}, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;->setupColors()V

    goto :goto_1

    .line 3322
    :cond_7
    instance-of v4, v3, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;

    if-eqz v4, :cond_8

    .line 3323
    move-object v4, v3

    check-cast v4, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;

    invoke-virtual {v4}, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;->setupColors()V

    goto :goto_1

    .line 3324
    :cond_8
    instance-of v4, v3, Lorg/telegram/ui/Components/LinkActionView;

    if-eqz v4, :cond_9

    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Components/LinkActionView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/LinkActionView;->getOptionsItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 3325
    invoke-direct {p0, v4}, Lorg/telegram/ui/ManageLinksActivity;->getInputOptionsMenuItems(Lorg/telegram/ui/Components/LinkActionView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/LinkActionView;->setOptionsItems(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 3326
    :cond_9
    instance-of v4, v3, Lcom/iMe/ui/custom/donation/DonationBalanceView;

    if-eqz v4, :cond_a

    .line 3327
    move-object v4, v3

    check-cast v4, Lcom/iMe/ui/custom/donation/DonationBalanceView;

    invoke-virtual {v4}, Lcom/iMe/ui/custom/donation/DonationBalanceView;->setupColors()V

    goto :goto_1

    .line 3328
    :cond_a
    instance-of v4, v3, Lcom/iMe/ui/custom/donation/DonationTransactionView;

    if-eqz v4, :cond_b

    .line 3329
    move-object v4, v3

    check-cast v4, Lcom/iMe/ui/custom/donation/DonationTransactionView;

    invoke-virtual {v4}, Lcom/iMe/ui/custom/donation/DonationTransactionView;->setupColors()V

    goto :goto_1

    .line 3330
    :cond_b
    instance-of v4, v3, Lcom/iMe/ui/custom/donation/DonationSeeMoreButton;

    if-eqz v4, :cond_c

    .line 3331
    move-object v4, v3

    check-cast v4, Lcom/iMe/ui/custom/donation/DonationSeeMoreButton;

    invoke-virtual {v4}, Lcom/iMe/ui/custom/donation/DonationSeeMoreButton;->setupColors()V

    goto :goto_1

    .line 3333
    :cond_c
    instance-of v4, v3, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz v4, :cond_d

    .line 3334
    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->update(I)V

    .line 3336
    :cond_d
    :goto_1
    instance-of v4, v3, Lorg/telegram/ui/Components/LinkActionView;

    if-eqz v4, :cond_e

    .line 3337
    check-cast v3, Lorg/telegram/ui/Components/LinkActionView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/LinkActionView;->updateColors()V

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 3341
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->inviteLinkBottomSheet:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    if-eqz v0, :cond_10

    .line 3342
    invoke-virtual {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->updateColors()V

    :cond_10
    return-void
.end method

.method private synthetic lambda$loadLinks$20(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 6

    const/4 v0, 0x0

    .line 1146
    iput-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksLoading:Z

    if-nez p1, :cond_2

    .line 1148
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_chatAdminsWithInvites;

    move p1, v0

    .line 1149
    :goto_0
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_chatAdminsWithInvites;->admins:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 1150
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_chatAdminsWithInvites;->admins:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;

    .line 1151
    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;->admin_id:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1152
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->admins:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 1155
    :goto_1
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_chatAdminsWithInvites;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 1156
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_chatAdminsWithInvites;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    .line 1157
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->users:Ljava/util/HashMap;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 1162
    iput-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsLoaded:Z

    .line 1164
    iput-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    .line 1173
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->resumeDelayedFragmentAnimation()V

    .line 1176
    iget-boolean p2, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lorg/telegram/ui/ManageLinksActivity;->loadRevoked:Z

    if-nez p2, :cond_3

    .line 1177
    iput-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    .line 1178
    iput-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->loadRevoked:Z

    .line 1179
    invoke-direct {p0, v0}, Lorg/telegram/ui/ManageLinksActivity;->loadLinks(Z)V

    .line 1181
    :cond_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->updateRows(Z)V

    return-void
.end method

.method private synthetic lambda$loadLinks$21(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    .line 1145
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadLinks$22(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1145
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadLinks$23(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 6

    .line 1228
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->saveListState()Lorg/telegram/ui/ManageLinksActivity$DiffCallback;

    move-result-object v0

    const/4 v1, 0x0

    .line 1229
    iput-boolean v1, p0, Lorg/telegram/ui/ManageLinksActivity;->linksLoading:Z

    .line 1230
    iput-boolean v1, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    if-eqz p1, :cond_0

    .line 1232
    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 1233
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_0

    .line 1234
    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    :cond_0
    const/4 p1, 0x1

    if-nez p2, :cond_b

    .line 1240
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;

    if-eqz p4, :cond_1

    move p2, v1

    .line 1243
    :goto_0
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_3

    .line 1244
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 1245
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ManageLinksActivity;->fixDate(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    .line 1246
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1249
    :cond_1
    iget-wide v2, p0, Lorg/telegram/ui/ManageLinksActivity;->adminId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    iget-wide v4, p2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long p2, v2, v4

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 1250
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iput-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 1251
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    move p2, v1

    .line 1253
    :goto_1
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_3

    .line 1254
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 1255
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ManageLinksActivity;->fixDate(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    .line 1256
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v1

    .line 1260
    :goto_2
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_4

    .line 1261
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->users:Ljava/util/HashMap;

    iget-object v3, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->users:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 1263
    :cond_4
    iget p2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    .line 1264
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 1265
    iput-boolean v1, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    goto :goto_5

    :cond_5
    if-eqz p4, :cond_7

    .line 1267
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, p1

    iget v3, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->count:I

    if-ge v2, v3, :cond_6

    move v2, p1

    goto :goto_3

    :cond_6
    move v2, v1

    :goto_3
    iput-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    goto :goto_5

    .line 1269
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, p1

    iget v3, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->count:I

    if-ge v2, v3, :cond_8

    move v2, p1

    goto :goto_4

    :cond_8
    move v2, v1

    :goto_4
    iput-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    .line 1271
    :goto_5
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    iget-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->isOpened:Z

    if-eqz v2, :cond_a

    .line 1272
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    if-eqz v2, :cond_9

    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    if-nez v3, :cond_9

    add-int/2addr p2, p1

    .line 1273
    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    :cond_9
    move p2, v1

    goto :goto_6

    :cond_a
    move p2, p1

    .line 1278
    :goto_6
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_c

    if-nez p4, :cond_c

    .line 1279
    iget p3, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->count:I

    iput p3, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    .line 1280
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p3

    iget-wide v2, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    iget-object p4, p0, Lorg/telegram/ui/ManageLinksActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget p4, p4, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    invoke-virtual {p3, v2, v3, p4}, Lorg/telegram/messenger/MessagesStorage;->saveChatLinksCount(JI)V

    goto :goto_7

    .line 1283
    :cond_b
    iput-boolean v1, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    move p2, v1

    .line 1287
    :cond_c
    :goto_7
    iget-boolean p3, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    if-nez p3, :cond_d

    iget-boolean p3, p0, Lorg/telegram/ui/ManageLinksActivity;->loadRevoked:Z

    if-nez p3, :cond_d

    iget-wide p3, p0, Lorg/telegram/ui/ManageLinksActivity;->adminId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long p3, p3, v2

    if-nez p3, :cond_d

    .line 1288
    iput-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    .line 1289
    iput-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->loadAdmins:Z

    goto :goto_8

    .line 1291
    :cond_d
    iget-boolean p3, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    if-nez p3, :cond_e

    iget-boolean p3, p0, Lorg/telegram/ui/ManageLinksActivity;->loadRevoked:Z

    if-nez p3, :cond_e

    .line 1292
    iput-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    .line 1293
    iput-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->loadRevoked:Z

    :goto_8
    move p3, p1

    goto :goto_9

    :cond_e
    move p3, v1

    .line 1297
    :goto_9
    iget-boolean p4, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    if-eqz p4, :cond_f

    iget-object p4, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr p4, v2

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->admins:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr p4, v2

    const/4 v2, 0x5

    if-lt p4, v2, :cond_10

    .line 1298
    :cond_f
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->resumeDelayedFragmentAnimation()V

    :cond_10
    if-eqz p3, :cond_11

    .line 1302
    invoke-direct {p0, v1}, Lorg/telegram/ui/ManageLinksActivity;->loadLinks(Z)V

    :cond_11
    if-eqz p2, :cond_12

    .line 1305
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    if-eqz p2, :cond_12

    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_12

    .line 1306
    invoke-direct {p0, v0}, Lorg/telegram/ui/ManageLinksActivity;->updateRecyclerViewAnimated(Lorg/telegram/ui/ManageLinksActivity$DiffCallback;)V

    goto :goto_a

    .line 1308
    :cond_12
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->updateRows(Z)V

    :goto_a
    return-void
.end method

.method private synthetic lambda$loadLinks$24(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 8

    .line 1227
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-instance v7, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda18;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadLinks$25(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    if-nez p4, :cond_1

    .line 1215
    move-object v0, p3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;

    .line 1216
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 1217
    :goto_0
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1218
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1219
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    move-object v2, p1

    .line 1227
    new-instance p1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda17;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p4

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResultFragment$9(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 628
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 629
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 630
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 632
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onSuccessValidation$5(Lorg/telegram/ui/Cells/CheckBoxCell;Landroid/view/View;)V
    .locals 1

    .line 497
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 498
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->sendPresenter:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    if-eqz p2, :cond_0

    .line 499
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->setAllowSendInformationToChat(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSuccessValidation$6(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 507
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->sendPresenter:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    if-eqz p1, :cond_0

    .line 508
    invoke-virtual {p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedAmount()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->send(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$openChooseContact$17(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V
    .locals 1

    .line 867
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 869
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->sendPresenter:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    if-eqz v0, :cond_1

    .line 870
    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->setSelectedUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 871
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->sendPresenter:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->setSelectedTwitterUserAvatarUrl(Ljava/lang/String;)V

    .line 872
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->sendPresenter:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1, p2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->setSelectedAddress(Ljava/lang/String;)V

    .line 873
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseContactRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$openChooseContact$18(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 878
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 880
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->binanceReceivePresenter:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    if-eqz p2, :cond_1

    .line 881
    invoke-virtual {p2, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->setSelectedUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 883
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseContactRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private synthetic lambda$openSelectToken$15(Lorg/telegram/ui/Components/LinkActionView;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 5

    .line 812
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->sendPresenter:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedAmount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 813
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->sendPresenter:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->resetStateIfNeed()V

    .line 815
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_common_token_name_with_ticker:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/LinkActionView;->setText(Ljava/lang/String;)V

    .line 816
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isWalletTransferType:Z

    if-eqz v0, :cond_1

    .line 817
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAvatarUrl()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-static {v0, p2, v1, v4}, Lcom/iMe/utils/helper/GlideHelper;->loadImageAsBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;Z)V

    goto :goto_0

    .line 818
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinanceReplenishType:Z

    if-eqz v0, :cond_2

    .line 819
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAvatarUrl()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-static {v0, p2, v1}, Lcom/iMe/utils/helper/GlideHelper;->loadBinanceImageAsBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    .line 821
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/ManageLinksActivity;->inputRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private synthetic lambda$openSelectToken$16(Lorg/telegram/ui/Components/LinkActionView;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 5

    .line 827
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_common_token_name_with_ticker:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/LinkActionView;->setText(Ljava/lang/String;)V

    .line 828
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAvatarUrl()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-static {v0, p2, v1}, Lcom/iMe/utils/helper/GlideHelper;->loadBinanceImageAsBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method private synthetic lambda$openTwitterSearchScreen$14(Lcom/iMe/model/twitter/TwitterUserItem;Ljava/lang/String;)V
    .locals 2

    .line 714
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->sendPresenter:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1}, Lcom/iMe/model/twitter/TwitterUserItem;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->setSelectedUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 716
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->sendPresenter:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1}, Lcom/iMe/model/twitter/TwitterUserItem;->getAvatarUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->setSelectedTwitterUserAvatarUrl(Ljava/lang/String;)V

    .line 717
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->sendPresenter:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    invoke-virtual {p1, p2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->setSelectedAddress(Ljava/lang/String;)V

    .line 718
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseContactRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private synthetic lambda$provideBinanceReceivePresenter$0()Lorg/koin/core/parameter/ParametersHolder;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 177
    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->screenType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->binancePayScreenArgs:Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/koin/core/parameter/ParametersHolderKt;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$provideDonationsPresenter$3()Lorg/koin/core/parameter/ParametersHolder;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 192
    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->screenType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/koin/core/parameter/ParametersHolderKt;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$provideSendPresenter$1()Lorg/koin/core/parameter/ParametersHolder;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 182
    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->screenType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->transferScreenArgs:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/koin/core/parameter/ParametersHolderKt;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$provideStakingCalculatorPresenter$4()Lorg/koin/core/parameter/ParametersHolder;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 197
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/koin/core/parameter/ParametersHolderKt;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$provideStakingTransactionPresenter$2()Lorg/koin/core/parameter/ParametersHolder;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 187
    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->screenType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->presetAmount:Ljava/lang/Double;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/koin/core/parameter/ParametersHolderKt;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$revokeLink$35(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 6

    if-nez p1, :cond_6

    .line 3029
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInviteReplaced;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 3030
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInviteReplaced;

    .line 3031
    iget-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->isPublic:Z

    if-nez p1, :cond_0

    .line 3032
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInviteReplaced;->new_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 3035
    :cond_0
    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    .line 3036
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->saveListState()Lorg/telegram/ui/ManageLinksActivity$DiffCallback;

    move-result-object p1

    .line 3037
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isPublic:Z

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lorg/telegram/ui/ManageLinksActivity;->adminId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 3038
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3039
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInviteReplaced;->new_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 3040
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v0, :cond_2

    .line 3041
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInviteReplaced;->new_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iput-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 3043
    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    invoke-virtual {p2, v1, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3044
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->updateRecyclerViewAnimated(Lorg/telegram/ui/ManageLinksActivity$DiffCallback;)V

    goto :goto_1

    .line 3046
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->linkEditActivityCallback:Lorg/telegram/ui/LinkEditActivity$Callback;

    invoke-interface {p1, p3, p2}, Lorg/telegram/ui/LinkEditActivity$Callback;->onLinkEdited(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;)V

    .line 3047
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_5

    .line 3048
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    sub-int/2addr p2, v0

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    if-gez p2, :cond_4

    .line 3050
    iput v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    .line 3052
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/messenger/MessagesStorage;->saveChatLinksCount(JI)V

    .line 3055
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 3056
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->linkbroken:I

    sget p3, Lorg/telegram/messenger/R$string;->InviteRevokedHint:I

    const-string v0, "InviteRevokedHint"

    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_6
    return-void
.end method

.method private synthetic lambda$revokeLink$36(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 3027
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$revokePermanent$31(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 1

    if-nez p1, :cond_3

    .line 2579
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iput-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 2580
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_0

    .line 2581
    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 2584
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-nez p3, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 2593
    iput-boolean p1, p3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    .line 2594
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->saveListState()Lorg/telegram/ui/ManageLinksActivity$DiffCallback;

    move-result-object p1

    .line 2595
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2596
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->updateRecyclerViewAnimated(Lorg/telegram/ui/ManageLinksActivity$DiffCallback;)V

    .line 2597
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->linkbroken:I

    sget p3, Lorg/telegram/messenger/R$string;->InviteRevokedHint:I

    const-string v0, "InviteRevokedHint"

    invoke-static {v0, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_3
    return-void
.end method

.method private synthetic lambda$revokePermanent$32(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 2577
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setupScreenState$7()V
    .locals 2

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->feeRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->inputRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 526
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->commentRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private static synthetic lambda$showCommonInfoAlert$19()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$showLevelRequiredDialog$8(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 1

    .line 557
    sget-object v0, Lcom/iMe/model/common/ScreenType;->FULLSCREEN:Lcom/iMe/model/common/ScreenType;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;->newInstance(Lcom/iMe/model/common/ScreenType;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private loadLinks(Z)V
    .locals 6

    .line 1141
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->loadAdmins:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsLoaded:Z

    if-nez v0, :cond_0

    .line 1142
    iput-boolean v1, p0, Lorg/telegram/ui/ManageLinksActivity;->linksLoading:Z

    .line 1143
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAdminsWithInvites;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getAdminsWithInvites;-><init>()V

    .line 1144
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    neg-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAdminsWithInvites;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1145
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda31;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    .line 1183
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto/16 :goto_3

    .line 1185
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;-><init>()V

    .line 1186
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    neg-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1187
    iget-wide v2, p0, Lorg/telegram/ui/ManageLinksActivity;->adminId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1188
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->admin_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    goto :goto_0

    .line 1190
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ManageLinksActivity;->adminId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->admin_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1193
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->loadRevoked:Z

    if-eqz v2, :cond_2

    .line 1195
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->revoked:Z

    .line 1196
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1197
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->flags:I

    .line 1198
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->offset_link:Ljava/lang/String;

    .line 1199
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->date:I

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->offset_date:I

    goto :goto_1

    .line 1202
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1203
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->flags:I

    .line 1204
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->offset_link:Ljava/lang/String;

    .line 1205
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->date:I

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->offset_date:I

    .line 1209
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/ManageLinksActivity;->linksLoading:Z

    .line 1210
    iget-boolean v3, p0, Lorg/telegram/ui/ManageLinksActivity;->isPublic:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 1211
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda35;

    invoke-direct {v5, p0, v3, v2}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Z)V

    invoke-virtual {v4, v0, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    .line 1312
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    :goto_3
    if-eqz p1, :cond_5

    .line 1315
    invoke-direct {p0, v1}, Lorg/telegram/ui/ManageLinksActivity;->updateRows(Z)V

    :cond_5
    return-void
.end method

.method public static newInstanceForBinancePay(Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;)Lorg/telegram/ui/ManageLinksActivity;
    .locals 2

    .line 274
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "binance_pay_args"

    .line 275
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 276
    sget p0, Lorg/telegram/ui/ManageLinksActivity;->BINANCE_PAY_CREATE_COLLECTION_SCREEN_TYPE:I

    const-string v1, "screen_type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    new-instance p0, Lorg/telegram/ui/ManageLinksActivity;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ManageLinksActivity;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static newInstanceForBinanceReplenish(Lcom/iMe/model/wallet/transfer/TransferScreenArgs;)Lorg/telegram/ui/ManageLinksActivity;
    .locals 2

    .line 302
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "wallet_transfer_args"

    .line 303
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 304
    sget p0, Lorg/telegram/ui/ManageLinksActivity;->BINANCE_REPLENISH_SCREEN_TYPE:I

    const-string v1, "screen_type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    new-instance p0, Lorg/telegram/ui/ManageLinksActivity;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ManageLinksActivity;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static newInstanceForDonationTransfer(Lcom/iMe/model/wallet/transfer/TransferScreenArgs;)Lorg/telegram/ui/ManageLinksActivity;
    .locals 2

    .line 288
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "wallet_transfer_args"

    .line 289
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 290
    sget p0, Lorg/telegram/ui/ManageLinksActivity;->WALLET_TRANSFER_DONATIONS_SCREEN_TYPE:I

    const-string v1, "screen_type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    new-instance p0, Lorg/telegram/ui/ManageLinksActivity;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ManageLinksActivity;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static newInstanceForDonations(J)Lorg/telegram/ui/ManageLinksActivity;
    .locals 7

    .line 295
    new-instance v6, Lorg/telegram/ui/ManageLinksActivity;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ManageLinksActivity;-><init>(JJI)V

    .line 296
    sget p0, Lorg/telegram/ui/ManageLinksActivity;->CHANNEL_ADMIN_DONATIONS:I

    iput p0, v6, Lorg/telegram/ui/ManageLinksActivity;->screenType:I

    const/4 p0, 0x1

    .line 297
    iput-boolean p0, v6, Lorg/telegram/ui/ManageLinksActivity;->isDonationsType:Z

    return-object v6
.end method

.method private static newInstanceForStaking(Lcom/iMe/model/staking/StakingDetailsItem;Ljava/lang/Double;I)Lorg/telegram/ui/ManageLinksActivity;
    .locals 2

    .line 325
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "staking_args"

    .line 326
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p1, :cond_0

    .line 328
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    const-string v1, "staking_preset_amount"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_0
    const-string p0, "screen_type"

    .line 330
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 331
    new-instance p0, Lorg/telegram/ui/ManageLinksActivity;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ManageLinksActivity;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static newInstanceForStakingCalculator(Lcom/iMe/model/staking/StakingDetailsItem;)Lorg/telegram/ui/ManageLinksActivity;
    .locals 2

    .line 321
    sget v0, Lorg/telegram/ui/ManageLinksActivity;->STAKING_CALCULATOR_SCREEN_TYPE:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForStaking(Lcom/iMe/model/staking/StakingDetailsItem;Ljava/lang/Double;I)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p0

    return-object p0
.end method

.method public static newInstanceForStakingProfit(Lcom/iMe/model/staking/StakingDetailsItem;)Lorg/telegram/ui/ManageLinksActivity;
    .locals 2

    .line 313
    sget v0, Lorg/telegram/ui/ManageLinksActivity;->STAKING_PROFIT_SCREEN_TYPE:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForStaking(Lcom/iMe/model/staking/StakingDetailsItem;Ljava/lang/Double;I)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p0

    return-object p0
.end method

.method public static newInstanceForStakingReplenish(Lcom/iMe/model/staking/StakingDetailsItem;Ljava/lang/Double;)Lorg/telegram/ui/ManageLinksActivity;
    .locals 1

    .line 309
    sget v0, Lorg/telegram/ui/ManageLinksActivity;->STAKING_REPLENISH_SCREEN_TYPE:I

    invoke-static {p0, p1, v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForStaking(Lcom/iMe/model/staking/StakingDetailsItem;Ljava/lang/Double;I)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p0

    return-object p0
.end method

.method public static newInstanceForStakingWithdraw(Lcom/iMe/model/staking/StakingDetailsItem;)Lorg/telegram/ui/ManageLinksActivity;
    .locals 2

    .line 317
    sget v0, Lorg/telegram/ui/ManageLinksActivity;->STAKING_WITHDRAW_SCREEN_TYPE:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForStaking(Lcom/iMe/model/staking/StakingDetailsItem;Ljava/lang/Double;I)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p0

    return-object p0
.end method

.method public static newInstanceForType(I)Lorg/telegram/ui/ManageLinksActivity;
    .locals 2

    .line 268
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "screen_type"

    .line 269
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 270
    new-instance p0, Lorg/telegram/ui/ManageLinksActivity;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ManageLinksActivity;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static newInstanceForWalletTransfer(Lcom/iMe/model/wallet/transfer/TransferScreenArgs;)Lorg/telegram/ui/ManageLinksActivity;
    .locals 2

    .line 281
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "wallet_transfer_args"

    .line 282
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 283
    sget p0, Lorg/telegram/ui/ManageLinksActivity;->WALLET_TRANSFER_SCREEN_TYPE:I

    const-string v1, "screen_type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    new-instance p0, Lorg/telegram/ui/ManageLinksActivity;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ManageLinksActivity;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private openAddAdminScreen()V
    .locals 14

    .line 760
    new-instance v13, Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Wallet;->getWalletBotId()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/ChatRightsEditActivity;-><init>(JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;)V

    .line 761
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ManageLinksActivity$3;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    invoke-virtual {v13, v0}, Lorg/telegram/ui/ChatRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;)V

    .line 779
    invoke-virtual {p0, v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private openChooseContact()V
    .locals 4

    .line 841
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinanceReplenishType:Z

    if-eqz v0, :cond_2

    .line 842
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->sendPresenter:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    if-eqz v0, :cond_1

    .line 843
    invoke-virtual {v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->binance_replenish_token_choose_token_first_error:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 845
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->binance_replenish_token_choose_token_cant_change_error:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 843
    :goto_0
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ContextExtKt;->toast(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    .line 851
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "destroyAfterSelect"

    const/4 v2, 0x1

    .line 852
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "returnAsResult"

    .line 853
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "allowSelf"

    const/4 v3, 0x0

    .line 854
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "allowBots"

    .line 855
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 856
    iget-boolean v1, p0, Lorg/telegram/ui/ManageLinksActivity;->isWalletTransferType:Z

    if-eqz v1, :cond_3

    const-string v1, "is_choose_wallet_transfer_recipient"

    .line 857
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 858
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->sendPresenter:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    if-eqz v1, :cond_4

    .line 859
    invoke-virtual {v1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "network_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 861
    :cond_3
    iget-boolean v1, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinancePayCreateCollectionType:Z

    if-eqz v1, :cond_4

    const-string v1, "onlyUsers"

    .line 862
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 864
    :cond_4
    :goto_1
    new-instance v1, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    .line 865
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isWalletTransferType:Z

    if-eqz v0, :cond_5

    .line 866
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ContactsActivity;->setUserWithCryptoAddressDelegate(Lcom/iMe/fork/utils/Callbacks$Callback2;)V

    goto :goto_2

    .line 876
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinancePayCreateCollectionType:Z

    if-eqz v0, :cond_6

    .line 877
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ContactsActivity;->setDelegate(Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;)V

    .line 887
    :cond_6
    :goto_2
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private openDonationAddressOnScanner()V
    .locals 2

    .line 835
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->getCurrentDonationsAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 836
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private openScanQrCodeScreen()V
    .locals 3

    .line 688
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 692
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->showCameraScanner()V

    return-void
.end method

.method private openSelectToken(Lorg/telegram/ui/Components/LinkActionView;)V
    .locals 2

    .line 809
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isWalletTransferType:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinanceReplenishType:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 824
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinancePayCreateCollectionType:Z

    if-eqz v0, :cond_2

    .line 825
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->binanceReceivePresenter:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    if-eqz v0, :cond_2

    .line 826
    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->startSelectTokenFlow(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    goto :goto_1

    .line 810
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->sendPresenter:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    if-eqz v0, :cond_2

    .line 811
    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->startSelectTokenFlow(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private openTwitterSearchScreen()V
    .locals 2

    .line 709
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->sendPresenter:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {v0}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->getSelectedNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    .line 711
    invoke-static {v0, v1}, Lcom/iMe/feature/twitter/search/TwitterSearchFragment;->newInstance(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/fork/utils/Callbacks$Callback2;)Lcom/iMe/feature/twitter/search/TwitterSearchFragment;

    move-result-object v0

    .line 710
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_0
    return-void
.end method

.method private removeDefaultRows()V
    .locals 1

    const/4 v0, -0x1

    .line 783
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->permanentLinkRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->permanentLinkHeaderRow:I

    .line 784
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    return-void
.end method

.method private revokePermanent()V
    .locals 4

    .line 2570
    iget-wide v0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2571
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;-><init>()V

    .line 2572
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/4 v1, 0x1

    .line 2573
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->legacy_revoke_permanent:Z

    .line 2574
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    const/4 v2, 0x0

    .line 2575
    iput-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 2576
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 2577
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda32;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    .line 2601
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 2602
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    .line 2604
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ManageLinksActivity;->revokeLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    :goto_0
    return-void
.end method

.method private saveDonationsAddress(Ljava/lang/String;)V
    .locals 1

    .line 795
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 796
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    if-eqz v0, :cond_0

    .line 797
    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->linkAddress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private saveListState()Lorg/telegram/ui/ManageLinksActivity$DiffCallback;
    .locals 3

    .line 3255
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/ManageLinksActivity$1;)V

    .line 3256
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldPositionToItem:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->fillPositions(Landroid/util/SparseIntArray;)V

    .line 3258
    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsStartRow:I

    iput v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldDonationTransactionsStartRow:I

    .line 3259
    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsEndRow:I

    iput v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldDonationTransactionsEndRow:I

    .line 3260
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldDonationsTransactions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3261
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldDonationsTransactions:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsTransactions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3263
    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->linksStartRow:I

    iput v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldLinksStartRow:I

    .line 3264
    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->linksEndRow:I

    iput v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldLinksEndRow:I

    .line 3265
    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedLinksStartRow:I

    iput v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldRevokedLinksStartRow:I

    .line 3266
    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedLinksEndRow:I

    iput v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldRevokedLinksEndRow:I

    .line 3267
    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsStartRow:I

    iput v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldAdminsStartRow:I

    .line 3268
    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsEndRow:I

    iput v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldAdminsEndRow:I

    .line 3269
    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldRowCount:I

    .line 3270
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldLinks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3271
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldLinks:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3273
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldRevokedLinks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3274
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldRevokedLinks:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private setupStakingReplenishmentInfoMenu()V
    .locals 5

    .line 903
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    sget v1, Lcom/iMe/common/IdFabric$Menu;->OPTIONS:I

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    .line 904
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v2, "AccDescrMoreOptions"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 905
    sget v1, Lcom/iMe/common/IdFabric$Menu;->STAKING_CONTRACT:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_web_26:I

    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    .line 908
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->staking_details_contract_action:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 905
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 910
    sget v1, Lcom/iMe/common/IdFabric$Menu;->STAKING_CONDITIONS:I

    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_description_26:I

    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    .line 913
    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->staking_deposit_conditions:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 910
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    return-void
.end method

.method private showCameraScanner()V
    .locals 2

    .line 696
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ManageLinksActivity$1;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    const/4 v1, 0x1

    invoke-static {p0, v1, v1, v0, v1}, Lorg/telegram/ui/CameraScanActivity;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Z)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private showCommonInfoAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 891
    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    const-string v1, "OK"

    .line 896
    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda15;->INSTANCE:Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda15;

    .line 892
    invoke-static {p0, p1, p2, v0, v1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createInfoBottomSheetDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    .line 891
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private showDonationAddressQrCode()V
    .locals 9

    .line 726
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->getCurrentDonationsAddress()Ljava/lang/String;

    move-result-object v0

    .line 727
    new-instance v8, Lorg/telegram/ui/ManageLinksActivity$2;

    .line 728
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v5, v0

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ManageLinksActivity$2;-><init>(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 744
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    .line 745
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_receive_dialog_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    .line 746
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_receive_dialog_btn_text:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 744
    invoke-virtual {v8, v1, v2, v0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->setupWalletTypeReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-virtual {p0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private transferAmount(Ljava/lang/String;)V
    .locals 1

    .line 802
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 803
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->sendPresenter:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->validateSend(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateRecyclerViewAnimated(Lorg/telegram/ui/ManageLinksActivity$DiffCallback;)V
    .locals 1

    .line 3119
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3123
    invoke-direct {p0, v0}, Lorg/telegram/ui/ManageLinksActivity;->updateRows(Z)V

    .line 3124
    iget-object v0, p1, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->newPositionToItem:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->fillPositions(Landroid/util/SparseIntArray;)V

    .line 3125
    invoke-static {p1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3126
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 3120
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->updateRows(Z)V

    return-void
.end method

.method private updateRows(Z)V
    .locals 6

    .line 1320
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1322
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->isForkScreenType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1323
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 1327
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseRecipientOptionsRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingPrognosisRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingSelectProgrammeHeaderRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingWithdrawalFeeRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingSafeWithdrawalRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingActionsRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingInfoRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsSeeMoreRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsDividerRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationBalanceRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationBalanceHeaderRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsEndRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsStartRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsHeaderRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->informationRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->feeRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->commentRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->commentHeaderRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->inputRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->inputHeaderRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->selectTokenRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->selectTokenHeaderRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseContactRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseContactHeaderRow:I

    .line 1328
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->creatorRow:I

    .line 1329
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->creatorDividerRow:I

    .line 1330
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksStartRow:I

    .line 1331
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksEndRow:I

    .line 1332
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksLoadingRow:I

    .line 1333
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedLinksStartRow:I

    .line 1334
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedLinksEndRow:I

    .line 1335
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedHeader:I

    .line 1336
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedDivider:I

    .line 1337
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->lastDivider:I

    .line 1338
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokeAllRow:I

    .line 1339
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokeAllDivider:I

    .line 1340
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->createLinkHelpRow:I

    .line 1341
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->helpRow:I

    .line 1342
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->createNewLinkRow:I

    .line 1343
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsEndRow:I

    .line 1344
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsStartRow:I

    .line 1345
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsDividerRow:I

    .line 1346
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsHeaderRow:I

    .line 1347
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksHeaderRow:I

    .line 1348
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->dividerRow:I

    const/4 v1, 0x0

    .line 1350
    iput v1, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    .line 1352
    iget-wide v2, p0, Lorg/telegram/ui/ManageLinksActivity;->adminId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 1354
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->creatorRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1355
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->creatorDividerRow:I

    goto :goto_0

    .line 1357
    :cond_2
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->helpRow:I

    .line 1360
    :goto_0
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->permanentLinkHeaderRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1361
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->permanentLinkRow:I

    .line 1364
    iget-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingCalculatorType:Z

    if-eqz v2, :cond_4

    .line 1365
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->removeDefaultRows()V

    .line 1366
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingSelectProgrammeHeaderRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1367
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->selectTokenRow:I

    add-int/lit8 v3, v2, 0x1

    .line 1368
    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->inputHeaderRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1369
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->inputRow:I

    .line 1370
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingCalculatorPresenter:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    if-eqz v2, :cond_11

    .line 1371
    invoke-virtual {v2}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getSelectedStakingProgramme()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1372
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingInfoRow:I

    .line 1374
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingCalculatorPresenter:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    invoke-virtual {v2}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getChartViewData()Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 1375
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->dividerRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1376
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingPrognosisRow:I

    goto/16 :goto_4

    .line 1379
    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->isStakingTransactionScreenType()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1380
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->removeDefaultRows()V

    .line 1381
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->inputHeaderRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1382
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->inputRow:I

    .line 1383
    iget-boolean v3, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingDepositType:Z

    if-eqz v3, :cond_5

    add-int/lit8 v3, v2, 0x1

    .line 1384
    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingInfoRow:I

    goto :goto_1

    .line 1385
    :cond_5
    iget-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingWithdrawType:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingTransactionPresenter:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->isSafeWithdrawalVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1386
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingSafeWithdrawalRow:I

    .line 1388
    :cond_6
    :goto_1
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingActionsRow:I

    .line 1389
    iget-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingWithdrawType:Z

    if-eqz v2, :cond_7

    add-int/lit8 v2, v3, 0x1

    .line 1390
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingWithdrawalFeeRow:I

    .line 1392
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingTransactionPresenter:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->getFeeType()Lcom/iMe/ui/custom/FeeView$ChooseFeeType;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 1393
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->feeRow:I

    goto/16 :goto_4

    .line 1395
    :cond_8
    iget-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinancePayCreateCollectionType:Z

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->isWalletTransferType:Z

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinanceReplenishType:Z

    if-nez v2, :cond_d

    iget-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->isDonationsTransferType:Z

    if-eqz v2, :cond_9

    goto/16 :goto_2

    .line 1418
    :cond_9
    iget-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->isDonationsType:Z

    if-eqz v2, :cond_c

    .line 1419
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->removeDefaultRows()V

    .line 1420
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->inputHeaderRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1421
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->inputRow:I

    add-int/lit8 v3, v2, 0x1

    .line 1422
    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->informationRow:I

    .line 1423
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->getDonationBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 1424
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationBalanceHeaderRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1425
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->donationBalanceRow:I

    add-int/lit8 v3, v2, 0x1

    .line 1426
    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsDividerRow:I

    .line 1428
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsTransactions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1429
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsHeaderRow:I

    .line 1430
    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsStartRow:I

    .line 1431
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsTransactions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    .line 1432
    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsEndRow:I

    .line 1433
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsTransactions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_b

    .line 1434
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsSeeMoreRow:I

    .line 1437
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->isLoadingDonationInformation()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1438
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->linksLoadingRow:I

    goto/16 :goto_4

    .line 1441
    :cond_c
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseRecipientOptionsRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->feeRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->commentRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->commentHeaderRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->inputRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->inputHeaderRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->selectTokenRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->selectTokenHeaderRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseContactRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseContactHeaderRow:I

    goto/16 :goto_4

    .line 1396
    :cond_d
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->removeDefaultRows()V

    .line 1397
    iget-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinanceReplenishType:Z

    if-eqz v2, :cond_e

    .line 1398
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->selectTokenHeaderRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1399
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->selectTokenRow:I

    add-int/lit8 v3, v2, 0x1

    .line 1400
    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseContactHeaderRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1401
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseContactRow:I

    goto :goto_3

    .line 1403
    :cond_e
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseContactHeaderRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1404
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseContactRow:I

    .line 1405
    iget-boolean v3, p0, Lorg/telegram/ui/ManageLinksActivity;->isWalletTransferType:Z

    if-eqz v3, :cond_f

    add-int/lit8 v4, v2, 0x1

    .line 1406
    iput v4, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseRecipientOptionsRow:I

    .line 1408
    :cond_f
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->selectTokenHeaderRow:I

    add-int/lit8 v2, v4, 0x1

    .line 1409
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v4, p0, Lorg/telegram/ui/ManageLinksActivity;->selectTokenRow:I

    if-eqz v3, :cond_10

    .line 1410
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->sendPresenter:Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;->isCommentAvailable()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1411
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->commentHeaderRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1412
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->commentRow:I

    .line 1415
    :cond_10
    :goto_3
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->inputHeaderRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1416
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->inputRow:I

    add-int/lit8 v3, v2, 0x1

    .line 1417
    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->feeRow:I

    .line 1445
    :cond_11
    :goto_4
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->isForkScreenType()Z

    move-result v2

    if-nez v2, :cond_13

    if-nez v1, :cond_12

    .line 1447
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->dividerRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1448
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->createNewLinkRow:I

    goto :goto_5

    .line 1449
    :cond_12
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1450
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->dividerRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1451
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->linksHeaderRow:I

    .line 1454
    :cond_13
    :goto_5
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1455
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->linksStartRow:I

    .line 1456
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    .line 1457
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->linksEndRow:I

    .line 1461
    :cond_14
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->isForkScreenType()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1462
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->createLinkHelpRow:I

    goto :goto_6

    :cond_15
    if-nez v1, :cond_17

    .line 1464
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->createNewLinkRow:I

    if-ltz v2, :cond_17

    iget-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->linksLoading:Z

    if-eqz v2, :cond_16

    iget-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->loadAdmins:Z

    if-nez v2, :cond_16

    iget-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->loadRevoked:Z

    if-eqz v2, :cond_17

    .line 1465
    :cond_16
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->createLinkHelpRow:I

    :cond_17
    :goto_6
    if-nez v1, :cond_1a

    .line 1468
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->admins:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1a

    .line 1469
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->createNewLinkRow:I

    if-ltz v2, :cond_19

    :cond_18
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->createLinkHelpRow:I

    if-ne v2, v0, :cond_19

    .line 1470
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsDividerRow:I

    .line 1472
    :cond_19
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsHeaderRow:I

    .line 1473
    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsStartRow:I

    .line 1474
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->admins:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    .line 1475
    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsEndRow:I

    .line 1478
    :cond_1a
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1479
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsStartRow:I

    if-ltz v2, :cond_1b

    .line 1480
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedDivider:I

    goto :goto_7

    .line 1481
    :cond_1b
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->createNewLinkRow:I

    if-ltz v2, :cond_1d

    :cond_1c
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->createLinkHelpRow:I

    if-ne v2, v0, :cond_1d

    .line 1482
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedDivider:I

    goto :goto_7

    :cond_1d
    if-eqz v1, :cond_1e

    .line 1483
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->linksStartRow:I

    if-ne v2, v0, :cond_1e

    .line 1484
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedDivider:I

    .line 1486
    :cond_1e
    :goto_7
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedHeader:I

    .line 1487
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedLinksStartRow:I

    .line 1488
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    .line 1489
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedLinksEndRow:I

    add-int/lit8 v0, v2, 0x1

    .line 1490
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->revokeAllDivider:I

    add-int/lit8 v2, v0, 0x1

    .line 1491
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokeAllRow:I

    .line 1494
    :cond_1f
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->loadAdmins:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->loadRevoked:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksLoading:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    if-eqz v0, :cond_21

    :cond_20
    if-nez v1, :cond_21

    .line 1495
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksLoadingRow:I

    .line 1498
    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 1499
    :cond_22
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->lastDivider:I

    .line 1502
    :cond_23
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    if-eqz v0, :cond_24

    if-eqz p1, :cond_24

    .line 1503
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_24
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    .line 1509
    invoke-super {p0, p1}, Lcom/iMe/ui/base/mvp/MvpFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 1510
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 1511
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 1513
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingCalculatorType:Z

    if-eqz v0, :cond_0

    .line 1514
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->staking_calculator_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1515
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    sget v2, Lcom/iMe/common/IdFabric$Menu;->STAKING_HELP:I

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_info:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    goto/16 :goto_0

    .line 1516
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingDepositType:Z

    if-eqz v0, :cond_1

    .line 1517
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->staking_replenishment_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1518
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->setupStakingReplenishmentInfoMenu()V

    goto/16 :goto_0

    .line 1519
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingProfitType:Z

    if-eqz v0, :cond_2

    .line 1520
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->staking_profit_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1521
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    sget v2, Lcom/iMe/common/IdFabric$Menu;->STAKING_HELP:I

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_info:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    goto/16 :goto_0

    .line 1522
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingWithdrawType:Z

    if-eqz v0, :cond_3

    .line 1523
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->staking_withdraw_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1524
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    sget v2, Lcom/iMe/common/IdFabric$Menu;->STAKING_HELP:I

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_info:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    goto/16 :goto_0

    .line 1525
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinancePayCreateCollectionType:Z

    if-eqz v0, :cond_4

    .line 1526
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_binance_pay_action_receive:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1527
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isWalletTransferType:Z

    if-eqz v0, :cond_5

    .line 1528
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->profile_user_id_action_transfer:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1529
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinanceReplenishType:Z

    if-eqz v0, :cond_6

    .line 1530
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->binance_replenish_token_toolbar_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1531
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isDonationsType:Z

    if-eqz v0, :cond_7

    .line 1532
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->channel_donations_toolbar_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1533
    :cond_7
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isDonationsTransferType:Z

    if-eqz v0, :cond_8

    .line 1534
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->transfer_donations_toolbar_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1536
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->InviteLinks:I

    const-string v3, "InviteLinks"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1537
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ManageLinksActivity$5;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 1569
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity$6;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$6;-><init>(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 1582
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1583
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1584
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1587
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->isForkScreenType()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1588
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 1589
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 1593
    :cond_9
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1594
    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$7;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v1, v3}, Lorg/telegram/ui/ManageLinksActivity$7;-><init>(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/Context;IZ)V

    .line 1600
    iget-object v4, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1601
    iget-object v4, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;-><init>(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1602
    iget-object v4, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/ManageLinksActivity$8;

    invoke-direct {v5, p0, v2}, Lorg/telegram/ui/ManageLinksActivity$8;-><init>(Lorg/telegram/ui/ManageLinksActivity;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1614
    new-instance v2, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget-object v4, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, v4, v3}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    iput-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    .line 1615
    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 1616
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 1617
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 1618
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1619
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_a

    move v3, v1

    goto :goto_1

    :cond_a
    const/4 v3, 0x2

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVerticalScrollbarPosition(I)V

    .line 1620
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, -0x1

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1622
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda37;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1696
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda38;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1706
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_link_1:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->linkIcon:Landroid/graphics/drawable/Drawable;

    .line 1707
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_link_2:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->linkIconRevoked:Landroid/graphics/drawable/Drawable;

    .line 1708
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->linkIcon:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1709
    invoke-direct {p0, v1}, Lorg/telegram/ui/ManageLinksActivity;->updateRows(Z)V

    .line 1711
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result p1

    int-to-long v0, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/ManageLinksActivity;->timeDif:J

    .line 1712
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public deleteLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 4

    .line 3005
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteExportedChatInvite;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteExportedChatInvite;-><init>()V

    .line 3006
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteExportedChatInvite;->link:Ljava/lang/String;

    .line 3007
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteExportedChatInvite;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3008
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda34;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 340
    sget p3, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    if-ne p1, p3, :cond_0

    .line 341
    iget-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->isDonationsType:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    if-eqz p1, :cond_0

    .line 342
    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result p1

    .line 343
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {p2, p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->checkLoadedDataOnConnectionChanged(I)V

    :cond_0
    return-void
.end method

.method public editLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 4

    .line 3016
    new-instance v0, Lorg/telegram/ui/LinkEditActivity;

    iget-wide v1, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lorg/telegram/ui/LinkEditActivity;-><init>(IJ)V

    .line 3017
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->linkEditActivityCallback:Lorg/telegram/ui/LinkEditActivity$Callback;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LinkEditActivity;->setCallback(Lorg/telegram/ui/LinkEditActivity$Callback;)V

    .line 3018
    invoke-virtual {v0, p1}, Lorg/telegram/ui/LinkEditActivity;->setInviteToEdit(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    .line 3019
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public fixDate(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 4

    .line 3280
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expire_date:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 3281
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expire_date:I

    if-lt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expired:Z

    goto :goto_2

    .line 3282
    :cond_1
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    if-lez v0, :cond_3

    .line 3283
    iget v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage:I

    if-lt v3, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iput-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expired:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3291
    new-instance v11, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    const/4 v12, 0x1

    new-array v5, v12, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v13, 0x0

    aput-object v2, v5, v13

    const-string v2, "textView2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v11

    move/from16 v10, v22

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3292
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lcom/iMe/ui/custom/FeeView;

    aput-object v4, v3, v13

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    move/from16 v21, v4

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3293
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lcom/iMe/ui/custom/StakingPercentageView;

    aput-object v6, v5, v13

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v5

    move/from16 v30, v4

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3294
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lcom/iMe/ui/custom/StakingTransactionActionButtonsView;

    aput-object v6, v5, v13

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3295
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lcom/iMe/ui/custom/StakingSafeWithdrawalView;

    aput-object v6, v5, v13

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3296
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lcom/iMe/ui/custom/StakingWithdrawalFeeView;

    aput-object v6, v5, v13

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3297
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;

    aput-object v6, v5, v13

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3300
    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda36;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    .line 3346
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v7, v6, v13

    const-class v7, Lorg/telegram/ui/Cells/CreationTextCell;

    aput-object v7, v6, v12

    const/4 v7, 0x2

    const-class v8, Lorg/telegram/ui/Components/LinkActionView;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-class v8, Lorg/telegram/ui/ManageLinksActivity$LinkCell;

    aput-object v8, v6, v7

    move-object/from16 v23, v3

    move-object/from16 v24, v5

    move-object/from16 v26, v6

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3347
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v16, v5, v6

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v17, 0x0

    move-object v14, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3348
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    or-int v25, v6, v7

    const/16 v26, 0x0

    move-object/from16 v23, v3

    move-object/from16 v24, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3350
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    move-object v14, v3

    move/from16 v21, v11

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3351
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3352
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object v14, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3353
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3354
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v14, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3356
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3358
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v13

    sget-object v18, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v16, 0x0

    move-object v14, v3

    move-object/from16 v17, v4

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3360
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v5, v13

    sget v30, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3361
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v6, v5, v13

    const-string v6, "textView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v35

    sget v39, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    const/16 v33, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v31, v3

    move-object/from16 v32, v4

    move-object/from16 v34, v5

    invoke-direct/range {v31 .. v39}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3363
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v7, v5, v13

    const-string v7, "nameTextView"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v27

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/16 v25, 0x0

    const/16 v30, 0x0

    move-object/from16 v23, v3

    move-object/from16 v24, v4

    move-object/from16 v26, v5

    move/from16 v31, v7

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3364
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v8, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v8, v5, v13

    const-string v8, "statusColor"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v34

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/16 v32, 0x0

    const/16 v35, 0x0

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move-object/from16 v33, v5

    move-object/from16 v37, v2

    move/from16 v38, v8

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3365
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v9, v5, v13

    const-string v9, "statusOnlineColor"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v34

    sget v38, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move-object/from16 v33, v5

    invoke-direct/range {v30 .. v38}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3366
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v5, v4, v13

    sget-object v19, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    const/16 v18, 0x0

    move-object v14, v3

    move-object/from16 v17, v4

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3367
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundRed:I

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object v14, v3

    move-object/from16 v20, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3368
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    move-object v14, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3369
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    move-object v14, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3370
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    move-object v14, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3371
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    move-object v14, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3372
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    move-object v14, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3373
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    move-object v14, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3375
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/ManageLinksActivity$HintInnerCell;

    aput-object v4, v3, v13

    const-string v4, "messageTextView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3377
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v30, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v5, v4, v13

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v31, v4

    move/from16 v36, v7

    invoke-direct/range {v28 .. v36}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3378
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v4, v3, v13

    const-string v4, "imageView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_chats_unreadCounterMuted:I

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3379
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v9, v5, v13

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3380
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v5, v3, v13

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3382
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/CreationTextCell;

    aput-object v9, v5, v13

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText2:I

    const/16 v25, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3383
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/CreationTextCell;

    aput-object v5, v3, v13

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3384
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/CreationTextCell;

    aput-object v9, v5, v13

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v27

    sget v31, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3385
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v4, v3, v13

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v16, 0x0

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3387
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ManageLinksActivity$LinkCell;

    aput-object v5, v4, v13

    const-string v5, "titleView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v32

    const/16 v30, 0x0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v31, v4

    invoke-direct/range {v28 .. v36}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3388
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v12, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/ManageLinksActivity$LinkCell;

    aput-object v5, v4, v13

    const-string v5, "subtitleView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v4

    move/from16 v31, v8

    invoke-direct/range {v23 .. v31}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3389
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/ManageLinksActivity$LinkCell;

    aput-object v4, v3, v13

    const-string v4, "optionsView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v18

    sget v22, Lorg/telegram/ui/ActionBar/Theme;->key_stickers_menu:I

    move-object v14, v2

    move-object/from16 v17, v3

    invoke-direct/range {v14 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public needDelayOpenAnimation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDonationsAddressLoaded(Ljava/lang/String;)V
    .locals 1

    .line 593
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->inputRow:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public onDonationsTransactionsLoaded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/transaction/TransactionItem;",
            ">;)V"
        }
    .end annotation

    .line 598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsTransactions:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 599
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->updateRows(Z)V

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 5

    .line 355
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    const/4 v1, -0x1

    const-string v2, "screen_type"

    .line 356
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->screenType:I

    .line 357
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v1, "wallet_transfer_args"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    .line 358
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v2, "binance_pay_args"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    .line 359
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "staking_args"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/iMe/model/staking/StakingDetailsItem;

    .line 360
    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v4, "staking_preset_amount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->presetAmount:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 362
    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->transferScreenArgs:Lcom/iMe/model/wallet/transfer/TransferScreenArgs;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 364
    iput-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->binancePayScreenArgs:Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 366
    iput-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    .line 368
    :cond_2
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->screenType:I

    sget v1, Lorg/telegram/ui/ManageLinksActivity;->BINANCE_PAY_CREATE_COLLECTION_SCREEN_TYPE:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinancePayCreateCollectionType:Z

    .line 369
    sget v1, Lorg/telegram/ui/ManageLinksActivity;->WALLET_TRANSFER_SCREEN_TYPE:I

    if-ne v0, v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lorg/telegram/ui/ManageLinksActivity;->isWalletTransferType:Z

    .line 370
    sget v1, Lorg/telegram/ui/ManageLinksActivity;->BINANCE_REPLENISH_SCREEN_TYPE:I

    if-ne v0, v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v3

    :goto_3
    iput-boolean v1, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinanceReplenishType:Z

    .line 371
    sget v1, Lorg/telegram/ui/ManageLinksActivity;->WALLET_TRANSFER_DONATIONS_SCREEN_TYPE:I

    if-ne v0, v1, :cond_6

    move v1, v2

    goto :goto_4

    :cond_6
    move v1, v3

    :goto_4
    iput-boolean v1, p0, Lorg/telegram/ui/ManageLinksActivity;->isDonationsTransferType:Z

    .line 372
    sget v1, Lorg/telegram/ui/ManageLinksActivity;->STAKING_REPLENISH_SCREEN_TYPE:I

    if-ne v0, v1, :cond_7

    move v1, v2

    goto :goto_5

    :cond_7
    move v1, v3

    :goto_5
    iput-boolean v1, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingDepositType:Z

    .line 373
    sget v1, Lorg/telegram/ui/ManageLinksActivity;->STAKING_PROFIT_SCREEN_TYPE:I

    if-ne v0, v1, :cond_8

    move v1, v2

    goto :goto_6

    :cond_8
    move v1, v3

    :goto_6
    iput-boolean v1, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingProfitType:Z

    .line 374
    sget v1, Lorg/telegram/ui/ManageLinksActivity;->STAKING_WITHDRAW_SCREEN_TYPE:I

    if-ne v0, v1, :cond_9

    move v1, v2

    goto :goto_7

    :cond_9
    move v1, v3

    :goto_7
    iput-boolean v1, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingWithdrawType:Z

    .line 375
    sget v1, Lorg/telegram/ui/ManageLinksActivity;->STAKING_CALCULATOR_SCREEN_TYPE:I

    if-ne v0, v1, :cond_a

    goto :goto_8

    :cond_a
    move v2, v3

    :goto_8
    iput-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingCalculatorType:Z

    .line 377
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 378
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 383
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 384
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onRequestPermissionsResultFragment(I[Ljava/lang/String;[I)V
    .locals 0

    const/16 p2, 0x22

    if-ne p1, p2, :cond_1

    .line 620
    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 621
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->showCameraScanner()V

    goto :goto_0

    .line 623
    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 624
    sget p2, Lorg/telegram/messenger/R$string;->AppName:I

    const-string p3, "AppName"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 625
    sget p2, Lorg/telegram/messenger/R$string;->QRCodePermissionNoCameraWithHint:I

    const-string p3, "QRCodePermissionNoCameraWithHint"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 626
    sget p2, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    const-string p3, "PermissionOpenSettings"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 635
    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    const-string p3, "OK"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 636
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1727
    invoke-super {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->onResume()V

    .line 1728
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 1729
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onSuccessValidation(Lcom/iMe/model/dialog/DialogModel;Z)V
    .locals 6

    .line 484
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 485
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 487
    invoke-virtual {p1}, Lcom/iMe/model/dialog/DialogModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 488
    invoke-virtual {p1}, Lcom/iMe/model/dialog/DialogModel;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    if-eqz p2, :cond_2

    .line 491
    new-instance p2, Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p2, v1, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 492
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 493
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Cells/CheckBoxCell;->setMultiline(Z)V

    .line 494
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_amount_send_message_checkbox_title:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {p2, v3, v4, v2, v1}, Lorg/telegram/ui/Cells/CheckBoxCell;->setText(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 495
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/16 v3, 0x10

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    :goto_0
    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    :goto_1
    invoke-virtual {p2, v2, v1, v3, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 496
    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Cells/CheckBoxCell;)V

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0xc

    .line 502
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setCustomViewOffset(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 503
    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 506
    :cond_2
    invoke-virtual {p1}, Lcom/iMe/model/dialog/DialogModel;->getPositiveButtonText()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 511
    invoke-virtual {p1}, Lcom/iMe/model/dialog/DialogModel;->getNegativeButtonText()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 513
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    .line 3402
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3404
    iput-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->isOpened:Z

    if-eqz p2, :cond_0

    .line 3405
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->inviteLinkBottomSheet:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    if-eqz p1, :cond_0

    iget-boolean p2, p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->isNeedReopen:Z

    if-eqz p2, :cond_0

    .line 3406
    invoke-virtual {p1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->show()V

    .line 3409
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    return-void
.end method

.method public onTransitionAnimationStart(ZZ)V
    .locals 0

    .line 3414
    invoke-super {p0, p1, p2}, Lcom/iMe/ui/base/mvp/MvpFragment;->onTransitionAnimationStart(ZZ)V

    .line 3415
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    return-void
.end method

.method public openChatScreen(J)V
    .locals 2

    .line 409
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user_id"

    .line 410
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 411
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method public openDepositScreen(Lcom/iMe/model/staking/StakingDetailsItem;D)V
    .locals 0

    .line 548
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForStakingReplenish(Lcom/iMe/model/staking/StakingDetailsItem;Ljava/lang/Double;)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method provideBinanceReceivePresenter()Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;
    .locals 3
    .annotation runtime Lmoxy/presenter/ProvidePresenter;
    .end annotation

    .line 177
    const-class v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    return-object v0
.end method

.method provideDonationsPresenter()Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;
    .locals 3
    .annotation runtime Lmoxy/presenter/ProvidePresenter;
    .end annotation

    .line 192
    const-class v0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    return-object v0
.end method

.method provideSendPresenter()Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;
    .locals 3
    .annotation runtime Lmoxy/presenter/ProvidePresenter;
    .end annotation

    .line 182
    const-class v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter;

    return-object v0
.end method

.method provideStakingCalculatorPresenter()Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;
    .locals 3
    .annotation runtime Lmoxy/presenter/ProvidePresenter;
    .end annotation

    .line 197
    const-class v0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    return-object v0
.end method

.method provideStakingTransactionPresenter()Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;
    .locals 3
    .annotation runtime Lmoxy/presenter/ProvidePresenter;
    .end annotation

    .line 187
    const-class v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    return-object v0
.end method

.method public resetScreen()V
    .locals 1

    const/4 v0, 0x1

    .line 518
    invoke-direct {p0, v0}, Lorg/telegram/ui/ManageLinksActivity;->updateRows(Z)V

    return-void
.end method

.method public revokeLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 4

    .line 3023
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;-><init>()V

    .line 3024
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->link:Ljava/lang/String;

    const/4 v1, 0x1

    .line 3025
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->revoked:Z

    .line 3026
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3027
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda33;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)V
    .locals 0

    .line 1716
    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1717
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iput-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 1719
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->isPublic:Z

    .line 1721
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->isForkScreenType()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1722
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->loadLinks(Z)V

    :cond_0
    return-void
.end method

.method public setupReplenishAddress()V
    .locals 2

    .line 614
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseContactRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public setupScreenState(Lcom/iMe/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;)V
    .locals 0

    .line 523
    new-instance p1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shouldAskPinCode()Z
    .locals 1

    .line 350
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinancePayCreateCollectionType:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isWalletTransferType:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinanceReplenishType:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isDonationsType:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->isCryptoAddressCreated()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isDonationsTransferType:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->isStakingTransactionScreenType()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public showActionError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 435
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    .line 439
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    .line 435
    invoke-static {p0, p1, p2, v0, v1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showErrorAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    return-void
.end method

.method public showActionSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 424
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    .line 428
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    .line 424
    invoke-static {p0, p1, p2, v0, v1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    return-void
.end method

.method public showBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 1

    .line 537
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->inputHeaderRow:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public showChooseNetworkDialog(Ljava/util/List;Lcom/iMe/storage/domain/model/crypto/Network;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;)V"
        }
    .end annotation

    .line 588
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2, p1, p3}, Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;->newInstance(Landroid/content/Context;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/fork/ui/dialog/SelectNetworkBottomSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showConfirmDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 2

    .line 609
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showCreatedCollectionSuccessDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 0

    .line 389
    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    return-void
.end method

.method public showLevelRequiredDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 2

    .line 553
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    .line 555
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 553
    invoke-static {p0, v0, p1, v1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showStakingLevelRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public showNoEnoughMoneyErrorDialog(Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V
    .locals 2

    .line 446
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->tokenBuyCoordinator:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-virtual {v0, v1, p1}, Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;->showNoEnoughMoneyDialog(Lorg/telegram/ui/ActionBar/INavigationLayout;Lcom/iMe/navigation/wallet/coordinator/args/TokenBuyCoordinatorArgs;)V

    return-void
.end method

.method public showRecipientNotFoundError()V
    .locals 4

    .line 462
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    .line 464
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_error_invalid_user_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    .line 465
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_amount_error_invalid_user_description:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    .line 466
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_amount_error_invalid_user_btn_txt:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    .line 462
    invoke-static {p0, v0, v1, v2, v3}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showErrorAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    return-void
.end method

.method public showRecipientWalletNotActivatedError()V
    .locals 4

    .line 473
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    .line 475
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_error_invalid_user_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    .line 476
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_amount_error_user_wallet_not_activated_description:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    .line 477
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_amount_error_invalid_user_btn_txt:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    .line 473
    invoke-static {p0, v0, v1, v2, v3}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showErrorAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    return-void
.end method

.method public showSelectTokenDialog(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 394
    invoke-static {p1, v0, p2, p3, p4}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->newInstance(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment$ScreenType;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public showStakingConditionsDialog(Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 0

    .line 583
    invoke-static {p1, p0}, Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;->newInstance(Lcom/iMe/model/staking/StakingDetailsItem;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/iMe/ui/wallet/staking/conditions/StakingConditionsBottomSheetDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showSuccessSend(Ljava/lang/String;)V
    .locals 2

    .line 416
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    .line 417
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_amount_success_send_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/ManageLinksActivity;->showActionSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateAmountDependedViews()V
    .locals 4

    const/4 v0, 0x0

    .line 566
    invoke-direct {p0, v0}, Lorg/telegram/ui/ManageLinksActivity;->updateRows(Z)V

    .line 567
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->inputRow:I

    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->getStakingLastRow()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/ManageLinksActivity;->inputRow:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public updateFeeView()V
    .locals 2

    .line 532
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->feeRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public updateScreenAfterLoad()V
    .locals 1

    const/4 v0, 0x1

    .line 604
    invoke-direct {p0, v0}, Lorg/telegram/ui/ManageLinksActivity;->updateRows(Z)V

    return-void
.end method

.method public updateSelectedToken()V
    .locals 2

    .line 404
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->selectTokenRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public updateSelectedUser()V
    .locals 2

    .line 399
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseContactRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public updateStakingCalculatorViews()V
    .locals 3

    const/4 v0, 0x0

    .line 542
    invoke-direct {p0, v0}, Lorg/telegram/ui/ManageLinksActivity;->updateRows(Z)V

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->selectTokenRow:I

    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public updateStakingStep()V
    .locals 4

    const/4 v0, 0x0

    .line 572
    invoke-direct {p0, v0}, Lorg/telegram/ui/ManageLinksActivity;->updateRows(Z)V

    .line 573
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->inputRow:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->getStakingLastRow()I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/ManageLinksActivity;->inputRow:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public updateWithdrawalFee()V
    .locals 2

    .line 578
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingWithdrawalFeeRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
