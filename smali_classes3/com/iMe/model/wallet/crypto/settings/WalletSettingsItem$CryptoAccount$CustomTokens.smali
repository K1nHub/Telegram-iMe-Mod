.class public final Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$CustomTokens;
.super Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem;
.source "WalletSettingsItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomTokens"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$CustomTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$CustomTokens;

    invoke-direct {v0}, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$CustomTokens;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$CustomTokens;->INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$CryptoAccount$CustomTokens;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 62
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_custom_tokens:I

    .line 63
    sget v1, Lorg/telegram/messenger/R$string;->wallet_custom_tokens_title:I

    .line 64
    sget v2, Lorg/telegram/messenger/R$string;->wallet_custom_tokens_subtitle:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    .line 61
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem;-><init>(IILjava/lang/Integer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
