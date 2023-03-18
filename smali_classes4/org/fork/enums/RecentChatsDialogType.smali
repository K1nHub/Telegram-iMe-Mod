.class public final enum Lorg/fork/enums/RecentChatsDialogType;
.super Ljava/lang/Enum;
.source "RecentChatsDialogType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/enums/RecentChatsDialogType$Companion;,
        Lorg/fork/enums/RecentChatsDialogType$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fork/enums/RecentChatsDialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fork/enums/RecentChatsDialogType;

.field public static final enum BOT:Lorg/fork/enums/RecentChatsDialogType;

.field public static final enum CHANNEL:Lorg/fork/enums/RecentChatsDialogType;

.field public static final enum CHAT:Lorg/fork/enums/RecentChatsDialogType;

.field public static final Companion:Lorg/fork/enums/RecentChatsDialogType$Companion;

.field public static final enum FORUM:Lorg/fork/enums/RecentChatsDialogType;

.field public static final enum GROUP:Lorg/fork/enums/RecentChatsDialogType;


# direct methods
.method private static final synthetic $values()[Lorg/fork/enums/RecentChatsDialogType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/fork/enums/RecentChatsDialogType;

    sget-object v1, Lorg/fork/enums/RecentChatsDialogType;->CHAT:Lorg/fork/enums/RecentChatsDialogType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/RecentChatsDialogType;->GROUP:Lorg/fork/enums/RecentChatsDialogType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/RecentChatsDialogType;->CHANNEL:Lorg/fork/enums/RecentChatsDialogType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/RecentChatsDialogType;->BOT:Lorg/fork/enums/RecentChatsDialogType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/RecentChatsDialogType;->FORUM:Lorg/fork/enums/RecentChatsDialogType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lorg/fork/enums/RecentChatsDialogType;

    const-string v1, "CHAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fork/enums/RecentChatsDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fork/enums/RecentChatsDialogType;->CHAT:Lorg/fork/enums/RecentChatsDialogType;

    .line 9
    new-instance v0, Lorg/fork/enums/RecentChatsDialogType;

    const-string v1, "GROUP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/fork/enums/RecentChatsDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fork/enums/RecentChatsDialogType;->GROUP:Lorg/fork/enums/RecentChatsDialogType;

    .line 10
    new-instance v0, Lorg/fork/enums/RecentChatsDialogType;

    const-string v1, "CHANNEL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/fork/enums/RecentChatsDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fork/enums/RecentChatsDialogType;->CHANNEL:Lorg/fork/enums/RecentChatsDialogType;

    .line 11
    new-instance v0, Lorg/fork/enums/RecentChatsDialogType;

    const-string v1, "BOT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/fork/enums/RecentChatsDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fork/enums/RecentChatsDialogType;->BOT:Lorg/fork/enums/RecentChatsDialogType;

    .line 12
    new-instance v0, Lorg/fork/enums/RecentChatsDialogType;

    const-string v1, "FORUM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/fork/enums/RecentChatsDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fork/enums/RecentChatsDialogType;->FORUM:Lorg/fork/enums/RecentChatsDialogType;

    invoke-static {}, Lorg/fork/enums/RecentChatsDialogType;->$values()[Lorg/fork/enums/RecentChatsDialogType;

    move-result-object v0

    sput-object v0, Lorg/fork/enums/RecentChatsDialogType;->$VALUES:[Lorg/fork/enums/RecentChatsDialogType;

    new-instance v0, Lorg/fork/enums/RecentChatsDialogType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/enums/RecentChatsDialogType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/enums/RecentChatsDialogType;->Companion:Lorg/fork/enums/RecentChatsDialogType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final getDialogType(Lorg/telegram/tgnet/TLObject;J)Lorg/fork/enums/RecentChatsDialogType;
    .locals 1

    sget-object v0, Lorg/fork/enums/RecentChatsDialogType;->Companion:Lorg/fork/enums/RecentChatsDialogType$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lorg/fork/enums/RecentChatsDialogType$Companion;->getDialogType(Lorg/telegram/tgnet/TLObject;J)Lorg/fork/enums/RecentChatsDialogType;

    move-result-object p0

    return-object p0
.end method

.method public static final mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lorg/fork/enums/RecentChatsDialogType;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/fork/enums/RecentChatsDialogType;->Companion:Lorg/fork/enums/RecentChatsDialogType$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/enums/RecentChatsDialogType$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

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
            "Lorg/fork/enums/RecentChatsDialogType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/fork/enums/RecentChatsDialogType;->Companion:Lorg/fork/enums/RecentChatsDialogType$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/enums/RecentChatsDialogType$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fork/enums/RecentChatsDialogType;
    .locals 1

    const-class v0, Lorg/fork/enums/RecentChatsDialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fork/enums/RecentChatsDialogType;

    return-object p0
.end method

.method public static values()[Lorg/fork/enums/RecentChatsDialogType;
    .locals 1

    sget-object v0, Lorg/fork/enums/RecentChatsDialogType;->$VALUES:[Lorg/fork/enums/RecentChatsDialogType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/enums/RecentChatsDialogType;

    return-object v0
.end method


# virtual methods
.method public final getTitle()Ljava/lang/String;
    .locals 2

    .line 14
    sget-object v0, Lorg/fork/enums/RecentChatsDialogType$WhenMappings;->$EnumSwitchMapping$0:[I

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
    sget v0, Lorg/telegram/messenger/R$string;->Topics:I

    const-string v1, "Topics"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"Topics\", R.string.Topics)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 18
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->multi_panel_settings_section_header_bots:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026ings_section_header_bots)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->multi_panel_settings_section_header_channels:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026_section_header_channels)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_3
    sget v0, Lorg/telegram/messenger/R$string;->multi_panel_settings_section_header_groups:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026gs_section_header_groups)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->multi_panel_settings_section_header_chats:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026ngs_section_header_chats)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
