.class public final enum Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;
.super Ljava/lang/Enum;
.source "SettingsHelpBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;

.field public static final enum COMMON_SETTINGS:Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;

.field public static final enum WALLET_SETTINGS:Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;

    sget-object v1, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;->COMMON_SETTINGS:Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;->WALLET_SETTINGS:Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 153
    new-instance v0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;

    const-string v1, "COMMON_SETTINGS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;->COMMON_SETTINGS:Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;

    new-instance v0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;

    const-string v1, "WALLET_SETTINGS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;->WALLET_SETTINGS:Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;

    invoke-static {}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;->$values()[Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;

    move-result-object v0

    sput-object v0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;->$VALUES:[Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;
    .locals 1

    const-class v0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;
    .locals 1

    sget-object v0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;->$VALUES:[Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;

    return-object v0
.end method
