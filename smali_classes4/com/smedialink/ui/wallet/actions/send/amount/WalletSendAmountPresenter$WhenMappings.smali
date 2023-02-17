.class public final synthetic Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$WhenMappings;
.super Ljava/lang/Object;
.source "WalletSendAmountPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter;
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
    .locals 4

    invoke-static {}, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;->values()[Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;->SEND:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;->PREPARE:Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$SendScreenState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sput-object v0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->values()[Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->TON:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sput-object v0, Lcom/smedialink/ui/wallet/actions/send/amount/WalletSendAmountPresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
