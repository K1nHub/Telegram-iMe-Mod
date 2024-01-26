.class public final enum Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;
.super Ljava/lang/Enum;
.source "ChatProfileTelegramIdMode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/enums/ChatProfileTelegramIdMode$Companion;,
        Lcom/iMe/fork/enums/ChatProfileTelegramIdMode$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

.field public static final enum BOT_API:Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

.field public static final Companion:Lcom/iMe/fork/enums/ChatProfileTelegramIdMode$Companion;

.field public static final enum DISABLED:Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

.field public static final enum TELEGRAM_API:Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    sget-object v1, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;->TELEGRAM_API:Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;->BOT_API:Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;->DISABLED:Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    const-string v1, "TELEGRAM_API"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;->TELEGRAM_API:Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    .line 8
    new-instance v0, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    const-string v1, "BOT_API"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;->BOT_API:Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    .line 9
    new-instance v0, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    const-string v1, "DISABLED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;->DISABLED:Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    invoke-static {}, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;->$values()[Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    move-result-object v0

    sput-object v0, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;->$VALUES:[Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    new-instance v0, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;->Companion:Lcom/iMe/fork/enums/ChatProfileTelegramIdMode$Companion;

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

.method public static final isTelegramIdMode(Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;)Z
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;->Companion:Lcom/iMe/fork/enums/ChatProfileTelegramIdMode$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode$Companion;->isTelegramIdMode(Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;)Z

    move-result p0

    return p0
.end method

.method public static final mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;->Companion:Lcom/iMe/fork/enums/ChatProfileTelegramIdMode$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;
    .locals 1

    const-class v0, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;->$VALUES:[Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/ChatProfileTelegramIdMode;

    return-object v0
.end method


# virtual methods
.method public final getTitle()Ljava/lang/String;
    .locals 2

    .line 11
    sget-object v0, Lcom/iMe/fork/enums/ChatProfileTelegramIdMode$WhenMappings;->$EnumSwitchMapping$0:[I

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
    sget v0, Lorg/telegram/messenger/R$string;->Disable:I

    const-string v1, "Disable"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"Disable\", R.string.Disable)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 13
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->settings_tools_chat_profile_id_telegram_bot_api:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026file_id_telegram_bot_api)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->settings_tools_chat_profile_id_telegram_telegram_api:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026id_telegram_telegram_api)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
