.class public final synthetic Lcom/iMe/ui/wallet/settings/WalletSettingsFragment$WhenMappings;
.super Ljava/lang/Object;
.source "WalletSettingsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;
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

    invoke-static {}, Lcom/iMe/model/wallet/settings/SettingMenuItem;->values()[Lcom/iMe/model/wallet/settings/SettingMenuItem;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/iMe/model/wallet/settings/SettingMenuItem;->HELP:Lcom/iMe/model/wallet/settings/SettingMenuItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/iMe/model/wallet/settings/SettingMenuItem;->CRYPTO_ACCOUNT:Lcom/iMe/model/wallet/settings/SettingMenuItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/iMe/model/wallet/settings/SettingMenuItem;->INTERFACE:Lcom/iMe/model/wallet/settings/SettingMenuItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
