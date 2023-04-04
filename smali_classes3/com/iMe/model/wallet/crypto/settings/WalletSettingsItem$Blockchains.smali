.class public final Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Blockchains;
.super Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem;
.source "WalletSettingsItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Blockchains"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Blockchains;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Blockchains;

    invoke-direct {v0}, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Blockchains;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Blockchains;->INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Blockchains;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 14
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_blockchain:I

    .line 15
    sget v1, Lorg/telegram/messenger/R$string;->wallet_crypto_blockchains_title:I

    .line 16
    sget v2, Lorg/telegram/messenger/R$string;->wallet_crypto_blockchains_item_description:I

    const/4 v3, 0x0

    .line 13
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
