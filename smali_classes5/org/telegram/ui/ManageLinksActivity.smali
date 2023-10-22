.class public Lorg/telegram/ui/ManageLinksActivity;
.super Lcom/iMe/ui/base/wallet_auth/JavaWalletAuthBaseFragment;
.source "ManageLinksActivity.java"

# interfaces
.implements Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayView;
.implements Lcom/iMe/ui/wallet/donations/WalletDonationsView;
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

.field public static CHANNEL_ADMIN_DONATIONS:I = 0x4

.field public static STAKING_CALCULATOR_SCREEN_TYPE:I = 0x9


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

.field private isChannel:Z

.field private isDonationsType:Z

.field private isOpened:Z

.field private isPublic:Z

.field private isStakingCalculatorType:Z

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
.method public static synthetic $r8$lambda$1pni7EDgvb86br18RruJYI_X_jo(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$loadLinks$12(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6e5HLpcQpjq5b9Tg0DS2d8kbLIY(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ManageLinksActivity;->lambda$loadLinks$15(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$7H9Ele9_3s8zxml6vv8ObLvSyCc(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$openSelectToken$9(Lorg/telegram/ui/Components/LinkActionView;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Az6Ay2Y2WS4MPlBurmoEQE3UGb8(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ManageLinksActivity;->lambda$createView$21(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CoMZgAC2lYwGhOHFkDL2Nd4TTAw()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/ManageLinksActivity;->lambda$showCommonInfoAlert$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$EPHmt0-J8oiNX_ToR2Y_rdQGdHY(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$getInputOptionsMenuItems$8(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fi0LuHVMONb2omcK1tm51RmtaJ4(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$getInputOptionsMenuItems$6(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GVywzpJ12ZNx-YZC-fQRn70Z_IA(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ManageLinksActivity;->lambda$openChooseContact$10(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ContactsActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GyuGsZRLxwUraG8Sbwk8uAzu1JY(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$onRequestPermissionsResultFragment$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MS-mJsHBp6XaxrlhDq7GEcCYDnE(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ManageLinksActivity;->lambda$revokePermanent$24(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O0apKIqUZJbMn-c0sRS0bOvTfz8(Lorg/telegram/ui/ManageLinksActivity;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->lambda$showLevelRequiredDialog$3(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PRXTXY8bRf61Q5AgOFjrmBDySds(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ManageLinksActivity;->lambda$loadLinks$16(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$WkLH0As1oLNw8q_TtsbbgQ6ZBAU(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$loadLinks$13(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zp8SJaAlRW8mQd-bZ5qs4v-R5aQ(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$getInputOptionsMenuItems$5(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_qeA7_at0L6ZXNnMHJbNe-0f-_g(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$deleteLink$25(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eMgyfHV70WeiPFGziRgrGPUzUuc(Lorg/telegram/ui/ManageLinksActivity;)Lorg/koin/core/parameter/ParametersHolder;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->lambda$provideBinanceReceivePresenter$0()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fKjTGoJso2TDOzCAklUG2h2xSrw(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ManageLinksActivity;->lambda$revokeLink$27(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fxCfycVxcFp3smvKp57C7K5cUdo(Lorg/telegram/ui/ManageLinksActivity;)Lorg/koin/core/parameter/ParametersHolder;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->lambda$provideStakingCalculatorPresenter$2()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gJBCCbFrHTYpbRS02D05hZWwvTI(Lorg/telegram/ui/ManageLinksActivity;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$createView$22(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iBZeiXYiPUpQEQSSELzbDPHZc3s(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->lambda$createView$18(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jIbDGUbcIXnWolMFZMgMPM6uq94(Lorg/telegram/ui/ManageLinksActivity;)Lorg/koin/core/parameter/ParametersHolder;
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->lambda$provideDonationsPresenter$1()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$n5zQXCPMu834nHj82bPB-f8NMtk(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ManageLinksActivity;->lambda$loadLinks$17(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oll51Gbf_VtCcNqgVCq_EaGOfWs(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ManageLinksActivity;->lambda$revokeLink$28(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qXD7vbURoe8bUxgmUqTnoWcwdkw(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$createView$20(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qhlbw7NPt3o_I1FxeKRs5TE83oI(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ManageLinksActivity;->lambda$deleteLink$26(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s62BjW04YTJG9PoLCGKFJmF7p2c(Lorg/telegram/ui/ManageLinksActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->lambda$getThemeDescriptions$29()V

    return-void
.end method

.method public static synthetic $r8$lambda$uSSFpUwl6vPfyrTcpKRLCkl6eWI(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$createView$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wELsZLqBKBU4lSXpvO7TIvf7TE8(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$loadLinks$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z-I6VDa_lb_hlToZeggk2S21m7g(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ManageLinksActivity;->lambda$revokePermanent$23(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zxc-PvX1OYZCZGTiOijTfh_eO4U(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->lambda$getInputOptionsMenuItems$7(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 3

    .line 799
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/JavaWalletAuthBaseFragment;-><init>()V

    .line 180
    const-class v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 181
    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->inject(Ljava/lang/Class;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    .line 182
    const-class v0, Lcom/iMe/navigation/wallet/coordinator/TokenBuyCoordinator;

    .line 183
    invoke-static {v0}, Lorg/koin/java/KoinJavaComponent;->inject(Ljava/lang/Class;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->tokenBuyCoordinator:Lkotlin/Lazy;

    .line 191
    new-instance v0, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    invoke-direct {v0}, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->binancePayScreenArgs:Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsTransactions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    const/4 v0, -0x1

    .line 196
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->screenType:I

    .line 678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    .line 679
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    .line 680
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->users:Ljava/util/HashMap;

    .line 683
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->admins:Ljava/util/ArrayList;

    .line 690
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ManageLinksActivity$4;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->updateTimerRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 814
    iput-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->loadRevoked:Z

    .line 2430
    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ManageLinksActivity$9;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    iput-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->linkEditActivityCallback:Lorg/telegram/ui/LinkEditActivity$Callback;

    .line 2766
    new-instance v1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v1}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 800
    iput-wide p1, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    .line 801
    iput p5, p0, Lorg/telegram/ui/ManageLinksActivity;->invitesCount:I

    .line 802
    iget p5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p5, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 803
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

    .line 805
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-wide p3, p1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    iput-wide p3, p0, Lorg/telegram/ui/ManageLinksActivity;->adminId:J

    goto :goto_1

    .line 807
    :cond_1
    iput-wide p3, p0, Lorg/telegram/ui/ManageLinksActivity;->adminId:J

    .line 810
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide p3, p0, Lorg/telegram/ui/ManageLinksActivity;->adminId:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 811
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

    .line 228
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ManageLinksActivity;-><init>(JJI)V

    .line 229
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ManageLinksActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 153
    iget-object p0, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ManageLinksActivity;)Z
    .locals 0

    .line 153
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->isForkScreenType()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsStartRow:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsEndRow:I

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->creatorRow:I

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->createNewLinkRow:I

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksStartRow:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksEndRow:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedLinksStartRow:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedLinksEndRow:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokeAllRow:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsStartRow:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ManageLinksActivity;)Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinancePayCreateCollectionType:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsEndRow:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->feeRow:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ManageLinksActivity;)J
    .locals 2

    .line 153
    iget-wide v0, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    return-wide v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ManageLinksActivity;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->revokePermanent()V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ManageLinksActivity;)Lorg/telegram/ui/Components/InviteLinkBottomSheet;
    .locals 0

    .line 153
    iget-object p0, p0, Lorg/telegram/ui/ManageLinksActivity;->inviteLinkBottomSheet:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    return-object p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Lorg/telegram/ui/Components/InviteLinkBottomSheet;
    .locals 0

    .line 153
    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->inviteLinkBottomSheet:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    return-object p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ManageLinksActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;
    .locals 0

    .line 153
    iget-object p0, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ManageLinksActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 0

    .line 153
    iget-object p0, p0, Lorg/telegram/ui/ManageLinksActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/HashMap;
    .locals 0

    .line 153
    iget-object p0, p0, Lorg/telegram/ui/ManageLinksActivity;->users:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseContactHeaderRow:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsHeaderRow:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ManageLinksActivity;)Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lorg/telegram/ui/ManageLinksActivity;->isDonationsType:Z

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 153
    iget-object p0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsTransactions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ManageLinksActivity;)J
    .locals 2

    .line 153
    iget-wide v0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminId:J

    return-wide v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseContactRow:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->selectTokenRow:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->inputRow:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->checkButtonEnabled(Lorg/telegram/ui/Components/LinkActionView;)V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)Ljava/util/ArrayList;
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->getInputOptionsMenuItems(Lorg/telegram/ui/Components/LinkActionView;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->commentRow:I

    return p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ManageLinksActivity;)Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lorg/telegram/ui/ManageLinksActivity;->isPublic:Z

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ManageLinksActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 153
    iget-object p0, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ManageLinksActivity;)Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingCalculatorType:Z

    return p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ManageLinksActivity;)Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lorg/telegram/ui/ManageLinksActivity;->canEdit:Z

    return p0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->commentHeaderRow:I

    return p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->selectTokenHeaderRow:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->inputHeaderRow:I

    return p0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationBalanceHeaderRow:I

    return p0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->permanentLinkHeaderRow:I

    return p0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedHeader:I

    return p0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksHeaderRow:I

    return p0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsHeaderRow:I

    return p0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 153
    iget-object p0, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ManageLinksActivity;)Lkotlin/Lazy;
    .locals 0

    .line 153
    iget-object p0, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    return-object p0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 153
    iget-object p0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->invitesCount:I

    return p0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/ManageLinksActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 153
    iget-object p0, p0, Lorg/telegram/ui/ManageLinksActivity;->admins:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseRecipientOptionsRow:I

    return p0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingPrognosisRow:I

    return p0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingInfoRow:I

    return p0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingActionsRow:I

    return p0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingSafeWithdrawalRow:I

    return p0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingWithdrawalFeeRow:I

    return p0
.end method

.method static synthetic access$5900(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingSelectProgrammeHeaderRow:I

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ManageLinksActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity;->showCommonInfoAlert(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsSeeMoreRow:I

    return p0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationBalanceRow:I

    return p0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->helpRow:I

    return p0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->permanentLinkRow:I

    return p0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsDividerRow:I

    return p0
.end method

.method static synthetic access$6500(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->dividerRow:I

    return p0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedDivider:I

    return p0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokeAllDivider:I

    return p0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->creatorDividerRow:I

    return p0
.end method

.method static synthetic access$6900(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsDividerRow:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    return p0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksLoadingRow:I

    return p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->lastDivider:I

    return p0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->informationRow:I

    return p0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/ManageLinksActivity;)I
    .locals 0

    .line 153
    iget p0, p0, Lorg/telegram/ui/ManageLinksActivity;->createLinkHelpRow:I

    return p0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/ManageLinksActivity;Ljava/lang/String;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->saveDonationsAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7500(Lorg/telegram/ui/ManageLinksActivity;Ljava/lang/String;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->createCollection(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7600(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->openSelectToken(Lorg/telegram/ui/Components/LinkActionView;)V

    return-void
.end method

.method static synthetic access$7700(Lorg/telegram/ui/ManageLinksActivity;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->openChooseContact()V

    return-void
.end method

.method static synthetic access$7800(Lorg/telegram/ui/ManageLinksActivity;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->openDonationAddressOnScanner()V

    return-void
.end method

.method static synthetic access$7900(Lorg/telegram/ui/ManageLinksActivity;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->openAddAdminScreen()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/ui/ManageLinksActivity;Z)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->loadLinks(Z)V

    return-void
.end method

.method static synthetic access$8000(Lorg/telegram/ui/ManageLinksActivity;)Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    return p0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/ManageLinksActivity;)Lorg/telegram/ui/ManageLinksActivity$DiffCallback;
    .locals 0

    .line 153
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->saveListState()Lorg/telegram/ui/ManageLinksActivity$DiffCallback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/ManageLinksActivity$DiffCallback;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->updateRecyclerViewAnimated(Lorg/telegram/ui/ManageLinksActivity$DiffCallback;)V

    return-void
.end method

.method static synthetic access$8300(Lorg/telegram/ui/ManageLinksActivity;Z)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->updateRows(Z)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/ManageLinksActivity;)Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lorg/telegram/ui/ManageLinksActivity;->isChannel:Z

    return p0
.end method

.method private checkButtonEnabled(Lorg/telegram/ui/Components/LinkActionView;)V
    .locals 2

    .line 507
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    if-eqz v0, :cond_2

    .line 508
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

    .line 509
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/LinkActionView;->setEnabledActionButton(ZLjava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method private createCollection(Ljava/lang/String;)V
    .locals 1

    .line 542
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->binanceReceivePresenter:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v0, p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->createCollection(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V

    :cond_0
    return-void
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

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 420
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    if-eqz v1, :cond_2

    .line 422
    invoke-virtual {v1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->getCurrentDonationsAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 423
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 424
    sget v4, Lorg/telegram/messenger/R$string;->GetQRCode:I

    const-string v5, "GetQRCode"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_qrcode:I

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 425
    new-instance v4, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 431
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->channel_donations_unlink_address_dialog_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 432
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 433
    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 438
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {v1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->getCurrentDonationsAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 439
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {v1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->isCryptoAddressCreated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 440
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 441
    iget-object v4, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->channel_donations_link_non_castodial_wallet_address_dialog_title:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 442
    new-instance v4, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_1
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZ)V

    .line 449
    sget v2, Lorg/telegram/messenger/R$string;->AuthAnotherClientScan:I

    const-string v3, "AuthAnotherClientScan"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_qrcode:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 450
    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-object v0
.end method

.method private isForkScreenType()Z
    .locals 2

    .line 616
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

.method private synthetic lambda$createView$18(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    const/4 v0, 0x0

    .line 1290
    iput-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->deletingRevokedLinks:Z

    if-nez p1, :cond_0

    .line 1292
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->saveListState()Lorg/telegram/ui/ManageLinksActivity$DiffCallback;

    move-result-object p1

    .line 1293
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1294
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->updateRecyclerViewAnimated(Lorg/telegram/ui/ManageLinksActivity$DiffCallback;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createView$19(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 1289
    new-instance p1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda11;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$20(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1281
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteRevokedExportedChatInvites;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteRevokedExportedChatInvites;-><init>()V

    .line 1282
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v0, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    neg-long v0, v0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteRevokedExportedChatInvites;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1283
    iget-wide v0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 1284
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

    .line 1286
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminId:J

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteRevokedExportedChatInvites;->admin_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    :goto_0
    const/4 p2, 0x1

    .line 1288
    iput-boolean p2, p0, Lorg/telegram/ui/ManageLinksActivity;->deletingRevokedLinks:Z

    .line 1289
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$createView$21(Landroid/content/Context;Landroid/view/View;I)V
    .locals 10

    .line 1239
    iget p2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsStartRow:I

    const/4 v0, 0x0

    if-lt p3, p2, :cond_1

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsEndRow:I

    if-ge p3, v1, :cond_1

    .line 1240
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsTransactions:Ljava/util/ArrayList;

    sub-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/model/wallet/transaction/TransactionItem;

    .line 1241
    invoke-virtual {p1}, Lcom/iMe/model/wallet/transaction/TransactionItem;->isUnsupported()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 1244
    :cond_0
    new-instance p2, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;

    invoke-direct {p2, p1}, Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType$TransactionDetails;-><init>(Lcom/iMe/model/wallet/transaction/TransactionItem;)V

    invoke-static {p0, p2, v0}, Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;->newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/transaction/WalletTransactionDetailsScreenType;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lcom/iMe/ui/wallet/transaction/details/WalletTransactionDetailsBottomSheetDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_0

    .line 1250
    :cond_1
    iget p2, p0, Lorg/telegram/ui/ManageLinksActivity;->creatorRow:I

    const/4 v1, 0x0

    if-ne p3, p2, :cond_2

    .line 1251
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->users:Ljava/util/HashMap;

    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->admin_id:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_9

    .line 1253
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1254
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    const-string p3, "user_id"

    invoke-virtual {p2, p3, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1255
    sget p3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p1, v1}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 1256
    new-instance p1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 1257
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 1259
    :cond_2
    iget p2, p0, Lorg/telegram/ui/ManageLinksActivity;->createNewLinkRow:I

    if-ne p3, p2, :cond_3

    .line 1260
    new-instance p1, Lorg/telegram/ui/LinkEditActivity;

    iget-wide p2, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    invoke-direct {p1, v1, p2, p3}, Lorg/telegram/ui/LinkEditActivity;-><init>(IJ)V

    .line 1261
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->linkEditActivityCallback:Lorg/telegram/ui/LinkEditActivity$Callback;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/LinkEditActivity;->setCallback(Lorg/telegram/ui/LinkEditActivity$Callback;)V

    .line 1262
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_0

    .line 1263
    :cond_3
    iget p2, p0, Lorg/telegram/ui/ManageLinksActivity;->linksStartRow:I

    if-lt p3, p2, :cond_4

    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->linksEndRow:I

    if-ge p3, v2, :cond_4

    .line 1264
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    sub-int/2addr p3, p2

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 1265
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

    .line 1266
    iget-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->canEdit:Z

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->setCanEdit(Z)V

    .line 1267
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->inviteLinkBottomSheet:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->show()V

    goto/16 :goto_0

    .line 1268
    :cond_4
    iget p2, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedLinksStartRow:I

    if-lt p3, p2, :cond_5

    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedLinksEndRow:I

    if-ge p3, v2, :cond_5

    .line 1269
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    sub-int/2addr p3, p2

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 1270
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

    .line 1271
    invoke-virtual {p2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->show()V

    goto/16 :goto_0

    .line 1272
    :cond_5
    iget p1, p0, Lorg/telegram/ui/ManageLinksActivity;->revokeAllRow:I

    if-ne p3, p1, :cond_7

    .line 1273
    iget-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->deletingRevokedLinks:Z

    if-eqz p1, :cond_6

    return-void

    .line 1277
    :cond_6
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1278
    sget p2, Lorg/telegram/messenger/R$string;->DeleteAllRevokedLinks:I

    const-string p3, "DeleteAllRevokedLinks"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1279
    sget p2, Lorg/telegram/messenger/R$string;->DeleteAllRevokedLinkHelp:I

    const-string p3, "DeleteAllRevokedLinkHelp"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1280
    sget p2, Lorg/telegram/messenger/R$string;->Delete:I

    const-string p3, "Delete"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1298
    sget p2, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string p3, "Cancel"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1299
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 1300
    :cond_7
    iget p1, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsStartRow:I

    if-lt p3, p1, :cond_9

    iget p2, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsEndRow:I

    if-ge p3, p2, :cond_9

    sub-int/2addr p3, p1

    .line 1302
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->admins:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;

    .line 1303
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->users:Ljava/util/HashMap;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;->admin_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1304
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

    .line 1306
    :cond_8
    new-instance p2, Lorg/telegram/ui/ManageLinksActivity;

    iget-wide v3, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    iget-wide v5, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;->admin_id:J

    iget v7, p1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;->invites_count:I

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/ManageLinksActivity;-><init>(JJI)V

    .line 1307
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ManageLinksActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)V

    .line 1308
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_9
    :goto_0
    return-void
.end method

.method private synthetic lambda$createView$22(Landroid/view/View;I)Z
    .locals 2

    .line 1312
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

    .line 1313
    :cond_1
    move-object p2, p1

    check-cast p2, Lorg/telegram/ui/ManageLinksActivity$LinkCell;

    .line 1314
    iget-object p2, p2, Lorg/telegram/ui/ManageLinksActivity$LinkCell;->optionsView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->callOnClick()Z

    const/4 p2, 0x2

    .line 1315
    invoke-virtual {p1, v1, p2}, Landroid/view/View;->performHapticFeedback(II)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private synthetic lambda$deleteLink$25(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 0

    if-nez p1, :cond_0

    .line 2378
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->linkEditActivityCallback:Lorg/telegram/ui/LinkEditActivity$Callback;

    invoke-interface {p1, p2}, Lorg/telegram/ui/LinkEditActivity$Callback;->onLinkRemoved(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$deleteLink$26(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 2376
    new-instance p2, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda16;

    invoke-direct {p2, p0, p3, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$getInputOptionsMenuItems$5(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    .line 426
    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkActionView;->dismissPopupWindow()V

    .line 427
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->showDonationAddressQrCode()V

    return-void
.end method

.method private synthetic lambda$getInputOptionsMenuItems$6(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    .line 434
    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkActionView;->dismissPopupWindow()V

    .line 435
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->unlinkWalletAddress()V

    return-void
.end method

.method private synthetic lambda$getInputOptionsMenuItems$7(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    .line 443
    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkActionView;->dismissPopupWindow()V

    .line 444
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->linkCryptoWalletAddress()V

    return-void
.end method

.method private synthetic lambda$getInputOptionsMenuItems$8(Lorg/telegram/ui/Components/LinkActionView;Landroid/view/View;)V
    .locals 0

    .line 451
    invoke-virtual {p1}, Lorg/telegram/ui/Components/LinkActionView;->dismissPopupWindow()V

    .line 452
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->openScanQrCodeScreen()V

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$29()V
    .locals 6

    .line 2669
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_f

    .line 2670
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_f

    .line 2672
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2674
    instance-of v4, v3, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;

    if-eqz v4, :cond_0

    .line 2675
    move-object v4, v3

    check-cast v4, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;

    invoke-virtual {v4}, Lcom/iMe/ui/custom/ChooseRecipientOptionsView;->setupColors()V

    goto/16 :goto_1

    .line 2676
    :cond_0
    instance-of v4, v3, Lcom/iMe/ui/custom/StakingPrognosisView;

    if-eqz v4, :cond_1

    .line 2677
    move-object v4, v3

    check-cast v4, Lcom/iMe/ui/custom/StakingPrognosisView;

    invoke-virtual {v4}, Lcom/iMe/ui/custom/StakingPrognosisView;->setupColors()V

    goto/16 :goto_1

    .line 2678
    :cond_1
    instance-of v4, v3, Lcom/iMe/ui/custom/StakingPercentageView;

    if-eqz v4, :cond_2

    .line 2679
    move-object v4, v3

    check-cast v4, Lcom/iMe/ui/custom/StakingPercentageView;

    invoke-virtual {v4}, Lcom/iMe/ui/custom/StakingPercentageView;->setupColors()V

    goto/16 :goto_1

    .line 2680
    :cond_2
    instance-of v4, v3, Lcom/iMe/ui/custom/TransactionActionButtonsView;

    if-eqz v4, :cond_3

    .line 2681
    move-object v4, v3

    check-cast v4, Lcom/iMe/ui/custom/TransactionActionButtonsView;

    invoke-virtual {v4}, Lcom/iMe/ui/custom/TransactionActionButtonsView;->setupColors()V

    goto/16 :goto_1

    .line 2682
    :cond_3
    instance-of v4, v3, Lcom/iMe/ui/custom/StakingSafeWithdrawalView;

    if-eqz v4, :cond_4

    .line 2683
    move-object v4, v3

    check-cast v4, Lcom/iMe/ui/custom/StakingSafeWithdrawalView;

    invoke-virtual {v4}, Lcom/iMe/ui/custom/StakingSafeWithdrawalView;->setupColors()V

    goto/16 :goto_1

    .line 2684
    :cond_4
    instance-of v4, v3, Lcom/iMe/ui/custom/StakingWithdrawalFeeView;

    if-eqz v4, :cond_5

    .line 2685
    move-object v4, v3

    check-cast v4, Lcom/iMe/ui/custom/StakingWithdrawalFeeView;

    invoke-virtual {v4}, Lcom/iMe/ui/custom/StakingWithdrawalFeeView;->setupColors()V

    goto :goto_1

    .line 2686
    :cond_5
    instance-of v4, v3, Lcom/iMe/ui/custom/FeeView;

    if-eqz v4, :cond_6

    .line 2687
    move-object v4, v3

    check-cast v4, Lcom/iMe/ui/custom/FeeView;

    invoke-virtual {v4}, Lcom/iMe/ui/custom/FeeView;->setupColors()V

    goto :goto_1

    .line 2688
    :cond_6
    instance-of v4, v3, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;

    if-eqz v4, :cond_7

    .line 2689
    move-object v4, v3

    check-cast v4, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;

    invoke-virtual {v4}, Lcom/iMe/fork/ui/view/HeaderCellWithNetwork;->setupColors()V

    goto :goto_1

    .line 2690
    :cond_7
    instance-of v4, v3, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;

    if-eqz v4, :cond_8

    .line 2691
    move-object v4, v3

    check-cast v4, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;

    invoke-virtual {v4}, Lcom/iMe/fork/ui/view/HeaderCellWithImageViewButtonWrapper;->setupColors()V

    goto :goto_1

    .line 2692
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

    .line 2693
    invoke-direct {p0, v4}, Lorg/telegram/ui/ManageLinksActivity;->getInputOptionsMenuItems(Lorg/telegram/ui/Components/LinkActionView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/LinkActionView;->setOptionsItems(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 2694
    :cond_9
    instance-of v4, v3, Lcom/iMe/ui/custom/donation/DonationBalanceView;

    if-eqz v4, :cond_a

    .line 2695
    move-object v4, v3

    check-cast v4, Lcom/iMe/ui/custom/donation/DonationBalanceView;

    invoke-virtual {v4}, Lcom/iMe/ui/custom/donation/DonationBalanceView;->setupColors()V

    goto :goto_1

    .line 2696
    :cond_a
    instance-of v4, v3, Lcom/iMe/ui/custom/donation/DonationTransactionView;

    if-eqz v4, :cond_b

    .line 2697
    move-object v4, v3

    check-cast v4, Lcom/iMe/ui/custom/donation/DonationTransactionView;

    invoke-virtual {v4}, Lcom/iMe/ui/custom/donation/DonationTransactionView;->setupColors()V

    goto :goto_1

    .line 2698
    :cond_b
    instance-of v4, v3, Lcom/iMe/ui/custom/donation/DonationSeeMoreButton;

    if-eqz v4, :cond_c

    .line 2699
    move-object v4, v3

    check-cast v4, Lcom/iMe/ui/custom/donation/DonationSeeMoreButton;

    invoke-virtual {v4}, Lcom/iMe/ui/custom/donation/DonationSeeMoreButton;->setupColors()V

    goto :goto_1

    .line 2701
    :cond_c
    instance-of v4, v3, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz v4, :cond_d

    .line 2702
    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-virtual {v4, v1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->update(I)V

    .line 2704
    :cond_d
    :goto_1
    instance-of v4, v3, Lorg/telegram/ui/Components/LinkActionView;

    if-eqz v4, :cond_e

    .line 2705
    check-cast v3, Lorg/telegram/ui/Components/LinkActionView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/LinkActionView;->updateColors()V

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2709
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->inviteLinkBottomSheet:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    if-eqz v0, :cond_10

    .line 2710
    invoke-virtual {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->updateColors()V

    :cond_10
    return-void
.end method

.method private synthetic lambda$loadLinks$12(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 6

    const/4 v0, 0x0

    .line 822
    iput-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksLoading:Z

    if-nez p1, :cond_2

    .line 824
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_chatAdminsWithInvites;

    move p1, v0

    .line 825
    :goto_0
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_chatAdminsWithInvites;->admins:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 826
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_chatAdminsWithInvites;->admins:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;

    .line 827
    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatAdminWithInvites;->admin_id:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    iget-wide v4, v4, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 828
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->admins:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 831
    :goto_1
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_chatAdminsWithInvites;->users:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 832
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_chatAdminsWithInvites;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    .line 833
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->users:Ljava/util/HashMap;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 838
    iput-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsLoaded:Z

    .line 840
    iput-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    .line 849
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->resumeDelayedFragmentAnimation()V

    .line 852
    iget-boolean p2, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lorg/telegram/ui/ManageLinksActivity;->loadRevoked:Z

    if-nez p2, :cond_3

    .line 853
    iput-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    .line 854
    iput-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->loadRevoked:Z

    .line 855
    invoke-direct {p0, v0}, Lorg/telegram/ui/ManageLinksActivity;->loadLinks(Z)V

    .line 857
    :cond_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->updateRows(Z)V

    return-void
.end method

.method private synthetic lambda$loadLinks$13(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    .line 821
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadLinks$14(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 821
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadLinks$15(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 6

    .line 904
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->saveListState()Lorg/telegram/ui/ManageLinksActivity$DiffCallback;

    move-result-object v0

    const/4 v1, 0x0

    .line 905
    iput-boolean v1, p0, Lorg/telegram/ui/ManageLinksActivity;->linksLoading:Z

    .line 906
    iput-boolean v1, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    if-eqz p1, :cond_0

    .line 908
    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 909
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_0

    .line 910
    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    :cond_0
    const/4 p1, 0x1

    if-nez p2, :cond_b

    .line 916
    check-cast p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;

    if-eqz p4, :cond_1

    move p2, v1

    .line 919
    :goto_0
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_3

    .line 920
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 921
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ManageLinksActivity;->fixDate(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    .line 922
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 925
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

    .line 926
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iput-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 927
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    move p2, v1

    .line 929
    :goto_1
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_3

    .line 930
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 931
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ManageLinksActivity;->fixDate(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    .line 932
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    move p2, v1

    .line 936
    :goto_2
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_4

    .line 937
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

    .line 939
    :cond_4
    iget p2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    .line 940
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 941
    iput-boolean v1, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    goto :goto_5

    :cond_5
    if-eqz p4, :cond_7

    .line 943
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

    .line 945
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

    .line 947
    :goto_5
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    iget-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->isOpened:Z

    if-eqz v2, :cond_a

    .line 948
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    if-eqz v2, :cond_9

    iget-boolean v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    if-nez v3, :cond_9

    add-int/2addr p2, p1

    .line 949
    invoke-virtual {v2, p2}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;->showItemsAnimated(I)V

    :cond_9
    move p2, v1

    goto :goto_6

    :cond_a
    move p2, p1

    .line 954
    :goto_6
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_c

    if-nez p4, :cond_c

    .line 955
    iget p3, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->count:I

    iput p3, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    .line 956
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p3

    iget-wide v2, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    iget-object p4, p0, Lorg/telegram/ui/ManageLinksActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget p4, p4, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    invoke-virtual {p3, v2, v3, p4}, Lorg/telegram/messenger/MessagesStorage;->saveChatLinksCount(JI)V

    goto :goto_7

    .line 959
    :cond_b
    iput-boolean v1, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    move p2, v1

    .line 963
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

    .line 964
    iput-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    .line 965
    iput-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->loadAdmins:Z

    goto :goto_8

    .line 967
    :cond_d
    iget-boolean p3, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    if-nez p3, :cond_e

    iget-boolean p3, p0, Lorg/telegram/ui/ManageLinksActivity;->loadRevoked:Z

    if-nez p3, :cond_e

    .line 968
    iput-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    .line 969
    iput-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->loadRevoked:Z

    :goto_8
    move p3, p1

    goto :goto_9

    :cond_e
    move p3, v1

    .line 973
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

    .line 974
    :cond_f
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->resumeDelayedFragmentAnimation()V

    :cond_10
    if-eqz p3, :cond_11

    .line 978
    invoke-direct {p0, v1}, Lorg/telegram/ui/ManageLinksActivity;->loadLinks(Z)V

    :cond_11
    if-eqz p2, :cond_12

    .line 981
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    if-eqz p2, :cond_12

    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_12

    .line 982
    invoke-direct {p0, v0}, Lorg/telegram/ui/ManageLinksActivity;->updateRecyclerViewAnimated(Lorg/telegram/ui/ManageLinksActivity$DiffCallback;)V

    goto :goto_a

    .line 984
    :cond_12
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->updateRows(Z)V

    :goto_a
    return-void
.end method

.method private synthetic lambda$loadLinks$16(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V
    .locals 8

    .line 903
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-instance v7, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda9;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadLinks$17(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    if-nez p4, :cond_1

    .line 891
    move-object v0, p3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;

    .line 892
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 893
    :goto_0
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 894
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvites;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 895
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

    .line 903
    new-instance p1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda10;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p4

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Z)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResultFragment$4(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 401
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
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

    .line 403
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 405
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$openChooseContact$10(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    .line 585
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 587
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->binanceReceivePresenter:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    if-eqz p2, :cond_1

    .line 588
    invoke-virtual {p2, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->setSelectedUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 590
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget p2, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseContactRow:I

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private synthetic lambda$openSelectToken$9(Lorg/telegram/ui/Components/LinkActionView;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 5

    .line 559
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

    .line 560
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAvatarUrl()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/iMe/ui/wallet/cryptobox/create/CreateCryptoBoxFragment$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-static {v0, p2, v1}, Lcom/iMe/utils/helper/GlideHelper;->loadBinanceImageAsBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    return-void
.end method

.method private synthetic lambda$provideBinanceReceivePresenter$0()Lorg/koin/core/parameter/ParametersHolder;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 167
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

.method private synthetic lambda$provideDonationsPresenter$1()Lorg/koin/core/parameter/ParametersHolder;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 172
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

.method private synthetic lambda$provideStakingCalculatorPresenter$2()Lorg/koin/core/parameter/ParametersHolder;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/koin/core/parameter/ParametersHolderKt;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$revokeLink$27(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 6

    if-nez p1, :cond_6

    .line 2397
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInviteReplaced;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 2398
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInviteReplaced;

    .line 2399
    iget-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->isPublic:Z

    if-nez p1, :cond_0

    .line 2400
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInviteReplaced;->new_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 2403
    :cond_0
    iput-boolean v0, p3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    .line 2404
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->saveListState()Lorg/telegram/ui/ManageLinksActivity$DiffCallback;

    move-result-object p1

    .line 2405
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

    .line 2406
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2407
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInviteReplaced;->new_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 2408
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v0, :cond_2

    .line 2409
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInviteReplaced;->new_invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iput-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 2411
    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    invoke-virtual {p2, v1, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2412
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->updateRecyclerViewAnimated(Lorg/telegram/ui/ManageLinksActivity$DiffCallback;)V

    goto :goto_1

    .line 2414
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->linkEditActivityCallback:Lorg/telegram/ui/LinkEditActivity$Callback;

    invoke-interface {p1, p3, p2}, Lorg/telegram/ui/LinkEditActivity$Callback;->onLinkEdited(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;)V

    .line 2415
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_5

    .line 2416
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    sub-int/2addr p2, v0

    iput p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    if-gez p2, :cond_4

    .line 2418
    iput v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    .line 2420
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesStorage()Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    iget-wide p2, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->invitesCount:I

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/messenger/MessagesStorage;->saveChatLinksCount(JI)V

    .line 2423
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2424
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

.method private synthetic lambda$revokeLink$28(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 2395
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$revokePermanent$23(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 1

    if-nez p1, :cond_3

    .line 1947
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iput-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 1948
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_0

    .line 1949
    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 1952
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

    .line 1961
    iput-boolean p1, p3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->revoked:Z

    .line 1962
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->saveListState()Lorg/telegram/ui/ManageLinksActivity$DiffCallback;

    move-result-object p1

    .line 1963
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1964
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->updateRecyclerViewAnimated(Lorg/telegram/ui/ManageLinksActivity$DiffCallback;)V

    .line 1965
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

.method private synthetic lambda$revokePermanent$24(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1945
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$showCommonInfoAlert$11()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$showLevelRequiredDialog$3(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 1

    .line 362
    sget-object v0, Lcom/iMe/model/common/ScreenType;->FULLSCREEN:Lcom/iMe/model/common/ScreenType;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;->newInstance(Lcom/iMe/model/common/ScreenType;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/ui/wallet/swap/WalletSwapProtocolsFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private loadLinks(Z)V
    .locals 6

    .line 817
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->loadAdmins:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsLoaded:Z

    if-nez v0, :cond_0

    .line 818
    iput-boolean v1, p0, Lorg/telegram/ui/ManageLinksActivity;->linksLoading:Z

    .line 819
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAdminsWithInvites;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getAdminsWithInvites;-><init>()V

    .line 820
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    neg-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getAdminsWithInvites;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 821
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    .line 859
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto/16 :goto_3

    .line 861
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;-><init>()V

    .line 862
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    neg-long v3, v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 863
    iget-wide v2, p0, Lorg/telegram/ui/ManageLinksActivity;->adminId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 864
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

    .line 866
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ManageLinksActivity;->adminId:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->admin_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 869
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->loadRevoked:Z

    if-eqz v2, :cond_2

    .line 871
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->revoked:Z

    .line 872
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 873
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->flags:I

    .line 874
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->offset_link:Ljava/lang/String;

    .line 875
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

    .line 878
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 879
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->flags:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->flags:I

    .line 880
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->offset_link:Ljava/lang/String;

    .line 881
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->date:I

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getExportedChatInvites;->offset_date:I

    .line 885
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/ManageLinksActivity;->linksLoading:Z

    .line 886
    iget-boolean v3, p0, Lorg/telegram/ui/ManageLinksActivity;->isPublic:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 887
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda25;

    invoke-direct {v5, p0, v3, v2}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Z)V

    invoke-virtual {v4, v0, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    .line 988
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    :goto_3
    if-eqz p1, :cond_5

    .line 991
    invoke-direct {p0, v1}, Lorg/telegram/ui/ManageLinksActivity;->updateRows(Z)V

    :cond_5
    return-void
.end method

.method public static newInstanceForBinancePay(Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;)Lorg/telegram/ui/ManageLinksActivity;
    .locals 2

    .line 235
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "binance_pay_args"

    .line 236
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 237
    sget p0, Lorg/telegram/ui/ManageLinksActivity;->BINANCE_PAY_CREATE_COLLECTION_SCREEN_TYPE:I

    const-string v1, "screen_type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 238
    new-instance p0, Lorg/telegram/ui/ManageLinksActivity;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ManageLinksActivity;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private static newInstanceForStaking(Lcom/iMe/model/staking/StakingDetailsItem;Ljava/lang/Double;I)Lorg/telegram/ui/ManageLinksActivity;
    .locals 2

    .line 253
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "staking_args"

    .line 254
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    const-string v1, "staking_preset_amount"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_0
    const-string p0, "screen_type"

    .line 258
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    new-instance p0, Lorg/telegram/ui/ManageLinksActivity;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ManageLinksActivity;-><init>(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static newInstanceForStakingCalculator(Lcom/iMe/model/staking/StakingDetailsItem;)Lorg/telegram/ui/ManageLinksActivity;
    .locals 2

    .line 249
    sget v0, Lorg/telegram/ui/ManageLinksActivity;->STAKING_CALCULATOR_SCREEN_TYPE:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/telegram/ui/ManageLinksActivity;->newInstanceForStaking(Lcom/iMe/model/staking/StakingDetailsItem;Ljava/lang/Double;I)Lorg/telegram/ui/ManageLinksActivity;

    move-result-object p0

    return-object p0
.end method

.method private openAddAdminScreen()V
    .locals 14

    .line 514
    new-instance v13, Lorg/telegram/ui/ChatRightsEditActivity;

    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Bots;->getAuthBotId()J

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

    .line 515
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ManageLinksActivity$3;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    invoke-virtual {v13, v0}, Lorg/telegram/ui/ChatRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;)V

    .line 533
    invoke-virtual {p0, v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private openChooseContact()V
    .locals 4

    .line 574
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "destroyAfterSelect"

    const/4 v2, 0x1

    .line 575
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "returnAsResult"

    .line 576
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "allowSelf"

    const/4 v3, 0x0

    .line 577
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "allowBots"

    .line 578
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 579
    iget-boolean v1, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinancePayCreateCollectionType:Z

    if-eqz v1, :cond_0

    const-string v1, "onlyUsers"

    .line 580
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 582
    :cond_0
    new-instance v1, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    .line 583
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinancePayCreateCollectionType:Z

    if-eqz v0, :cond_1

    .line 584
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ContactsActivity;->setDelegate(Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;)V

    .line 594
    :cond_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private openDonationAddressOnScanner()V
    .locals 2

    .line 567
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->getCurrentDonationsAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private openScanQrCodeScreen()V
    .locals 3

    .line 461
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 465
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->showCameraScanner()V

    return-void
.end method

.method private openSelectToken(Lorg/telegram/ui/Components/LinkActionView;)V
    .locals 2

    .line 556
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinancePayCreateCollectionType:Z

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->binanceReceivePresenter:Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    if-eqz v0, :cond_0

    .line 558
    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)V

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;->startSelectTokenFlow(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    :cond_0
    return-void
.end method

.method private removeDefaultRows()V
    .locals 1

    const/4 v0, -0x1

    .line 537
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->permanentLinkRow:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->permanentLinkHeaderRow:I

    .line 538
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    return-void
.end method

.method private revokePermanent()V
    .locals 4

    .line 1938
    iget-wide v0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getAccountInstance()Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1939
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;-><init>()V

    .line 1940
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const/4 v1, 0x1

    .line 1941
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->legacy_revoke_permanent:Z

    .line 1942
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    const/4 v2, 0x0

    .line 1943
    iput-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 1944
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 1945
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda22;

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    .line 1969
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 1970
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    goto :goto_0

    .line 1972
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ManageLinksActivity;->revokeLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    :goto_0
    return-void
.end method

.method private saveDonationsAddress(Ljava/lang/String;)V
    .locals 1

    .line 549
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    if-eqz v0, :cond_0

    .line 551
    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->linkAddress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private saveListState()Lorg/telegram/ui/ManageLinksActivity$DiffCallback;
    .locals 3

    .line 2623
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/ManageLinksActivity$1;)V

    .line 2624
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldPositionToItem:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->fillPositions(Landroid/util/SparseIntArray;)V

    .line 2626
    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsStartRow:I

    iput v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldDonationTransactionsStartRow:I

    .line 2627
    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsEndRow:I

    iput v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldDonationTransactionsEndRow:I

    .line 2628
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldDonationsTransactions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2629
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldDonationsTransactions:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsTransactions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2631
    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->linksStartRow:I

    iput v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldLinksStartRow:I

    .line 2632
    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->linksEndRow:I

    iput v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldLinksEndRow:I

    .line 2633
    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedLinksStartRow:I

    iput v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldRevokedLinksStartRow:I

    .line 2634
    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedLinksEndRow:I

    iput v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldRevokedLinksEndRow:I

    .line 2635
    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsStartRow:I

    iput v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldAdminsStartRow:I

    .line 2636
    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsEndRow:I

    iput v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldAdminsEndRow:I

    .line 2637
    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldRowCount:I

    .line 2638
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldLinks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2639
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldLinks:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2641
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldRevokedLinks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2642
    iget-object v1, v0, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->oldRevokedLinks:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private showCameraScanner()V
    .locals 2

    .line 469
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ManageLinksActivity$1;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    const/4 v1, 0x1

    invoke-static {p0, v1, v1, v0, v1}, Lorg/telegram/ui/CameraScanActivity;->showAsSheet(Lorg/telegram/ui/ActionBar/BaseFragment;ZILorg/telegram/ui/CameraScanActivity$CameraScanActivityDelegate;Z)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method

.method private showCommonInfoAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 598
    sget v1, Lorg/telegram/messenger/R$raw;->fork_common_info:I

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    const-string v2, "OK"

    .line 605
    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda8;->INSTANCE:Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda8;

    const/16 v4, 0x11

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 599
    invoke-static/range {v0 .. v6}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createDialogInfoWithAnimation(Lorg/telegram/ui/ActionBar/BaseFragment;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 598
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private showDonationAddressQrCode()V
    .locals 9

    .line 480
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->getCurrentDonationsAddress()Ljava/lang/String;

    move-result-object v0

    .line 481
    new-instance v8, Lorg/telegram/ui/ManageLinksActivity$2;

    .line 482
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v5, v0

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/ManageLinksActivity$2;-><init>(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 498
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    .line 499
    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_receive_dialog_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    .line 500
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_receive_dialog_btn_text:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 498
    invoke-virtual {v8, v1, v2, v0}, Lorg/telegram/ui/Components/QRCodeBottomSheet;->setupWalletTypeReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private updateRecyclerViewAnimated(Lorg/telegram/ui/ManageLinksActivity$DiffCallback;)V
    .locals 1

    .line 2487
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2491
    invoke-direct {p0, v0}, Lorg/telegram/ui/ManageLinksActivity;->updateRows(Z)V

    .line 2492
    iget-object v0, p1, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->newPositionToItem:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ManageLinksActivity$DiffCallback;->fillPositions(Landroid/util/SparseIntArray;)V

    .line 2493
    invoke-static {p1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2494
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 2488
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->updateRows(Z)V

    return-void
.end method

.method private updateRows(Z)V
    .locals 6

    .line 996
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 998
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->isForkScreenType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 999
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 1003
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

    .line 1004
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->creatorRow:I

    .line 1005
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->creatorDividerRow:I

    .line 1006
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksStartRow:I

    .line 1007
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksEndRow:I

    .line 1008
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksLoadingRow:I

    .line 1009
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedLinksStartRow:I

    .line 1010
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedLinksEndRow:I

    .line 1011
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedHeader:I

    .line 1012
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedDivider:I

    .line 1013
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->lastDivider:I

    .line 1014
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokeAllRow:I

    .line 1015
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokeAllDivider:I

    .line 1016
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->createLinkHelpRow:I

    .line 1017
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->helpRow:I

    .line 1018
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->createNewLinkRow:I

    .line 1019
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsEndRow:I

    .line 1020
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsStartRow:I

    .line 1021
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsDividerRow:I

    .line 1022
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsHeaderRow:I

    .line 1023
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksHeaderRow:I

    .line 1024
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->dividerRow:I

    const/4 v1, 0x0

    .line 1026
    iput v1, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    .line 1028
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

    .line 1030
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->creatorRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1031
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->creatorDividerRow:I

    goto :goto_0

    .line 1033
    :cond_2
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->helpRow:I

    .line 1036
    :goto_0
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->permanentLinkHeaderRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1037
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->permanentLinkRow:I

    .line 1040
    iget-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingCalculatorType:Z

    if-eqz v2, :cond_4

    .line 1041
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->removeDefaultRows()V

    .line 1042
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingSelectProgrammeHeaderRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1043
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->selectTokenRow:I

    add-int/lit8 v3, v2, 0x1

    .line 1044
    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->inputHeaderRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1045
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->inputRow:I

    .line 1046
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingCalculatorPresenter:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    if-eqz v2, :cond_9

    .line 1047
    invoke-virtual {v2}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getSelectedStakingProgramme()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1048
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingInfoRow:I

    .line 1050
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingCalculatorPresenter:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    invoke-virtual {v2}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->getChartViewData()Lorg/telegram/ui/StatisticActivity$ChartViewData;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1051
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->dividerRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1052
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingPrognosisRow:I

    goto/16 :goto_1

    .line 1055
    :cond_4
    iget-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinancePayCreateCollectionType:Z

    if-eqz v2, :cond_5

    .line 1056
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->removeDefaultRows()V

    .line 1057
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseContactHeaderRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1058
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseContactRow:I

    add-int/lit8 v3, v2, 0x1

    .line 1059
    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->selectTokenHeaderRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1060
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->selectTokenRow:I

    add-int/lit8 v3, v2, 0x1

    .line 1061
    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->inputHeaderRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1062
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->inputRow:I

    add-int/lit8 v3, v2, 0x1

    .line 1063
    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->feeRow:I

    goto/16 :goto_1

    .line 1064
    :cond_5
    iget-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->isDonationsType:Z

    if-eqz v2, :cond_8

    .line 1065
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->removeDefaultRows()V

    .line 1066
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->inputHeaderRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1067
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->inputRow:I

    add-int/lit8 v3, v2, 0x1

    .line 1068
    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->informationRow:I

    .line 1069
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->getDonationBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1070
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationBalanceHeaderRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1071
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->donationBalanceRow:I

    add-int/lit8 v3, v2, 0x1

    .line 1072
    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsDividerRow:I

    .line 1074
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsTransactions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1075
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsHeaderRow:I

    .line 1076
    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsStartRow:I

    .line 1077
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsTransactions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    .line 1078
    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsEndRow:I

    .line 1079
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsTransactions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_7

    .line 1080
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationTransactionsSeeMoreRow:I

    .line 1083
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->isLoadingDonationInformation()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1084
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->linksLoadingRow:I

    goto :goto_1

    .line 1087
    :cond_8
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

    .line 1091
    :cond_9
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->isForkScreenType()Z

    move-result v2

    if-nez v2, :cond_b

    if-nez v1, :cond_a

    .line 1093
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->dividerRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1094
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->createNewLinkRow:I

    goto :goto_2

    .line 1095
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1096
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->dividerRow:I

    add-int/lit8 v2, v3, 0x1

    .line 1097
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->linksHeaderRow:I

    .line 1100
    :cond_b
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1101
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->linksStartRow:I

    .line 1102
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    .line 1103
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->linksEndRow:I

    .line 1107
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->isForkScreenType()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1108
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->createLinkHelpRow:I

    goto :goto_3

    :cond_d
    if-nez v1, :cond_f

    .line 1110
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->createNewLinkRow:I

    if-ltz v2, :cond_f

    iget-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->linksLoading:Z

    if-eqz v2, :cond_e

    iget-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->loadAdmins:Z

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->loadRevoked:Z

    if-eqz v2, :cond_f

    .line 1111
    :cond_e
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->createLinkHelpRow:I

    :cond_f
    :goto_3
    if-nez v1, :cond_12

    .line 1114
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->admins:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 1115
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->createNewLinkRow:I

    if-ltz v2, :cond_11

    :cond_10
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->createLinkHelpRow:I

    if-ne v2, v0, :cond_11

    .line 1116
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsDividerRow:I

    .line 1118
    :cond_11
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsHeaderRow:I

    .line 1119
    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsStartRow:I

    .line 1120
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->admins:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    .line 1121
    iput v3, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsEndRow:I

    .line 1124
    :cond_12
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 1125
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->adminsStartRow:I

    if-ltz v2, :cond_13

    .line 1126
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedDivider:I

    goto :goto_4

    .line 1127
    :cond_13
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->createNewLinkRow:I

    if-ltz v2, :cond_15

    :cond_14
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->createLinkHelpRow:I

    if-ne v2, v0, :cond_15

    .line 1128
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedDivider:I

    goto :goto_4

    :cond_15
    if-eqz v1, :cond_16

    .line 1129
    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->linksStartRow:I

    if-ne v2, v0, :cond_16

    .line 1130
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedDivider:I

    .line 1132
    :cond_16
    :goto_4
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedHeader:I

    .line 1133
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedLinksStartRow:I

    .line 1134
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    .line 1135
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedLinksEndRow:I

    add-int/lit8 v0, v2, 0x1

    .line 1136
    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->revokeAllDivider:I

    add-int/lit8 v2, v0, 0x1

    .line 1137
    iput v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokeAllRow:I

    .line 1140
    :cond_17
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->loadAdmins:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->loadRevoked:Z

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksLoading:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->hasMore:Z

    if-eqz v0, :cond_19

    :cond_18
    if-nez v1, :cond_19

    .line 1141
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->linksLoadingRow:I

    .line 1144
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->invites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->revokedInvites:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1145
    :cond_1a
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->lastDivider:I

    .line 1148
    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1c

    .line 1149
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1c
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 6

    .line 1155
    invoke-super {p0, p1}, Lcom/iMe/ui/base/mvp/MvpFragment;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 1156
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 1157
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 1159
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingCalculatorType:Z

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->staking_calculator_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1161
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    sget v2, Lcom/iMe/common/IdFabric$Menu;->STAKING_HELP:I

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_info:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    goto :goto_0

    .line 1162
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinancePayCreateCollectionType:Z

    if-eqz v0, :cond_1

    .line 1163
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

    .line 1164
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isDonationsType:Z

    if-eqz v0, :cond_2

    .line 1165
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

    .line 1167
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$string;->InviteLinks:I

    const-string v3, "InviteLinks"

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1168
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ManageLinksActivity$5;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 1184
    new-instance v0, Lorg/telegram/ui/ManageLinksActivity$6;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$6;-><init>(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 1197
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1198
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1199
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1202
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->isForkScreenType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1203
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 1204
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 1208
    :cond_3
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1209
    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$7;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v1, v3}, Lorg/telegram/ui/ManageLinksActivity$7;-><init>(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/Context;IZ)V

    .line 1215
    iget-object v4, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1216
    iget-object v4, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$ListAdapter;-><init>(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1217
    iget-object v4, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/ManageLinksActivity$8;

    invoke-direct {v5, p0, v2}, Lorg/telegram/ui/ManageLinksActivity$8;-><init>(Lorg/telegram/ui/ManageLinksActivity;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1229
    new-instance v2, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    iget-object v4, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, v4, v3}, Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Z)V

    iput-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->recyclerItemsEnterAnimator:Lorg/telegram/ui/Components/RecyclerItemsEnterAnimator;

    .line 1230
    new-instance v2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    .line 1231
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 1232
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 1233
    iget-object v3, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1234
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVerticalScrollbarPosition(I)V

    .line 1235
    iget-object v2, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, -0x1

    invoke-static {v3, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1237
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/ManageLinksActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1311
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1321
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_link_1:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->linkIcon:Landroid/graphics/drawable/Drawable;

    .line 1322
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_link_2:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->linkIconRevoked:Landroid/graphics/drawable/Drawable;

    .line 1323
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->linkIcon:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1324
    invoke-direct {p0, v1}, Lorg/telegram/ui/ManageLinksActivity;->updateRows(Z)V

    .line 1326
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

    .line 1327
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public deleteLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 4

    .line 2373
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteExportedChatInvite;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteExportedChatInvite;-><init>()V

    .line 2374
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteExportedChatInvite;->link:Ljava/lang/String;

    .line 2375
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_deleteExportedChatInvite;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2376
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 268
    sget p3, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    if-ne p1, p3, :cond_0

    .line 269
    iget-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->isDonationsType:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    if-eqz p1, :cond_0

    .line 270
    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getConnectionState()I

    move-result p1

    .line 271
    iget-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {p2, p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->checkLoadedDataOnConnectionChanged(I)V

    :cond_0
    return-void
.end method

.method public editLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 4

    .line 2384
    new-instance v0, Lorg/telegram/ui/LinkEditActivity;

    iget-wide v1, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lorg/telegram/ui/LinkEditActivity;-><init>(IJ)V

    .line 2385
    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->linkEditActivityCallback:Lorg/telegram/ui/LinkEditActivity$Callback;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LinkEditActivity;->setCallback(Lorg/telegram/ui/LinkEditActivity$Callback;)V

    .line 2386
    invoke-virtual {v0, p1}, Lorg/telegram/ui/LinkEditActivity;->setInviteToEdit(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    .line 2387
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public fixDate(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 4

    .line 2648
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->expire_date:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    .line 2649
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

    .line 2650
    :cond_1
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->usage_limit:I

    if-lez v0, :cond_3

    .line 2651
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

    .line 2657
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2659
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

    .line 2660
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

    .line 2661
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

    .line 2662
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v25, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    new-array v5, v12, [Ljava/lang/Class;

    const-class v6, Lcom/iMe/ui/custom/TransactionActionButtonsView;

    aput-object v6, v5, v13

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v5

    invoke-direct/range {v23 .. v30}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2663
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

    .line 2664
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

    .line 2665
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

    .line 2668
    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda26;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    .line 2714
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

    .line 2715
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

    .line 2716
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

    .line 2718
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    move-object v14, v3

    move/from16 v21, v11

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2719
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2720
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object v14, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2721
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2722
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v14, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2724
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ManageLinksActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2726
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

    .line 2728
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

    .line 2729
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

    .line 2731
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

    .line 2732
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

    .line 2733
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

    .line 2734
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

    .line 2735
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundRed:I

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object v14, v3

    move-object/from16 v20, v2

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2736
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    move-object v14, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2737
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    move-object v14, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2738
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    move-object v14, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2739
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    move-object v14, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2740
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    move-object v14, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2741
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    move-object v14, v3

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2743
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

    .line 2745
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

    .line 2746
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

    .line 2747
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

    .line 2748
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

    .line 2750
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

    .line 2751
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

    .line 2752
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

    .line 2753
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

    .line 2755
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

    .line 2756
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

    .line 2757
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

    .line 371
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

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsTransactions:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 377
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->updateRows(Z)V

    return-void
.end method

.method public onFragmentCreate()Z
    .locals 4

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    const/4 v1, -0x1

    const-string v2, "screen_type"

    .line 284
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ManageLinksActivity;->screenType:I

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v1, "binance_pay_args"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    .line 286
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v2, "staking_args"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/iMe/model/staking/StakingDetailsItem;

    .line 287
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v3, "staking_preset_amount"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    if-eqz v0, :cond_0

    .line 290
    iput-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->binancePayScreenArgs:Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 292
    iput-object v1, p0, Lorg/telegram/ui/ManageLinksActivity;->stakingDetails:Lcom/iMe/model/staking/StakingDetailsItem;

    .line 294
    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->screenType:I

    sget v1, Lorg/telegram/ui/ManageLinksActivity;->BINANCE_PAY_CREATE_COLLECTION_SCREEN_TYPE:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinancePayCreateCollectionType:Z

    .line 295
    sget v1, Lorg/telegram/ui/ManageLinksActivity;->STAKING_CALCULATOR_SCREEN_TYPE:I

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lorg/telegram/ui/ManageLinksActivity;->isStakingCalculatorType:Z

    .line 297
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didUpdateConnectionState:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 298
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 303
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 304
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

    .line 393
    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_0

    .line 394
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->showCameraScanner()V

    goto :goto_0

    .line 396
    :cond_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 397
    sget p2, Lorg/telegram/messenger/R$string;->AppName:I

    const-string p3, "AppName"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 398
    sget p2, Lorg/telegram/messenger/R$string;->QRCodePermissionNoCameraWithHint:I

    const-string p3, "QRCodePermissionNoCameraWithHint"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 399
    sget p2, Lorg/telegram/messenger/R$string;->PermissionOpenSettings:I

    const-string p3, "PermissionOpenSettings"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 408
    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    const-string p3, "OK"

    invoke-static {p3, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 409
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1342
    invoke-super {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->onResume()V

    .line 1343
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 1344
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    .line 2770
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2772
    iput-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->isOpened:Z

    if-eqz p2, :cond_0

    .line 2773
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->inviteLinkBottomSheet:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    if-eqz p1, :cond_0

    iget-boolean p2, p1, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->isNeedReopen:Z

    if-eqz p2, :cond_0

    .line 2774
    invoke-virtual {p1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->show()V

    .line 2777
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    return-void
.end method

.method public onTransitionAnimationStart(ZZ)V
    .locals 0

    .line 2782
    invoke-super {p0, p1, p2}, Lcom/iMe/ui/base/mvp/MvpFragment;->onTransitionAnimationStart(ZZ)V

    .line 2783
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    return-void
.end method

.method public openChatScreen(J)V
    .locals 2

    .line 329
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user_id"

    .line 330
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 331
    new-instance p1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method public openDepositScreen(Lcom/iMe/model/staking/StakingDetailsItem;D)V
    .locals 0

    .line 349
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    sget-object p3, Lcom/iMe/model/wallet/staking/StakingScreenType;->STAKING_REPLENISH_SCREEN_TYPE:Lcom/iMe/model/wallet/staking/StakingScreenType;

    .line 348
    invoke-static {p2, p3, p1}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;->newInstance(Ljava/lang/Double;Lcom/iMe/model/wallet/staking/StakingScreenType;Lcom/iMe/model/staking/StakingDetailsItem;)Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionFragment;

    move-result-object p1

    .line 347
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method provideBinanceReceivePresenter()Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;
    .locals 3
    .annotation runtime Lmoxy/presenter/ProvidePresenter;
    .end annotation

    .line 167
    const-class v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/receive/WalletReceiveBinancePayPresenter;

    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

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

    .line 172
    const-class v0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    return-object v0
.end method

.method provideStakingCalculatorPresenter()Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;
    .locals 3
    .annotation runtime Lmoxy/presenter/ProvidePresenter;
    .end annotation

    .line 177
    const-class v0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ManageLinksActivity;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/koin/java/KoinJavaComponent;->get(Ljava/lang/Class;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    return-object v0
.end method

.method public revokeLink(Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V
    .locals 4

    .line 2391
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;-><init>()V

    .line 2392
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;->link:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->link:Ljava/lang/String;

    const/4 v1, 0x1

    .line 2393
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->revoked:Z

    .line 2394
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChatId:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2395
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)V
    .locals 0

    .line 1331
    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1332
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iput-object p2, p0, Lorg/telegram/ui/ManageLinksActivity;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    .line 1334
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ManageLinksActivity;->isPublic:Z

    .line 1336
    invoke-direct {p0}, Lorg/telegram/ui/ManageLinksActivity;->isForkScreenType()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1337
    invoke-direct {p0, p1}, Lorg/telegram/ui/ManageLinksActivity;->loadLinks(Z)V

    :cond_0
    return-void
.end method

.method public shouldAskPinCode()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isBinancePayCreateCollectionType:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ManageLinksActivity;->isDonationsType:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->donationsPresenter:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->isCryptoAddressCreated()Z

    move-result v0

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

.method public showBalance(Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 1

    .line 336
    iget-object p1, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget v0, p0, Lorg/telegram/ui/ManageLinksActivity;->inputHeaderRow:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public showConfirmDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 2

    .line 387
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

    .line 309
    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    return-void
.end method

.method public showLevelRequiredDialog(Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 2

    .line 358
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->resourceManager:Lkotlin/Lazy;

    .line 360
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    new-instance v1, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ManageLinksActivity;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 358
    invoke-static {p0, v0, p1, v1}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showStakingLevelRequiredDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public showSelectTokenDialog(Lcom/iMe/model/wallet/select/SelectTokenScreenType;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/select/SelectTokenScreenType;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/iMe/fork/utils/Callbacks$Callback2<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "Lcom/iMe/storage/domain/model/wallet/token/FiatValue;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 314
    invoke-static {p1, v0, p2, p3, p4}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;->newInstance(Lcom/iMe/model/wallet/select/SelectTokenScreenType;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback2;)Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public updateScreenAfterLoad()V
    .locals 1

    const/4 v0, 0x1

    .line 382
    invoke-direct {p0, v0}, Lorg/telegram/ui/ManageLinksActivity;->updateRows(Z)V

    return-void
.end method

.method public updateSelectedToken()V
    .locals 2

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->selectTokenRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public updateSelectedUser()V
    .locals 2

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->chooseContactRow:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public updateStakingCalculatorViews()V
    .locals 3

    const/4 v0, 0x0

    .line 341
    invoke-direct {p0, v0}, Lorg/telegram/ui/ManageLinksActivity;->updateRows(Z)V

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity;->listViewAdapter:Lorg/telegram/ui/ManageLinksActivity$ListAdapter;

    iget v1, p0, Lorg/telegram/ui/ManageLinksActivity;->selectTokenRow:I

    iget v2, p0, Lorg/telegram/ui/ManageLinksActivity;->rowCount:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method
