.class public final synthetic Lcom/smedialink/services/FilteredContactsProcessingService$WhenMappings;
.super Ljava/lang/Object;
.source "FilteredContactsProcessingService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/services/FilteredContactsProcessingService;
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
    .locals 4

    invoke-static {}, Lorg/fork/enums/ContactsActionType;->values()[Lorg/fork/enums/ContactsActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lorg/fork/enums/ContactsActionType;->DELETE:Lorg/fork/enums/ContactsActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lorg/fork/enums/ContactsActionType;->UNBLOCK:Lorg/fork/enums/ContactsActionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sput-object v0, Lcom/smedialink/services/FilteredContactsProcessingService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/smedialink/services/FilteredContactsProcessingService$State;->values()[Lcom/smedialink/services/FilteredContactsProcessingService$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/services/FilteredContactsProcessingService$State;->DELETING:Lcom/smedialink/services/FilteredContactsProcessingService$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/services/FilteredContactsProcessingService$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
