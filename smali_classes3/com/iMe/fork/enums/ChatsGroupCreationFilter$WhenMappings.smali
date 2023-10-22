.class public final synthetic Lcom/iMe/fork/enums/ChatsGroupCreationFilter$WhenMappings;
.super Ljava/lang/Object;
.source "ChatsGroupCreationFilter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/enums/ChatsGroupCreationFilter;
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

    invoke-static {}, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->values()[Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->ALL_CHATS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->PERSONAL_CHATS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->GROUPS_CHATS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->PRIVATE_GROUPS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->PUBLIC_GROUPS__CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->CHANNELS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->ADMIN_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->OWNER_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->BOTS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    sput-object v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
