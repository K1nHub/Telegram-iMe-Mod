.class public final synthetic Lcom/iMe/services/FilteredContactsProcessingService$WhenMappings;
.super Ljava/lang/Object;
.source "FilteredContactsProcessingService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/services/FilteredContactsProcessingService;
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

    invoke-static {}, Lcom/iMe/fork/enums/ContactsActionType;->values()[Lcom/iMe/fork/enums/ContactsActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/iMe/fork/enums/ContactsActionType;->DELETE:Lcom/iMe/fork/enums/ContactsActionType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v2, Lcom/iMe/fork/enums/ContactsActionType;->UNBLOCK:Lcom/iMe/fork/enums/ContactsActionType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v0, Lcom/iMe/services/FilteredContactsProcessingService$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/iMe/services/FilteredContactsProcessingService$State;->values()[Lcom/iMe/services/FilteredContactsProcessingService$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_2
    sget-object v2, Lcom/iMe/services/FilteredContactsProcessingService$State;->DELETING:Lcom/iMe/services/FilteredContactsProcessingService$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lcom/iMe/services/FilteredContactsProcessingService$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
