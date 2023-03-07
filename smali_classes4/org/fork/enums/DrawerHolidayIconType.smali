.class public final enum Lorg/fork/enums/DrawerHolidayIconType;
.super Ljava/lang/Enum;
.source "DrawerHolidayIconType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/enums/DrawerHolidayIconType$Companion;,
        Lorg/fork/enums/DrawerHolidayIconType$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fork/enums/DrawerHolidayIconType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fork/enums/DrawerHolidayIconType;

.field public static final Companion:Lorg/fork/enums/DrawerHolidayIconType$Companion;

.field public static final enum DEFAULT:Lorg/fork/enums/DrawerHolidayIconType;

.field public static final enum HALLOWEEN:Lorg/fork/enums/DrawerHolidayIconType;

.field public static final enum MAIN:Lorg/fork/enums/DrawerHolidayIconType;

.field public static final enum NEW_YEAR:Lorg/fork/enums/DrawerHolidayIconType;

.field public static final enum VALENTINE_DAY:Lorg/fork/enums/DrawerHolidayIconType;


# instance fields
.field private final eventType:I


# direct methods
.method private static final synthetic $values()[Lorg/fork/enums/DrawerHolidayIconType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/fork/enums/DrawerHolidayIconType;

    sget-object v1, Lorg/fork/enums/DrawerHolidayIconType;->DEFAULT:Lorg/fork/enums/DrawerHolidayIconType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/DrawerHolidayIconType;->NEW_YEAR:Lorg/fork/enums/DrawerHolidayIconType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/DrawerHolidayIconType;->VALENTINE_DAY:Lorg/fork/enums/DrawerHolidayIconType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/DrawerHolidayIconType;->HALLOWEEN:Lorg/fork/enums/DrawerHolidayIconType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/DrawerHolidayIconType;->MAIN:Lorg/fork/enums/DrawerHolidayIconType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lorg/fork/enums/DrawerHolidayIconType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/fork/enums/DrawerHolidayIconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/DrawerHolidayIconType;->DEFAULT:Lorg/fork/enums/DrawerHolidayIconType;

    .line 9
    new-instance v0, Lorg/fork/enums/DrawerHolidayIconType;

    const-string v1, "NEW_YEAR"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/fork/enums/DrawerHolidayIconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/DrawerHolidayIconType;->NEW_YEAR:Lorg/fork/enums/DrawerHolidayIconType;

    .line 10
    new-instance v0, Lorg/fork/enums/DrawerHolidayIconType;

    const-string v1, "VALENTINE_DAY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v4}, Lorg/fork/enums/DrawerHolidayIconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/DrawerHolidayIconType;->VALENTINE_DAY:Lorg/fork/enums/DrawerHolidayIconType;

    .line 11
    new-instance v0, Lorg/fork/enums/DrawerHolidayIconType;

    const-string v1, "HALLOWEEN"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v2}, Lorg/fork/enums/DrawerHolidayIconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/DrawerHolidayIconType;->HALLOWEEN:Lorg/fork/enums/DrawerHolidayIconType;

    .line 12
    new-instance v0, Lorg/fork/enums/DrawerHolidayIconType;

    const-string v1, "MAIN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lorg/fork/enums/DrawerHolidayIconType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/DrawerHolidayIconType;->MAIN:Lorg/fork/enums/DrawerHolidayIconType;

    invoke-static {}, Lorg/fork/enums/DrawerHolidayIconType;->$values()[Lorg/fork/enums/DrawerHolidayIconType;

    move-result-object v0

    sput-object v0, Lorg/fork/enums/DrawerHolidayIconType;->$VALUES:[Lorg/fork/enums/DrawerHolidayIconType;

    new-instance v0, Lorg/fork/enums/DrawerHolidayIconType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/enums/DrawerHolidayIconType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/enums/DrawerHolidayIconType;->Companion:Lorg/fork/enums/DrawerHolidayIconType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/fork/enums/DrawerHolidayIconType;->eventType:I

    return-void
.end method

.method public static final mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/DrawerHolidayIconType;
    .locals 1

    sget-object v0, Lorg/fork/enums/DrawerHolidayIconType;->Companion:Lorg/fork/enums/DrawerHolidayIconType$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/enums/DrawerHolidayIconType$Companion;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/DrawerHolidayIconType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fork/enums/DrawerHolidayIconType;
    .locals 1

    const-class v0, Lorg/fork/enums/DrawerHolidayIconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fork/enums/DrawerHolidayIconType;

    return-object p0
.end method

.method public static values()[Lorg/fork/enums/DrawerHolidayIconType;
    .locals 1

    sget-object v0, Lorg/fork/enums/DrawerHolidayIconType;->$VALUES:[Lorg/fork/enums/DrawerHolidayIconType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/enums/DrawerHolidayIconType;

    return-object v0
.end method


# virtual methods
.method public final getEventType()I
    .locals 1

    .line 7
    iget v0, p0, Lorg/fork/enums/DrawerHolidayIconType;->eventType:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .line 14
    sget-object v0, Lorg/fork/enums/DrawerHolidayIconType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 19
    sget v0, Lorg/telegram/messenger/R$string;->PhoneMain:I

    const-string v1, "PhoneMain"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"PhoneMain\",R.string.PhoneMain)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 18
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->setting_tools_drawer_holiday_icon_menu_hw:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026wer_holiday_icon_menu_hw)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->setting_tools_drawer_holiday_icon_menu_14:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026wer_holiday_icon_menu_14)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->setting_tools_drawer_holiday_icon_menu_ny:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026wer_holiday_icon_menu_ny)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->Default:I

    const-string v1, "Default"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"Default\", R.string.Default)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
