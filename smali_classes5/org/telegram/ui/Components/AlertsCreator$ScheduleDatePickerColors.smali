.class public Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerColors;
.super Ljava/lang/Object;
.source "AlertsCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AlertsCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScheduleDatePickerColors"
.end annotation


# instance fields
.field public final backgroundColor:I

.field public final buttonBackgroundColor:I

.field public final buttonBackgroundPressedColor:I

.field public final buttonTextColor:I

.field public final iconColor:I

.field public final iconSelectorColor:I

.field public final subMenuBackgroundColor:I

.field public final subMenuSelectorColor:I

.field public final subMenuTextColor:I

.field public final textColor:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2971
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerColors;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 12

    const-string v0, "featuredStickers_buttonText"

    .line 2988
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v9

    const-string v0, "featuredStickers_addButton"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v10

    const-string v0, "featuredStickers_addButtonPressed"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v11}, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerColors;-><init>(IIIIIIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIIIIIII)V
    .locals 0

    .line 2991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2992
    iput p1, p0, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerColors;->textColor:I

    .line 2993
    iput p2, p0, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerColors;->backgroundColor:I

    .line 2994
    iput p3, p0, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerColors;->iconColor:I

    .line 2995
    iput p4, p0, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerColors;->iconSelectorColor:I

    .line 2996
    iput p5, p0, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerColors;->subMenuTextColor:I

    .line 2997
    iput p6, p0, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerColors;->subMenuBackgroundColor:I

    .line 2998
    iput p7, p0, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerColors;->subMenuSelectorColor:I

    .line 2999
    iput p8, p0, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerColors;->buttonTextColor:I

    .line 3000
    iput p9, p0, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerColors;->buttonBackgroundColor:I

    .line 3001
    iput p10, p0, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerColors;->buttonBackgroundPressedColor:I

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 12

    const-string v0, "dialogTextBlack"

    if-eqz p1, :cond_0

    .line 2975
    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColorOrDefault(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    :goto_0
    move v2, v0

    const-string v0, "dialogBackground"

    if-eqz p1, :cond_1

    .line 2976
    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColorOrDefault(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    :goto_1
    move v3, v0

    const-string v0, "key_sheet_other"

    if-eqz p1, :cond_2

    .line 2977
    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColorOrDefault(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    :goto_2
    move v4, v0

    const-string v0, "player_actionBarSelector"

    if-eqz p1, :cond_3

    .line 2978
    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColorOrDefault(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :cond_3
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    :goto_3
    move v5, v0

    const-string v0, "actionBarDefaultSubmenuItem"

    if-eqz p1, :cond_4

    .line 2979
    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColorOrDefault(Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :cond_4
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    :goto_4
    move v6, v0

    const-string v0, "actionBarDefaultSubmenuBackground"

    if-eqz p1, :cond_5

    .line 2980
    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColorOrDefault(Ljava/lang/String;)I

    move-result v0

    goto :goto_5

    :cond_5
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    :goto_5
    move v7, v0

    const-string v0, "listSelectorSDK21"

    if-eqz p1, :cond_6

    .line 2981
    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColorOrDefault(Ljava/lang/String;)I

    move-result v0

    goto :goto_6

    :cond_6
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    :goto_6
    move v8, v0

    const-string v0, "featuredStickers_buttonText"

    if-eqz p1, :cond_7

    .line 2982
    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColorOrDefault(Ljava/lang/String;)I

    move-result v0

    goto :goto_7

    :cond_7
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    :goto_7
    move v9, v0

    const-string v0, "featuredStickers_addButton"

    if-eqz p1, :cond_8

    .line 2983
    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColorOrDefault(Ljava/lang/String;)I

    move-result v0

    goto :goto_8

    :cond_8
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    :goto_8
    move v10, v0

    const-string v0, "featuredStickers_addButtonPressed"

    if-eqz p1, :cond_9

    .line 2984
    invoke-interface {p1, v0}, Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;->getColorOrDefault(Ljava/lang/String;)I

    move-result p1

    goto :goto_9

    :cond_9
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    :goto_9
    move v11, p1

    move-object v1, p0

    .line 2975
    invoke-direct/range {v1 .. v11}, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerColors;-><init>(IIIIIIIIII)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/AlertsCreator$1;)V
    .locals 0

    .line 2954
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerColors;-><init>(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/AlertsCreator$1;)V
    .locals 0

    .line 2954
    invoke-direct {p0}, Lorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerColors;-><init>()V

    return-void
.end method
