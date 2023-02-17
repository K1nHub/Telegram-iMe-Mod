.class public final enum Lcom/smedialink/model/wallet/settings/SettingMenuItem;
.super Ljava/lang/Enum;
.source "SettingMenuItem.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/model/wallet/settings/SettingMenuItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/model/wallet/settings/SettingMenuItem;

.field public static final enum ETH_ACCOUNT:Lcom/smedialink/model/wallet/settings/SettingMenuItem;

.field public static final enum HELP:Lcom/smedialink/model/wallet/settings/SettingMenuItem;

.field public static final enum INTERFACE:Lcom/smedialink/model/wallet/settings/SettingMenuItem;


# instance fields
.field private final description:Ljava/lang/Integer;

.field private final icon:I

.field private final title:I


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/model/wallet/settings/SettingMenuItem;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    sget-object v1, Lcom/smedialink/model/wallet/settings/SettingMenuItem;->ETH_ACCOUNT:Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/settings/SettingMenuItem;->INTERFACE:Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/settings/SettingMenuItem;->HELP:Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 13
    new-instance v6, Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_settings_eth_account_title:I

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    const-string v1, "ETH_ACCOUNT"

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/model/wallet/settings/SettingMenuItem;-><init>(Ljava/lang/String;IILjava/lang/Integer;I)V

    sput-object v6, Lcom/smedialink/model/wallet/settings/SettingMenuItem;->ETH_ACCOUNT:Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    .line 14
    new-instance v0, Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    sget v10, Lorg/telegram/messenger/R$string;->wallet_settings_interface_title:I

    sget v12, Lorg/telegram/messenger/R$drawable;->fork_interface_settings:I

    const-string v8, "INTERFACE"

    const/4 v9, 0x1

    const/4 v11, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/smedialink/model/wallet/settings/SettingMenuItem;-><init>(Ljava/lang/String;IILjava/lang/Integer;I)V

    sput-object v0, Lcom/smedialink/model/wallet/settings/SettingMenuItem;->INTERFACE:Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    .line 15
    new-instance v0, Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_settings_help_title:I

    sget v6, Lorg/telegram/messenger/R$drawable;->msg_help:I

    const-string v2, "HELP"

    const/4 v3, 0x2

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/model/wallet/settings/SettingMenuItem;-><init>(Ljava/lang/String;IILjava/lang/Integer;I)V

    sput-object v0, Lcom/smedialink/model/wallet/settings/SettingMenuItem;->HELP:Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    invoke-static {}, Lcom/smedialink/model/wallet/settings/SettingMenuItem;->$values()[Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    move-result-object v0

    sput-object v0, Lcom/smedialink/model/wallet/settings/SettingMenuItem;->$VALUES:[Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Integer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Integer;",
            "I)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput p3, p0, Lcom/smedialink/model/wallet/settings/SettingMenuItem;->title:I

    .line 9
    iput-object p4, p0, Lcom/smedialink/model/wallet/settings/SettingMenuItem;->description:Ljava/lang/Integer;

    .line 10
    iput p5, p0, Lcom/smedialink/model/wallet/settings/SettingMenuItem;->icon:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/model/wallet/settings/SettingMenuItem;
    .locals 1

    const-class v0, Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/model/wallet/settings/SettingMenuItem;
    .locals 1

    sget-object v0, Lcom/smedialink/model/wallet/settings/SettingMenuItem;->$VALUES:[Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    return-object v0
.end method


# virtual methods
.method public final getDescription()Ljava/lang/Integer;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/model/wallet/settings/SettingMenuItem;->description:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getIcon()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/smedialink/model/wallet/settings/SettingMenuItem;->icon:I

    return v0
.end method

.method public final getTitle()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/smedialink/model/wallet/settings/SettingMenuItem;->title:I

    return v0
.end method
