.class public final synthetic Lcom/smedialink/services/FilteredChatParticipantsProcessingService$WhenMappings;
.super Ljava/lang/Object;
.source "FilteredChatParticipantsProcessingService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/services/FilteredChatParticipantsProcessingService;
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

    invoke-static {}, Lorg/fork/enums/ParticipantsActionType;->values()[Lorg/fork/enums/ParticipantsActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lorg/fork/enums/ParticipantsActionType;->DELETE:Lorg/fork/enums/ParticipantsActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ParticipantsActionType;->UNBLOCK:Lorg/fork/enums/ParticipantsActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lorg/fork/enums/ParticipantsActionType;->RETURN:Lorg/fork/enums/ParticipantsActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sput-object v0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$State;->values()[Lcom/smedialink/services/FilteredChatParticipantsProcessingService$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$State;->LOADING:Lcom/smedialink/services/FilteredChatParticipantsProcessingService$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$State;->DELETING:Lcom/smedialink/services/FilteredChatParticipantsProcessingService$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sput-object v0, Lcom/smedialink/services/FilteredChatParticipantsProcessingService$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
