.class public final enum Lcom/iMe/model/wallet/home/BannerSlide;
.super Ljava/lang/Enum;
.source "BannerSlide.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/wallet/home/BannerSlide$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/model/wallet/home/BannerSlide;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/model/wallet/home/BannerSlide;

.field public static final enum ASCENDEEX:Lcom/iMe/model/wallet/home/BannerSlide;

.field public static final enum BINANCE_PAY_FAQ:Lcom/iMe/model/wallet/home/BannerSlide;

.field public static final enum BINANCE_PAY_INFORMATION:Lcom/iMe/model/wallet/home/BannerSlide;

.field public static final enum BINANCE_PAY_MARKETPLACE:Lcom/iMe/model/wallet/home/BannerSlide;

.field public static final enum BINANCE_PAY_OPERATION_WITHOUT_FEE:Lcom/iMe/model/wallet/home/BannerSlide;

.field public static final enum CRYPTO_TRANSFERS:Lcom/iMe/model/wallet/home/BannerSlide;

.field public static final Companion:Lcom/iMe/model/wallet/home/BannerSlide$Companion;

.field public static final enum FAQ:Lcom/iMe/model/wallet/home/BannerSlide;

.field public static final enum GATE:Lcom/iMe/model/wallet/home/BannerSlide;

.field public static final enum MULTI_NETWORKS:Lcom/iMe/model/wallet/home/BannerSlide;

.field public static final enum NON_CUSTODIAL:Lcom/iMe/model/wallet/home/BannerSlide;

.field public static final enum SAFE:Lcom/iMe/model/wallet/home/BannerSlide;

.field public static final enum STAKING:Lcom/iMe/model/wallet/home/BannerSlide;

.field public static final enum SWAP:Lcom/iMe/model/wallet/home/BannerSlide;


# instance fields
.field private final action:I

.field private final animatedIcon:I

.field private final longDescription:I

.field private final shortDescription:I

