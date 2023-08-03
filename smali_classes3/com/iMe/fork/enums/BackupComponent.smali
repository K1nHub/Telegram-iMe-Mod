.class public final enum Lcom/iMe/fork/enums/BackupComponent;
.super Ljava/lang/Enum;
.source "BackupComponent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/enums/BackupComponent$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/enums/BackupComponent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum ALBUMS:Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum FILTERS:Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum HIDDEN_CHATS:Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum MULTI_PANEL:Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum MUSIC:Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum RECENT_CHATS:Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum SORTING:Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum STORIES:Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum TEMPLATES:Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum TOOLS:Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum TOPICS:Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum TRANSLATION:Lcom/iMe/fork/enums/BackupComponent;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/enums/BackupComponent;
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/iMe/fork/enums/BackupComponent;

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->TOOLS:Lcom/iMe/fork/enums/BackupComponent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->MULTI_PANEL:Lcom/iMe/fork/enums/BackupComponent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->FILTERS:Lcom/iMe/fork/enums/BackupComponent;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->SORTING:Lcom/iMe/fork/enums/BackupComponent;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->ALBUMS:Lcom/iMe/fork/enums/BackupComponent;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->MUSIC:Lcom/iMe/fork/enums/BackupComponent;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->TRANSLATION:Lcom/iMe/fork/enums/BackupComponent;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->STORIES:Lcom/iMe/fork/enums/BackupComponent;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->TEMPLATES:Lcom/iMe/fork/enums/BackupComponent;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->TOPICS:Lcom/iMe/fork/enums/BackupComponent;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->HIDDEN_CHATS:Lcom/iMe/fork/enums/BackupComponent;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->RECENT_CHATS:Lcom/iMe/fork/enums/BackupComponent;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    const-string v1, "TOOLS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->TOOLS:Lcom/iMe/fork/enums/BackupComponent;

    .line 8
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    const-string v1, "MULTI_PANEL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->MULTI_PANEL:Lcom/iMe/fork/enums/BackupComponent;

    .line 9
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    const-string v1, "FILTERS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->FILTERS:Lcom/iMe/fork/enums/BackupComponent;

    .line 10
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    const-string v1, "SORTING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->SORTING:Lcom/iMe/fork/enums/BackupComponent;

    .line 11
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    const-string v1, "ALBUMS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->ALBUMS:Lcom/iMe/fork/enums/BackupComponent;

    .line 12
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    const-string v1, "MUSIC"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->MUSIC:Lcom/iMe/fork/enums/BackupComponent;

    .line 13
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    const-string v1, "TRANSLATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->TRANSLATION:Lcom/iMe/fork/enums/BackupComponent;

    .line 14
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    const-string v1, "STORIES"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->STORIES:Lcom/iMe/fork/enums/BackupComponent;

    .line 15
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    const-string v1, "TEMPLATES"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->TEMPLATES:Lcom/iMe/fork/enums/BackupComponent;

    .line 16
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    const-string v1, "TOPICS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->TOPICS:Lcom/iMe/fork/enums/BackupComponent;

    .line 17
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    const-string v1, "HIDDEN_CHATS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->HIDDEN_CHATS:Lcom/iMe/fork/enums/BackupComponent;

    .line 18
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    const-string v1, "RECENT_CHATS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->RECENT_CHATS:Lcom/iMe/fork/enums/BackupComponent;

    invoke-static {}, Lcom/iMe/fork/enums/BackupComponent;->$values()[Lcom/iMe/fork/enums/BackupComponent;

    move-result-object v0

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->$VALUES:[Lcom/iMe/fork/enums/BackupComponent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/BackupComponent;
    .locals 1

    const-class v0, Lcom/iMe/fork/enums/BackupComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/enums/BackupComponent;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/enums/BackupComponent;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/BackupComponent;->$VALUES:[Lcom/iMe/fork/enums/BackupComponent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/BackupComponent;

    return-object v0
.end method


# virtual methods
.method public final getTitle()Ljava/lang/String;
    .locals 2

    .line 20
    sget-object v0, Lcom/iMe/fork/enums/BackupComponent$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 32
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    sget v0, Lorg/telegram/messenger/R$string;->settings_interface_recent_chats:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026s_interface_recent_chats)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 31
    :pswitch_1
    sget v0, Lorg/telegram/messenger/R$string;->hidden_chats_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.string.hidden_chats_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 30
    :pswitch_2
    sget v0, Lorg/telegram/messenger/R$string;->backup_component_topics:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026.backup_component_topics)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 29
    :pswitch_3
    sget v0, Lorg/telegram/messenger/R$string;->chat_templates:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.string.chat_templates)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :pswitch_4
    sget v0, Lorg/telegram/messenger/R$string;->ProfileStories:I

    const-string v1, "ProfileStories"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"ProfileStorie\u2026 R.string.ProfileStories)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :pswitch_5
    sget v0, Lorg/telegram/messenger/R$string;->backup_component_translation:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026up_component_translation)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :pswitch_6
    sget v0, Lorg/telegram/messenger/R$string;->cloud_filter_music:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.string.cloud_filter_music)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :pswitch_7
    sget v0, Lorg/telegram/messenger/R$string;->backup_component_albums:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026.backup_component_albums)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :pswitch_8
    sget v0, Lorg/telegram/messenger/R$string;->backup_component_sorting:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026backup_component_sorting)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :pswitch_9
    sget v0, Lorg/telegram/messenger/R$string;->backup_component_filters:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026backup_component_filters)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :pswitch_a
    sget v0, Lorg/telegram/messenger/R$string;->backup_component_multi_panel:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026up_component_multi_panel)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :pswitch_b
    sget v0, Lorg/telegram/messenger/R$string;->settings_tools:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.string.settings_tools)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
