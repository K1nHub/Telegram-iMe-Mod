.class final enum Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;
.super Ljava/lang/Enum;
.source "FilteredChatParticipantsProcessingService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/services/FilteredChatParticipantsProcessingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

.field public static final enum DELETING:Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

.field public static final enum LOADING:Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

.field public static final enum WAITING_FOR_NETWORK:Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

    sget-object v1, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;->LOADING:Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;->DELETING:Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;->WAITING_FOR_NETWORK:Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 277
    new-instance v0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;->LOADING:Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

    .line 278
    new-instance v0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

    const-string v1, "DELETING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;->DELETING:Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

    .line 279
    new-instance v0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

    const-string v1, "WAITING_FOR_NETWORK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;->WAITING_FOR_NETWORK:Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

    invoke-static {}, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;->$values()[Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

    move-result-object v0

    sput-object v0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;->$VALUES:[Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 276
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;
    .locals 1

    const-class v0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

    return-object p0
.end method

.method public static values()[Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;
    .locals 1

    sget-object v0, Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;->$VALUES:[Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/services/FilteredChatParticipantsProcessingService$State;

    return-object v0
.end method
