.class public final synthetic Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$WhenMappings;
.super Ljava/lang/Object;
.source "WalletHomeCryptoPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter;
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

    invoke-static {}, Lcom/smedialink/storage/domain/model/wallet/token/TokenType;->values()[Lcom/smedialink/storage/domain/model/wallet/token/TokenType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenType;->CRYPTO:Lcom/smedialink/storage/domain/model/wallet/token/TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenType;->FIAT:Lcom/smedialink/storage/domain/model/wallet/token/TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenType;->NFT:Lcom/smedialink/storage/domain/model/wallet/token/TokenType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sput-object v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;->values()[Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;->ALPHABET:Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;->BALANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;->DEFAULT:Lcom/smedialink/storage/domain/model/wallet/token/TokenOrderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sput-object v0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoPresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
