.class final enum Lcom/iMe/services/ServiceMessagesRemovingService$State;
.super Ljava/lang/Enum;
.source "ServiceMessagesRemovingService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/services/ServiceMessagesRemovingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/services/ServiceMessagesRemovingService$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/services/ServiceMessagesRemovingService$State;

.field public static final enum DELETING:Lcom/iMe/services/ServiceMessagesRemovingService$State;

.field public static final enum LOADING:Lcom/iMe/services/ServiceMessagesRemovingService$State;

.field public static final enum WAITING_FOR_NETWORK:Lcom/iMe/services/ServiceMessagesRemovingService$State;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/services/ServiceMessagesRemovingService$State;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/services/ServiceMessagesRemovingService$State;

    sget-object v1, Lcom/iMe/services/ServiceMessagesRemovingService$State;->LOADING:Lcom/iMe/services/ServiceMessagesRemovingService$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/services/ServiceMessagesRemovingService$State;->DELETING:Lcom/iMe/services/ServiceMessagesRemovingService$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/services/ServiceMessagesRemovingService$State;->WAITING_FOR_NETWORK:Lcom/iMe/services/ServiceMessagesRemovingService$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 345
    new-instance v0, Lcom/iMe/services/ServiceMessagesRemovingService$State;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/services/ServiceMessagesRemovingService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/services/ServiceMessagesRemovingService$State;->LOADING:Lcom/iMe/services/ServiceMessagesRemovingService$State;

    .line 346
    new-instance v0, Lcom/iMe/services/ServiceMessagesRemovingService$State;

    const-string v1, "DELETING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/services/ServiceMessagesRemovingService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/services/ServiceMessagesRemovingService$State;->DELETING:Lcom/iMe/services/ServiceMessagesRemovingService$State;

    .line 347
    new-instance v0, Lcom/iMe/services/ServiceMessagesRemovingService$State;

    const-string v1, "WAITING_FOR_NETWORK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/services/ServiceMessagesRemovingService$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/services/ServiceMessagesRemovingService$State;->WAITING_FOR_NETWORK:Lcom/iMe/services/ServiceMessagesRemovingService$State;

    invoke-static {}, Lcom/iMe/services/ServiceMessagesRemovingService$State;->$values()[Lcom/iMe/services/ServiceMessagesRemovingService$State;

    move-result-object v0

    sput-object v0, Lcom/iMe/services/ServiceMessagesRemovingService$State;->$VALUES:[Lcom/iMe/services/ServiceMessagesRemovingService$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 344
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/services/ServiceMessagesRemovingService$State;
    .locals 1

    const-class v0, Lcom/iMe/services/ServiceMessagesRemovingService$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/services/ServiceMessagesRemovingService$State;

    return-object p0
.end method

.method public static values()[Lcom/iMe/services/ServiceMessagesRemovingService$State;
    .locals 1

    sget-object v0, Lcom/iMe/services/ServiceMessagesRemovingService$State;->$VALUES:[Lcom/iMe/services/ServiceMessagesRemovingService$State;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/services/ServiceMessagesRemovingService$State;

    return-object v0
.end method