.field private final title:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/model/wallet/home/BannerSlide;
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/iMe/model/wallet/home/BannerSlide;

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->FAQ:Lcom/iMe/model/wallet/home/BannerSlide;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->NON_CUSTODIAL:Lcom/iMe/model/wallet/home/BannerSlide;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->SAFE:Lcom/iMe/model/wallet/home/BannerSlide;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->CRYPTO_TRANSFERS:Lcom/iMe/model/wallet/home/BannerSlide;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->SWAP:Lcom/iMe/model/wallet/home/BannerSlide;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->MULTI_NETWORKS:Lcom/iMe/model/wallet/home/BannerSlide;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->GATE:Lcom/iMe/model/wallet/home/BannerSlide;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->ASCENDEEX:Lcom/iMe/model/wallet/home/BannerSlide;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->STAKING:Lcom/iMe/model/wallet/home/BannerSlide;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->BINANCE_PAY_INFORMATION:Lcom/iMe/model/wallet/home/BannerSlide;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->BINANCE_PAY_OPERATION_WITHOUT_FEE:Lcom/iMe/model/wallet/home/BannerSlide;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->BINANCE_PAY_MARKETPLACE:Lcom/iMe/model/wallet/home/BannerSlide;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/BannerSlide;->BINANCE_PAY_FAQ:Lcom/iMe/model/wallet/home/BannerSlide;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 19

    .line 15
    new-instance v8, Lcom/iMe/model/wallet/home/BannerSlide;

    .line 16
    sget v3, Lorg/telegram/messenger/R$string;->wallet_banner_slide_faq_title:I

    .line 17
    sget v4, Lorg/telegram/messenger/R$string;->wallet_banner_slide_faq_description:I

    .line 18
    sget v5, Lorg/telegram/messenger/R$string;->wallet_banner_slide_faq_long_description:I

    .line 19
    sget v17, Lorg/telegram/messenger/R$string;->common_next:I

    .line 20
    sget v7, Lorg/telegram/messenger/R$raw;->fork_faq:I

    const-string v1, "FAQ"

    const/4 v2, 0x0

    move-object v0, v8

    move/from16 v6, v17

    .line 15
    invoke-direct/range {v0 .. v7}, Lcom/iMe/model/wallet/home/BannerSlide;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v8, Lcom/iMe/model/wallet/home/BannerSlide;->FAQ:Lcom/iMe/model/wallet/home/BannerSlide;

    .line 22
    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide;

    .line 23
    sget v12, Lorg/telegram/messenger/R$string;->wallet_banner_slide_non_custodial_title:I

    .line 24
    sget v13, Lorg/telegram/messenger/R$string;->wallet_banner_slide_non_custodial_description:I

    .line 25
    sget v14, Lorg/telegram/messenger/R$string;->wallet_banner_slide_non_custodial_long_description:I

    .line 26
    sget v15, Lorg/telegram/messenger/R$string;->wallet_eth_backup_info_start_dialog_title:I

    .line 27
    sget v16, Lorg/telegram/messenger/R$raw;->fork_non_custodial:I

    const-string v10, "NON_CUSTODIAL"

    const/4 v11, 0x1

    move-object v9, v0

    .line 22
    invoke-direct/range {v9 .. v16}, Lcom/iMe/model/wallet/home/BannerSlide;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide;->NON_CUSTODIAL:Lcom/iMe/model/wallet/home/BannerSlide;

    .line 29
    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide;

    .line 30
    sget v4, Lorg/telegram/messenger/R$string;->wallet_banner_slide_safe_title:I

    .line 31
    sget v5, Lorg/telegram/messenger/R$string;->wallet_banner_slide_safe_description:I

    .line 32
    sget v6, Lorg/telegram/messenger/R$string;->wallet_banner_slide_safe_long_description:I

    .line 33
    sget v18, Lorg/telegram/messenger/R$string;->common_ok:I

    .line 34
    sget v8, Lorg/telegram/messenger/R$raw;->fork_safe:I

    const-string v2, "SAFE"

    const/4 v3, 0x2

    move-object v1, v0

    move/from16 v7, v18

    .line 29
    invoke-direct/range {v1 .. v8}, Lcom/iMe/model/wallet/home/BannerSlide;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide;->SAFE:Lcom/iMe/model/wallet/home/BannerSlide;

    .line 36
    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide;

    .line 37
    sget v12, Lorg/telegram/messenger/R$string;->wallet_banner_slide_crypto_transfers_title:I

    .line 38
    sget v13, Lorg/telegram/messenger/R$string;->wallet_banner_slide_crypto_transfers_description:I

    .line 39
    sget v14, Lorg/telegram/messenger/R$string;->wallet_banner_slide_crypto_transfers_long_description:I

    .line 40
    sget v15, Lorg/telegram/messenger/R$string;->transfer_via_wallet_action_item:I

    .line 41
    sget v16, Lorg/telegram/messenger/R$raw;->fork_crypto_transfers:I

    const-string v10, "CRYPTO_TRANSFERS"

    const/4 v11, 0x3

    move-object v9, v0

    .line 36
    invoke-direct/range {v9 .. v16}, Lcom/iMe/model/wallet/home/BannerSlide;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide;->CRYPTO_TRANSFERS:Lcom/iMe/model/wallet/home/BannerSlide;

    .line 43
    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide;

    .line 44
    sget v4, Lorg/telegram/messenger/R$string;->wallet_banner_slide_swap_title:I

    .line 45
    sget v5, Lorg/telegram/messenger/R$string;->wallet_banner_slide_swap_description:I

    .line 46
    sget v6, Lorg/telegram/messenger/R$string;->wallet_banner_slide_swap_long_description:I

    .line 47
    sget v7, Lorg/telegram/messenger/R$string;->wallet_swap_process_button_exchange:I

    .line 48
    sget v8, Lorg/telegram/messenger/R$raw;->fork_swap:I

    const-string v2, "SWAP"

    const/4 v3, 0x4

    move-object v1, v0

    .line 43
    invoke-direct/range {v1 .. v8}, Lcom/iMe/model/wallet/home/BannerSlide;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide;->SWAP:Lcom/iMe/model/wallet/home/BannerSlide;

    .line 50
    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide;

    .line 51
    sget v10, Lorg/telegram/messenger/R$string;->wallet_banner_slide_multi_networks_title:I

    .line 52
    sget v11, Lorg/telegram/messenger/R$string;->wallet_banner_slide_multi_networks_description:I

    .line 53
    sget v12, Lorg/telegram/messenger/R$string;->wallet_banner_slide_multi_networks_long_description:I

    .line 55
    sget v14, Lorg/telegram/messenger/R$raw;->fork_multi_networking:I

    const-string v8, "MULTI_NETWORKS"

    const/4 v9, 0x5

    move-object v7, v0

    move/from16 v13, v18

    .line 50
    invoke-direct/range {v7 .. v14}, Lcom/iMe/model/wallet/home/BannerSlide;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide;->MULTI_NETWORKS:Lcom/iMe/model/wallet/home/BannerSlide;

    .line 57
    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide;

    .line 58
    sget v12, Lorg/telegram/messenger/R$string;->wallet_banner_slide_gate_title:I

    .line 59
    sget v13, Lorg/telegram/messenger/R$string;->wallet_banner_slide_gate_description:I

    .line 60
    sget v14, Lorg/telegram/messenger/R$string;->wallet_banner_slide_gate_long_description:I

    .line 62
    sget v16, Lorg/telegram/messenger/R$raw;->fork_gate:I

    const-string v10, "GATE"

    const/4 v11, 0x6

    move-object v9, v0

    move/from16 v15, v17

    .line 57
    invoke-direct/range {v9 .. v16}, Lcom/iMe/model/wallet/home/BannerSlide;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide;->GATE:Lcom/iMe/model/wallet/home/BannerSlide;

    .line 64
    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide;

    .line 65
    sget v12, Lorg/telegram/messenger/R$string;->wallet_banner_slide_ascendeex_title:I

    .line 66
    sget v13, Lorg/telegram/messenger/R$string;->wallet_banner_slide_ascendeex_description:I

    .line 67
    sget v14, Lorg/telegram/messenger/R$string;->wallet_banner_slide_ascendeex_long_description:I

    .line 69
    sget v16, Lorg/telegram/messenger/R$raw;->fork_ascendeex:I

    const-string v10, "ASCENDEEX"

    const/4 v11, 0x7

    move-object v9, v0

    .line 64
    invoke-direct/range {v9 .. v16}, Lcom/iMe/model/wallet/home/BannerSlide;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide;->ASCENDEEX:Lcom/iMe/model/wallet/home/BannerSlide;

    .line 71
    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide;

    .line 72
    sget v12, Lorg/telegram/messenger/R$string;->wallet_banner_slide_staking_title:I

    .line 73
    sget v13, Lorg/telegram/messenger/R$string;->wallet_banner_slide_staking_description:I

    .line 74
    sget v14, Lorg/telegram/messenger/R$string;->wallet_banner_slide_staking_long_description:I

    .line 76
    sget v16, Lorg/telegram/messenger/R$raw;->fork_staking_banner:I

    const-string v10, "STAKING"

    const/16 v11, 0x8

    move-object v9, v0

    .line 71
    invoke-direct/range {v9 .. v16}, Lcom/iMe/model/wallet/home/BannerSlide;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide;->STAKING:Lcom/iMe/model/wallet/home/BannerSlide;

    .line 78
    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide;

    .line 79
    sget v10, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_information_title:I

    .line 80
    sget v11, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_information_description:I

    .line 81
    sget v12, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_information_long_description:I

    .line 83
    sget v14, Lorg/telegram/messenger/R$raw;->fork_binance_pay_information:I

    const-string v8, "BINANCE_PAY_INFORMATION"

    const/16 v9, 0x9

    move-object v7, v0

    move/from16 v13, v18

    .line 78
    invoke-direct/range {v7 .. v14}, Lcom/iMe/model/wallet/home/BannerSlide;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide;->BINANCE_PAY_INFORMATION:Lcom/iMe/model/wallet/home/BannerSlide;

    .line 85
    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide;

    .line 86
    sget v10, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_operation_without_fee_title:I

    .line 87
    sget v11, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_operation_without_fee_description:I

    .line 88
    sget v12, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_operation_without_fee_long_description:I

    .line 90
    sget v14, Lorg/telegram/messenger/R$raw;->fork_binance_pay_operation_without_fee:I

    const-string v8, "BINANCE_PAY_OPERATION_WITHOUT_FEE"

    const/16 v9, 0xa

    move-object v7, v0

    .line 85
    invoke-direct/range {v7 .. v14}, Lcom/iMe/model/wallet/home/BannerSlide;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide;->BINANCE_PAY_OPERATION_WITHOUT_FEE:Lcom/iMe/model/wallet/home/BannerSlide;

    .line 92
    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide;

    .line 93
    sget v12, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_marketplace_title:I

    .line 94
    sget v13, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_marketplace_description:I

    .line 95
    sget v14, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_marketplace_long_description:I

    .line 97
    sget v16, Lorg/telegram/messenger/R$raw;->fork_binance_pay_marketplace:I

    const-string v10, "BINANCE_PAY_MARKETPLACE"

    const/16 v11, 0xb

    move-object v9, v0

    .line 92
    invoke-direct/range {v9 .. v16}, Lcom/iMe/model/wallet/home/BannerSlide;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide;->BINANCE_PAY_MARKETPLACE:Lcom/iMe/model/wallet/home/BannerSlide;

    .line 99
    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide;

    .line 100
    sget v12, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_faq_title:I

    .line 101
    sget v13, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_faq_description:I

    .line 102
    sget v14, Lorg/telegram/messenger/R$string;->wallet_banner_slide_binance_pay_faq_long_description:I

    .line 104
    sget v16, Lorg/telegram/messenger/R$raw;->fork_binance_pay_faq:I

    const-string v10, "BINANCE_PAY_FAQ"

    const/16 v11, 0xc

    move-object v9, v0

    .line 99
    invoke-direct/range {v9 .. v16}, Lcom/iMe/model/wallet/home/BannerSlide;-><init>(Ljava/lang/String;IIIIII)V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide;->BINANCE_PAY_FAQ:Lcom/iMe/model/wallet/home/BannerSlide;

    invoke-static {}, Lcom/iMe/model/wallet/home/BannerSlide;->$values()[Lcom/iMe/model/wallet/home/BannerSlide;

    move-result-object v0

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide;->$VALUES:[Lcom/iMe/model/wallet/home/BannerSlide;

    new-instance v0, Lcom/iMe/model/wallet/home/BannerSlide$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/model/wallet/home/BannerSlide$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/model/wallet/home/BannerSlide;->Companion:Lcom/iMe/model/wallet/home/BannerSlide$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput p3, p0, Lcom/iMe/model/wallet/home/BannerSlide;->title:I

    .line 10
    iput p4, p0, Lcom/iMe/model/wallet/home/BannerSlide;->shortDescription:I

    .line 11
    iput p5, p0, Lcom/iMe/model/wallet/home/BannerSlide;->longDescription:I

    .line 12
    iput p6, p0, Lcom/iMe/model/wallet/home/BannerSlide;->action:I

    .line 13
    iput p7, p0, Lcom/iMe/model/wallet/home/BannerSlide;->animatedIcon:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/model/wallet/home/BannerSlide;
    .locals 1

    const-class v0, Lcom/iMe/model/wallet/home/BannerSlide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/model/wallet/home/BannerSlide;

    return-object p0
.end method

.method public static values()[Lcom/iMe/model/wallet/home/BannerSlide;
    .locals 1

    sget-object v0, Lcom/iMe/model/wallet/home/BannerSlide;->$VALUES:[Lcom/iMe/model/wallet/home/BannerSlide;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/model/wallet/home/BannerSlide;

    return-object v0
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/iMe/model/wallet/home/BannerSlide;->action:I

    return v0
.end method

.method public final getActionButtonText(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;)I
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/iMe/model/wallet/home/BannerSlide;->SWAP:Lcom/iMe/model/wallet/home/BannerSlide;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/iMe/model/wallet/home/BannerSlide;->NON_CUSTODIAL:Lcom/iMe/model/wallet/home/BannerSlide;

    if-eq p0, v0, :cond_0

    invoke-virtual {p0}, Lcom/iMe/model/wallet/home/BannerSlide;->getAction()I

    move-result p1

    return p1

    .line 111
    :cond_0
    invoke-interface {p1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/iMe/model/wallet/home/BannerSlide;->getAction()I

    move-result p1

    goto :goto_0

    .line 112
    :cond_1
    sget p1, Lorg/telegram/messenger/R$string;->common_ok:I

    :goto_0
    return p1
.end method

.method public getAnimatedIcon()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/iMe/model/wallet/home/BannerSlide;->animatedIcon:I

    return v0
.end method

.method public getLongDescription()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/iMe/model/wallet/home/BannerSlide;->longDescription:I

    return v0
.end method

.method public getShortDescription()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/iMe/model/wallet/home/BannerSlide;->shortDescription:I

    return v0
.end method

.method public getTitle()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/iMe/model/wallet/home/BannerSlide;->title:I

    return v0
.end method
