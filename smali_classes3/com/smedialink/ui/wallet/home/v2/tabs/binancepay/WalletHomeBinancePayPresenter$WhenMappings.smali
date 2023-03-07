.class public final synthetic Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter$WhenMappings;
.super Ljava/lang/Object;
.source "WalletHomeBinancePayPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;->values()[Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;->ALPHABET:Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;->BALANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;->DEFAULT:Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/WalletHomeBinancePayPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
