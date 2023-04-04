.class public final Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$WalletConnect;
.super Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem;
.source "WalletSettingsItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WalletConnect"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$WalletConnect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$WalletConnect;

    invoke-direct {v0}, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$WalletConnect;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$WalletConnect;->INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$WalletConnect;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 26
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_wallet_connect:I

    .line 27
    sget v1, Lorg/telegram/messenger/R$string;->wallet_connect_title:I

    .line 28
    sget v2, Lorg/telegram/messenger/R$string;->wallet_connect_subtitle:I

    const/4 v3, 0x0

    .line 25
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
