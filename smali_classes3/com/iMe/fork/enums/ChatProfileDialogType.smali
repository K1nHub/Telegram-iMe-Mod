.class public final enum Lcom/iMe/fork/enums/ChatProfileDialogType;
.super Ljava/lang/Enum;
.source "ChatProfileDialogType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/enums/ChatProfileDialogType$Companion;,
        Lcom/iMe/fork/enums/ChatProfileDialogType$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/enums/ChatProfileDialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/enums/ChatProfileDialogType;

.field public static final enum BOT:Lcom/iMe/fork/enums/ChatProfileDialogType;

.field public static final enum CHANNEL:Lcom/iMe/fork/enums/ChatProfileDialogType;

.field public static final enum CHAT:Lcom/iMe/fork/enums/ChatProfileDialogType;

.field public static final Companion:Lcom/iMe/fork/enums/ChatProfileDialogType$Companion;

.field public static final enum GROUP:Lcom/iMe/fork/enums/ChatProfileDialogType;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/enums/ChatProfileDialogType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iMe/fork/enums/ChatProfileDialogType;

    sget-object v1, Lcom/iMe/fork/enums/ChatProfileDialogType;->CHAT:Lcom/iMe/fork/enums/ChatProfileDialogType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ChatProfileDialogType;->GROUP:Lcom/iMe/fork/enums/ChatProfileDialogType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ChatProfileDialogType;->CHANNEL:Lcom/iMe/fork/enums/ChatProfileDialogType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ChatProfileDialogType;->BOT:Lcom/iMe/fork/enums/ChatProfileDialogType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/iMe/fork/enums/ChatProfileDialogType;

    const-string v1, "CHAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/ChatProfileDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/ChatProfileDialogType;->CHAT:Lcom/iMe/fork/enums/ChatProfileDialogType;

    .line 8
    new-instance v0, Lcom/iMe/fork/enums/ChatProfileDialogType;

    const-string v1, "GROUP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/ChatProfileDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/ChatProfileDialogType;->GROUP:Lcom/iMe/fork/enums/ChatProfileDialogType;

    .line 9
    new-instance v0, Lcom/iMe/fork/enums/ChatProfileDialogType;

    const-string v1, "CHANNEL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/ChatProfileDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/ChatProfileDialogType;->CHANNEL:Lcom/iMe/fork/enums/ChatProfileDialogType;

    .line 10
    new-instance v0, Lcom/iMe/fork/enums/ChatProfileDialogType;

    const-string v1, "BOT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/ChatProfileDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/ChatProfileDialogType;->BOT:Lcom/iMe/fork/enums/ChatProfileDialogType;

    invoke-static {}, Lcom/iMe/fork/enums/ChatProfileDialogType;->$values()[Lcom/iMe/fork/enums/ChatProfileDialogType;

    move-result-object v0

    sput-object v0, Lcom/iMe/fork/enums/ChatProfileDialogType;->$VALUES:[Lcom/iMe/fork/enums/ChatProfileDialogType;

    new-instance v0, Lcom/iMe/fork/enums/ChatProfileDialogType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/enums/ChatProfileDialogType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/ChatProfileDialogType;->Companion:Lcom/iMe/fork/enums/ChatProfileDialogType$Companion;

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

.method public static final mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/iMe/fork/enums/ChatProfileDialogType;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/fork/enums/ChatProfileDialogType;->Companion:Lcom/iMe/fork/enums/ChatProfileDialogType$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/enums/ChatProfileDialogType$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/iMe/fork/enums/ChatProfileDialogType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/fork/enums/ChatProfileDialogType;->Companion:Lcom/iMe/fork/enums/ChatProfileDialogType$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/enums/ChatProfileDialogType$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/ChatProfileDialogType;
    .locals 1

    const-class v0, Lcom/iMe/fork/enums/ChatProfileDialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/enums/ChatProfileDialogType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/enums/ChatProfileDialogType;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/ChatProfileDialogType;->$VALUES:[Lcom/iMe/fork/enums/ChatProfileDialogType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/ChatProfileDialogType;

    return-object v0
.end method


# virtual methods
.method public final getTitle()Ljava/lang/String;
    .locals 2

    .line 12
    sget-object v0, Lcom/iMe/fork/enums/ChatProfileDialogType$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 16
    sget v0, Lorg/telegram/messenger/R$string;->multi_panel_settings_section_header_bots:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026ings_section_header_bots)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 15
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->multi_panel_settings_section_header_channels:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026_section_header_channels)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->multi_panel_settings_section_header_groups:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026gs_section_header_groups)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->multi_panel_settings_section_header_chats:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026ngs_section_header_chats)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
