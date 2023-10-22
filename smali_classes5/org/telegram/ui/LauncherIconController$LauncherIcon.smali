.class public final enum Lorg/telegram/ui/LauncherIconController$LauncherIcon;
.super Ljava/lang/Enum;
.source "LauncherIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LauncherIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LauncherIcon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/telegram/ui/LauncherIconController$LauncherIcon;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum AQUA:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum AUTUMN:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum BLACK:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum BLUE_LIGHT:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum BROWN:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum COFFEE:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum DEFAULT:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum GRAY:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum GREEN:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum INDIGO:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum LIME_AQUA:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum LIME_BEP20:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum LIME_BLUE_LIGHT:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum LIME_ERC20:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum LIME_NEURO:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum LIME_POLYGON:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum LIME_SUNSET:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum MELON:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum MINT:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum NEURO:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum NOX:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum PEACH:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum PINK:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum PREMIUM:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum PURPLE:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum RED:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum ROCKET:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum SPACE:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum SPRING:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum STAR:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum SUMMER:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum SUNSET:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum TURBO:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum WHITE:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum WINTER:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

.field public static final enum YELLOW:Lorg/telegram/ui/LauncherIconController$LauncherIcon;


# instance fields
.field public final background:I

.field public final backgroundColor:I

.field private componentName:Landroid/content/ComponentName;

.field public final foreground:I

.field public final key:Ljava/lang/String;

.field public final premium:Z

.field public final title:I


