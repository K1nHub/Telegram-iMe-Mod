.class public final synthetic Lcom/iMe/ui/wallet/send/WalletSendFragment$WhenMappings;
.super Ljava/lang/Object;
.source "WalletSendFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/send/WalletSendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/iMe/model/wallet/send/WalletSendScreenType;->values()[Lcom/iMe/model/wallet/send/WalletSendScreenType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/iMe/model/wallet/send/WalletSendScreenType;->WALLET_TRANSFER:Lcom/iMe/model/wallet/send/WalletSendScreenType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/iMe/model/wallet/send/WalletSendScreenType;->BINANCE_REPLENISH:Lcom/iMe/model/wallet/send/WalletSendScreenType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/iMe/model/wallet/send/WalletSendScreenType;->WALLET_TRANSFER_DONATIONS:Lcom/iMe/model/wallet/send/WalletSendScreenType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lcom/iMe/ui/wallet/send/WalletSendFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;->values()[Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_3
    sget-object v4, Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;->PREPARE:Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;->LOADING:Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;->SEND:Lcom/iMe/ui/wallet/send/WalletSendPresenter$SendScreenState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    sput-object v0, Lcom/iMe/ui/wallet/send/WalletSendFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
