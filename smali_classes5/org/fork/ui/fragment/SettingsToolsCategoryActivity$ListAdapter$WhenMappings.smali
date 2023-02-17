.class public final synthetic Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter$WhenMappings;
.super Ljava/lang/Object;
.source "SettingsToolsCategoryActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter;
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

    invoke-static {}, Lorg/fork/enums/SettingsToolsCategory;->values()[Lorg/fork/enums/SettingsToolsCategory;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_CUSTOMIZATION:Lorg/fork/enums/SettingsToolsCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_SIDE_MENU:Lorg/fork/enums/SettingsToolsCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_BASIC_TOOLBAR:Lorg/fork/enums/SettingsToolsCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_CHAT_PROFILE:Lorg/fork/enums/SettingsToolsCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_CLOUD:Lorg/fork/enums/SettingsToolsCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_CHAT_LIST_VIEW:Lorg/fork/enums/SettingsToolsCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_CHATS:Lorg/fork/enums/SettingsToolsCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_MESSAGES:Lorg/fork/enums/SettingsToolsCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_REACTIONS_BUTTON:Lorg/fork/enums/SettingsToolsCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_CONFIRMATION:Lorg/fork/enums/SettingsToolsCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sput-object v0, Lorg/fork/ui/fragment/SettingsToolsCategoryActivity$ListAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
