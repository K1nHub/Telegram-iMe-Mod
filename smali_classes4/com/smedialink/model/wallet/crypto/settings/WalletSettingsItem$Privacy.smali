.class public final Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$Privacy;
.super Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;
.source "WalletSettingsItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Privacy"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$Privacy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$Privacy;

    invoke-direct {v0}, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$Privacy;-><init>()V

    sput-object v0, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$Privacy;->INSTANCE:Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$Privacy;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 20
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_crypto_privacy:I

    .line 21
    sget v1, Lorg/telegram/messenger/R$string;->wallet_crypto_privacy_toolbar_title:I

    .line 22
    sget v2, Lorg/telegram/messenger/R$string;->wallet_crypto_privacy_item_description:I

    const/4 v3, 0x0

    .line 19
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
