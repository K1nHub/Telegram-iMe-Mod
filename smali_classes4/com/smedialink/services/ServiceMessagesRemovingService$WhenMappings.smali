.class public final synthetic Lcom/smedialink/services/ServiceMessagesRemovingService$WhenMappings;
.super Ljava/lang/Object;
.source "ServiceMessagesRemovingService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/services/ServiceMessagesRemovingService;
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

    invoke-static {}, Lcom/smedialink/services/ServiceMessagesRemovingService$State;->values()[Lcom/smedialink/services/ServiceMessagesRemovingService$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/services/ServiceMessagesRemovingService$State;->LOADING:Lcom/smedialink/services/ServiceMessagesRemovingService$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/services/ServiceMessagesRemovingService$State;->DELETING:Lcom/smedialink/services/ServiceMessagesRemovingService$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/services/ServiceMessagesRemovingService$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
