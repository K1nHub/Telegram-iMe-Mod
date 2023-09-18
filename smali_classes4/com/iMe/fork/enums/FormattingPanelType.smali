.class public final enum Lcom/iMe/fork/enums/FormattingPanelType;
.super Ljava/lang/Enum;
.source "FormattingPanelType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/enums/FormattingPanelType$Companion;,
        Lcom/iMe/fork/enums/FormattingPanelType$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/enums/FormattingPanelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/enums/FormattingPanelType;

.field public static final enum ALTERNATIVE_KEYBOARD:Lcom/iMe/fork/enums/FormattingPanelType;

.field public static final enum ALTERNATIVE_WEB:Lcom/iMe/fork/enums/FormattingPanelType;

.field public static final Companion:Lcom/iMe/fork/enums/FormattingPanelType$Companion;

.field public static final enum DEFAULT:Lcom/iMe/fork/enums/FormattingPanelType;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/enums/FormattingPanelType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/fork/enums/FormattingPanelType;

    sget-object v1, Lcom/iMe/fork/enums/FormattingPanelType;->DEFAULT:Lcom/iMe/fork/enums/FormattingPanelType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/FormattingPanelType;->ALTERNATIVE_WEB:Lcom/iMe/fork/enums/FormattingPanelType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/FormattingPanelType;->ALTERNATIVE_KEYBOARD:Lcom/iMe/fork/enums/FormattingPanelType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/iMe/fork/enums/FormattingPanelType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/FormattingPanelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/FormattingPanelType;->DEFAULT:Lcom/iMe/fork/enums/FormattingPanelType;

    .line 8
    new-instance v0, Lcom/iMe/fork/enums/FormattingPanelType;

    const-string v1, "ALTERNATIVE_WEB"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/FormattingPanelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/FormattingPanelType;->ALTERNATIVE_WEB:Lcom/iMe/fork/enums/FormattingPanelType;

    .line 9
    new-instance v0, Lcom/iMe/fork/enums/FormattingPanelType;

    const-string v1, "ALTERNATIVE_KEYBOARD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/FormattingPanelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/FormattingPanelType;->ALTERNATIVE_KEYBOARD:Lcom/iMe/fork/enums/FormattingPanelType;

    invoke-static {}, Lcom/iMe/fork/enums/FormattingPanelType;->$values()[Lcom/iMe/fork/enums/FormattingPanelType;

    move-result-object v0

    sput-object v0, Lcom/iMe/fork/enums/FormattingPanelType;->$VALUES:[Lcom/iMe/fork/enums/FormattingPanelType;

    new-instance v0, Lcom/iMe/fork/enums/FormattingPanelType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/enums/FormattingPanelType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/FormattingPanelType;->Companion:Lcom/iMe/fork/enums/FormattingPanelType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/FormattingPanelType;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/FormattingPanelType;->Companion:Lcom/iMe/fork/enums/FormattingPanelType$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/enums/FormattingPanelType$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/FormattingPanelType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/FormattingPanelType;
    .locals 1

    const-class v0, Lcom/iMe/fork/enums/FormattingPanelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/enums/FormattingPanelType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/enums/FormattingPanelType;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/FormattingPanelType;->$VALUES:[Lcom/iMe/fork/enums/FormattingPanelType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/FormattingPanelType;

    return-object v0
.end method


# virtual methods
.method public final getTitle()Ljava/lang/String;
    .locals 2

    .line 11
    sget-object v0, Lcom/iMe/fork/enums/FormattingPanelType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 14
    sget v0, Lorg/telegram/messenger/R$string;->settings_messages_formatting_alternative_keybord:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026ting_alternative_keybord)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 13
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->settings_messages_formatting_alternative_web:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026rmatting_alternative_web)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->Default:I

    const-string v1, "Default"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"Default\", R.string.Default)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