# direct methods
.method static constructor <clinit>()V
    .locals 65

    .line 56
    new-instance v8, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v9, Lorg/telegram/messenger/R$mipmap;->fork_launcher_foreground:I

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_blue:I

    sget v7, Lorg/telegram/messenger/R$color;->ic_launcher_blue_background:I

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const-string v3, "Blue"

    const/4 v4, 0x0

    move-object v0, v8

    move v5, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v8, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->DEFAULT:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 57
    new-instance v10, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v11, Lorg/telegram/messenger/R$mipmap;->fork_launcher_aqua_background:I

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_aqua:I

    const-string v1, "AQUA"

    const/4 v2, 0x1

    const-string v3, "Aqua"

    const/4 v7, 0x0

    move-object v0, v10

    move v4, v11

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v10, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->AQUA:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 58
    new-instance v12, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v13, Lorg/telegram/messenger/R$mipmap;->fork_launcher_sunset_background:I

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_sunset:I

    const-string v1, "SUNSET"

    const/4 v2, 0x2

    const-string v3, "Sunset"

    move-object v0, v12

    move v4, v13

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v12, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->SUNSET:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 59
    new-instance v14, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v15, Lorg/telegram/messenger/R$mipmap;->fork_launcher_blue_light_background:I

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_blue_light:I

    const-string v1, "BLUE_LIGHT"

    const/4 v2, 0x3

    const-string v3, "BlueLight"

    move-object v0, v14

    move v4, v15

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v14, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->BLUE_LIGHT:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 60
    new-instance v16, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v17, Lorg/telegram/messenger/R$mipmap;->fork_launcher_neuro_background:I

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_neuro:I

    const-string v1, "NEURO"

    const/4 v2, 0x4

    const-string v3, "Neuro"

    move-object/from16 v0, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v16, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->NEURO:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 61
    new-instance v26, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v22, Lorg/telegram/messenger/R$mipmap;->fork_launcher_star_background:I

    sget v23, Lorg/telegram/messenger/R$mipmap;->fork_launcher_star_foreground:I

    sget v27, Lorg/telegram/messenger/R$string;->AppIconPremium:I

    const-string v19, "STAR"

    const/16 v20, 0x5

    const-string v21, "Star"

    const/16 v25, 0x0

    move-object/from16 v18, v26

    move/from16 v24, v27

    invoke-direct/range {v18 .. v25}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v26, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->STAR:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 62
    new-instance v18, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v4, Lorg/telegram/messenger/R$mipmap;->fork_launcher_rocket_background:I

    sget v5, Lorg/telegram/messenger/R$mipmap;->fork_launcher_rocket_foreground:I

    sget v34, Lorg/telegram/messenger/R$string;->AppIconTurbo:I

    const-string v1, "ROCKET"

    const/4 v2, 0x6

    const-string v3, "Rocket"

    move-object/from16 v0, v18

    move/from16 v6, v34

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v18, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->ROCKET:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 63
    new-instance v19, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v4, Lorg/telegram/messenger/R$mipmap;->fork_launcher_space_background:I

    sget v41, Lorg/telegram/messenger/R$string;->AppIconNox:I

    const-string v1, "SPACE"

    const/4 v2, 0x7

    const-string v3, "Space"

    move-object/from16 v0, v19

    move v5, v9

    move/from16 v6, v41

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v19, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->SPACE:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 64
    new-instance v20, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v21, Lorg/telegram/messenger/R$mipmap;->fork_launcher_lime_foreground:I

    sget v48, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_lime_erc20:I

    sget v49, Lorg/telegram/messenger/R$color;->ic_launcher_lime_erc20_background:I

    const-string v43, "LIME_ERC20"

    const/16 v44, 0x8

    const-string v45, "LimeERC20"

    const/16 v46, 0x0

    move-object/from16 v42, v20

    move/from16 v47, v21

    invoke-direct/range {v42 .. v49}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v20, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->LIME_ERC20:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 65
    new-instance v22, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_lime_bep20:I

    sget v7, Lorg/telegram/messenger/R$color;->ic_launcher_lime_bep20_background:I

    const-string v1, "LIME_BEP20"

    const/16 v2, 0x9

    const-string v3, "LimeBEP20"

    const/4 v4, 0x0

    move-object/from16 v0, v22

    move/from16 v5, v21

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v22, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->LIME_BEP20:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 66
    new-instance v23, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_lime_polygon:I

    sget v7, Lorg/telegram/messenger/R$color;->ic_launcher_lime_polygon_background:I

    const-string v1, "LIME_POLYGON"

    const/16 v2, 0xa

    const-string v3, "LimePolygon"

    move-object/from16 v0, v23

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v23, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->LIME_POLYGON:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 67
    new-instance v24, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_lime_aqua:I

    const-string v1, "LIME_AQUA"

    const/16 v2, 0xb

    const-string v3, "LimeAqua"

    const/4 v7, 0x0

    move-object/from16 v0, v24

    move v4, v11

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v24, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->LIME_AQUA:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 68
    new-instance v11, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_lime_sunset:I

    const-string v1, "LIME_SUNSET"

    const/16 v2, 0xc

    const-string v3, "LimeSunset"

    move-object v0, v11

    move v4, v13

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v11, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->LIME_SUNSET:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 69
    new-instance v13, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_lime_blue_light:I

    const-string v1, "LIME_BLUE_LIGHT"

    const/16 v2, 0xd

    const-string v3, "LimeBlueLight"

    move-object v0, v13

    move v4, v15

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v13, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->LIME_BLUE_LIGHT:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 70
    new-instance v15, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_lime_neuro:I

    const-string v1, "LIME_NEURO"

    const/16 v2, 0xe

    const-string v3, "LimeNeuro"

    move-object v0, v15

    move/from16 v4, v17

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v15, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->LIME_NEURO:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 71
    new-instance v17, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_black:I

    sget v7, Lorg/telegram/messenger/R$color;->ic_launcher_black_background:I

    const-string v1, "BLACK"

    const/16 v2, 0xf

    const-string v3, "Black"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move v5, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v17, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->BLACK:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 72
    new-instance v21, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v46, Lorg/telegram/messenger/R$mipmap;->fork_launcher_winter_background:I

    sget v47, Lorg/telegram/messenger/R$mipmap;->fork_launcher_winter_foreground:I

    sget v48, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_winter:I

    const-string v43, "WINTER"

    const/16 v44, 0x10

    const-string v45, "Green"

    const/16 v49, 0x0

    move-object/from16 v42, v21

    invoke-direct/range {v42 .. v49}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v21, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->WINTER:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 73
    new-instance v25, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v4, Lorg/telegram/messenger/R$mipmap;->fork_launcher_spring_background:I

    sget v5, Lorg/telegram/messenger/R$mipmap;->fork_launcher_spring_foreground:I

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_spring:I

    const-string v1, "SPRING"

    const/16 v2, 0x11

    const-string v3, "Spring"

    const/4 v7, 0x0

    move-object/from16 v0, v25

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v25, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->SPRING:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 74
    new-instance v50, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v46, Lorg/telegram/messenger/R$mipmap;->fork_launcher_summer_background:I

    sget v47, Lorg/telegram/messenger/R$mipmap;->fork_launcher_summer_foreground:I

    sget v48, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_summer:I

    const-string v43, "SUMMER"

    const/16 v44, 0x12

    const-string v45, "Summer"

    move-object/from16 v42, v50

    invoke-direct/range {v42 .. v49}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v50, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->SUMMER:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 75
    new-instance v43, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v4, Lorg/telegram/messenger/R$mipmap;->fork_launcher_autumn_background:I

    sget v5, Lorg/telegram/messenger/R$mipmap;->fork_launcher_autumn_foreground:I

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_autumn:I

    const-string v1, "AUTUMN"

    const/16 v2, 0x13

    const-string v3, "Autumn"

    move-object/from16 v0, v43

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v43, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->AUTUMN:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 76
    new-instance v44, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_red:I

    sget v7, Lorg/telegram/messenger/R$color;->ic_launcher_red_background:I

    const-string v1, "RED"

    const/16 v2, 0x14

    const-string v3, "Red"

    const/4 v4, 0x0

    move-object/from16 v0, v44

    move v5, v9

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v44, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->RED:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 77
    new-instance v45, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_purple:I

    sget v7, Lorg/telegram/messenger/R$color;->ic_launcher_purple_background:I

    const-string v1, "PURPLE"

    const/16 v2, 0x15

    const-string v3, "Purple"

    move-object/from16 v0, v45

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v45, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->PURPLE:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 78
    new-instance v46, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_pink:I

    sget v7, Lorg/telegram/messenger/R$color;->ic_launcher_pink_background:I

    const-string v1, "PINK"

    const/16 v2, 0x16

    const-string v3, "Pink"

    move-object/from16 v0, v46

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v46, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->PINK:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 79
    new-instance v47, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_indigo:I

    sget v7, Lorg/telegram/messenger/R$color;->ic_launcher_indigo_background:I

    const-string v1, "INDIGO"

    const/16 v2, 0x17

    const-string v3, "Indigo"

    move-object/from16 v0, v47

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v47, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->INDIGO:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 80
    new-instance v48, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_green:I

    sget v7, Lorg/telegram/messenger/R$color;->ic_launcher_green_background:I

    const-string v1, "GREEN"

    const/16 v2, 0x18

    const-string v3, "RealGreen"

    move-object/from16 v0, v48

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v48, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->GREEN:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 81
    new-instance v49, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_mint:I

    sget v7, Lorg/telegram/messenger/R$color;->ic_launcher_mint_background:I

    const-string v1, "MINT"

    const/16 v2, 0x19

    const-string v3, "Mint"

    move-object/from16 v0, v49

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v49, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->MINT:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 82
    new-instance v51, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_yellow:I

    sget v7, Lorg/telegram/messenger/R$color;->ic_launcher_yellow_background:I

    const-string v1, "YELLOW"

    const/16 v2, 0x1a

    const-string v3, "Yellow"

    move-object/from16 v0, v51

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v51, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->YELLOW:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 83
    new-instance v52, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_peach:I

    sget v7, Lorg/telegram/messenger/R$color;->ic_launcher_peach_background:I

    const-string v1, "PEACH"

    const/16 v2, 0x1b

    const-string v3, "Peach"

    move-object/from16 v0, v52

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v52, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->PEACH:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 84
    new-instance v53, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_melon:I

    sget v7, Lorg/telegram/messenger/R$color;->ic_launcher_melon_background:I

    const-string v1, "MELON"

    const/16 v2, 0x1c

    const-string v3, "Melon"

    move-object/from16 v0, v53

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v53, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->MELON:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 85
    new-instance v54, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_coffee:I

    sget v7, Lorg/telegram/messenger/R$color;->ic_launcher_coffee_background:I

    const-string v1, "COFFEE"

    const/16 v2, 0x1d

    const-string v3, "Coffee"

    move-object/from16 v0, v54

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v54, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->COFFEE:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 86
    new-instance v55, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_brown:I

    sget v7, Lorg/telegram/messenger/R$color;->ic_launcher_brown_background:I

    const-string v1, "BROWN"

    const/16 v2, 0x1e

    const-string v3, "Brown"

    move-object/from16 v0, v55

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v55, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->BROWN:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 87
    new-instance v56, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v6, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_gray:I

    sget v7, Lorg/telegram/messenger/R$color;->ic_launcher_gray_background:I

    const-string v1, "GRAY"

    const/16 v2, 0x1f

    const-string v3, "Gray"

    move-object/from16 v0, v56

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v56, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->GRAY:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 88
    new-instance v9, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v62, Lorg/telegram/messenger/R$mipmap;->fork_launcher_white_foreground:I

    sget v63, Lorg/telegram/messenger/R$string;->settings_interface_app_icon_white:I

    sget v64, Lorg/telegram/messenger/R$color;->ic_launcher_white_background:I

    const-string v58, "WHITE"

    const/16 v59, 0x20

    const-string v60, "White"

    const/16 v61, 0x0

    move-object/from16 v57, v9

    invoke-direct/range {v57 .. v64}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v9, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->WHITE:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 90
    new-instance v57, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v4, Lorg/telegram/messenger/R$drawable;->icon_3_background_sa:I

    sget v5, Lorg/telegram/messenger/R$mipmap;->icon_3_foreground_sa:I

    const-string v1, "PREMIUM"

    const/16 v2, 0x21

    const-string v3, "PremiumIcon"

    const/4 v7, 0x1

    move-object/from16 v0, v57

    move/from16 v6, v27

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v57, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->PREMIUM:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 91
    new-instance v0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v32, Lorg/telegram/messenger/R$drawable;->icon_5_background_sa:I

    sget v33, Lorg/telegram/messenger/R$mipmap;->icon_5_foreground_sa:I

    const-string v29, "TURBO"

    const/16 v30, 0x22

    const-string v31, "TurboIcon"

    const/16 v35, 0x1

    move-object/from16 v28, v0

    invoke-direct/range {v28 .. v35}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->TURBO:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    .line 92
    new-instance v1, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    sget v39, Lorg/telegram/messenger/R$drawable;->icon_2_background_sa:I

    sget v40, Lorg/telegram/messenger/R$mipmap;->icon_foreground_sa:I

    const-string v36, "NOX"

    const/16 v37, 0x23

    const-string v38, "NoxIcon"

    const/16 v42, 0x1

    move-object/from16 v35, v1

    invoke-direct/range {v35 .. v42}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v1, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->NOX:Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    const/16 v2, 0x24

    new-array v2, v2, [Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    const/4 v3, 0x1

    aput-object v10, v2, v3

    const/4 v3, 0x2

    aput-object v12, v2, v3

    const/4 v3, 0x3

    aput-object v14, v2, v3

    const/4 v3, 0x4

    aput-object v16, v2, v3

    const/4 v3, 0x5

    aput-object v26, v2, v3

    const/4 v3, 0x6

    aput-object v18, v2, v3

    const/4 v3, 0x7

    aput-object v19, v2, v3

    const/16 v3, 0x8

    aput-object v20, v2, v3

    const/16 v3, 0x9

    aput-object v22, v2, v3

    const/16 v3, 0xa

    aput-object v23, v2, v3

    const/16 v3, 0xb

    aput-object v24, v2, v3

    const/16 v3, 0xc

    aput-object v11, v2, v3

    const/16 v3, 0xd

    aput-object v13, v2, v3

    const/16 v3, 0xe

    aput-object v15, v2, v3

    const/16 v3, 0xf

    aput-object v17, v2, v3

    const/16 v3, 0x10

    aput-object v21, v2, v3

    const/16 v3, 0x11

    aput-object v25, v2, v3

    const/16 v3, 0x12

    aput-object v50, v2, v3

    const/16 v3, 0x13

    aput-object v43, v2, v3

    const/16 v3, 0x14

    aput-object v44, v2, v3

    const/16 v3, 0x15

    aput-object v45, v2, v3

    const/16 v3, 0x16

    aput-object v46, v2, v3

    const/16 v3, 0x17

    aput-object v47, v2, v3

    const/16 v3, 0x18

    aput-object v48, v2, v3

    const/16 v3, 0x19

    aput-object v49, v2, v3

    const/16 v3, 0x1a

    aput-object v51, v2, v3

    const/16 v3, 0x1b

    aput-object v52, v2, v3

    const/16 v3, 0x1c

    aput-object v53, v2, v3

    const/16 v3, 0x1d

    aput-object v54, v2, v3

    const/16 v3, 0x1e

    aput-object v55, v2, v3

    const/16 v3, 0x1f

    aput-object v56, v2, v3

    const/16 v3, 0x20

    aput-object v9, v2, v3

    const/16 v3, 0x21

    aput-object v57, v2, v3

    const/16 v3, 0x22

    aput-object v0, v2, v3

    const/16 v0, 0x23

    aput-object v1, v2, v0

    .line 49
    sput-object v2, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->$VALUES:[Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIII)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v8, p7

    .line 123
    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 101
    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/LauncherIconController$LauncherIcon;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZI)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 127
    iput p8, p0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->backgroundColor:I

    .line 128
    iput-object p3, p0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->key:Ljava/lang/String;

    .line 129
    iput p4, p0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->background:I

    .line 130
    iput p5, p0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->foreground:I

    .line 131
    iput p6, p0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->title:I

    .line 132
    iput-boolean p7, p0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->premium:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/telegram/ui/LauncherIconController$LauncherIcon;
    .locals 1

    .line 49
    const-class v0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    return-object p0
.end method

.method public static values()[Lorg/telegram/ui/LauncherIconController$LauncherIcon;
    .locals 1

    .line 49
    sget-object v0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->$VALUES:[Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    invoke-virtual {v0}, [Lorg/telegram/ui/LauncherIconController$LauncherIcon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/LauncherIconController$LauncherIcon;

    return-object v0
.end method


# virtual methods
.method public getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3

    .line 115
    iget-object v0, p0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->componentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "org.telegram.ui.LaunchActivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Icon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->componentName:Landroid/content/ComponentName;

    .line 119
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LauncherIconController$LauncherIcon;->componentName:Landroid/content/ComponentName;

    return-object p1
.end method
