.class public final synthetic Lcom/iMe/services/FilteredChatParticipantsProcessingService$WhenMappings;
.super Ljava/lang/Object;
.source "FilteredChatParticipantsProcessingService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/services/FilteredChatParticipantsProcessingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/iMe/fork/enums/ParticipantsActionType;->values()[Lcom/iMe/fork/enums/ParticipantsActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/iMe/fork/enums/ParticipantsActionType;->DELETE:Lcom/iMe/fork/enums/ParticipantsActionType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/iMe/fork/enums/ParticipantsActionType;->UNBLOCK:Lcom/iMe/fork/enums/ParticipantsActionType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v3, Lcom/iMe/fork/enums/ParticipantsActionType;->RETURN:Lcom/iMe/fork/enums/ParticipantsActionType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v0, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;->values()[Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_3
    sget-object v3, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;->LOADING:Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;->DELETING:Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    sput-object v0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
