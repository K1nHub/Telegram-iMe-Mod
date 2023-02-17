.class public final Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$PinCode;
.super Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;
.source "WalletSettingsItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PinCode"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$PinCode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$PinCode;

    invoke-direct {v0}, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$PinCode;-><init>()V

    sput-object v0, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$PinCode;->INSTANCE:Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem$PinCode;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 32
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_lock:I

    .line 33
    sget v1, Lorg/telegram/messenger/R$string;->wallet_settings_pin_code_title:I

    .line 34
    sget v2, Lorg/telegram/messenger/R$string;->wallet_settings_pin_code_subtitle:I

    const/4 v3, 0x0

    .line 31
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/smedialink/model/wallet/crypto/settings/WalletSettingsItem;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
