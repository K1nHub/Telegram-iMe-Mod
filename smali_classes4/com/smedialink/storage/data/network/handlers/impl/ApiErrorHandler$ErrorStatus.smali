.class public final enum Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;
.super Ljava/lang/Enum;
.source "ApiErrorHandler.kt"

# interfaces
.implements Lcom/smedialink/storage/data/network/model/error/IErrorStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;",
        ">;",
        "Lcom/smedialink/storage/data/network/model/error/IErrorStatus;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

.field public static final enum BAD_RESPONSE:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

.field public static final enum EMPTY_RESPONSE:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

.field public static final enum NOT_DEFINED:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

.field public static final enum NO_CONNECTION:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

.field public static final enum PERMISSION_DENIED:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

.field public static final enum RATE_LIMIT:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

.field public static final enum TIMEOUT:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

.field public static final enum UNAUTHORIZED:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->NO_CONNECTION:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->BAD_RESPONSE:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->TIMEOUT:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->EMPTY_RESPONSE:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->NOT_DEFINED:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->UNAUTHORIZED:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->PERMISSION_DENIED:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->RATE_LIMIT:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 72
    new-instance v0, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    const-string v1, "NO_CONNECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->NO_CONNECTION:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    .line 73
    new-instance v0, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    const-string v1, "BAD_RESPONSE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->BAD_RESPONSE:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    .line 74
    new-instance v0, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    const-string v1, "TIMEOUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->TIMEOUT:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    .line 75
    new-instance v0, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    const-string v1, "EMPTY_RESPONSE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->EMPTY_RESPONSE:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    .line 76
    new-instance v0, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    const-string v1, "NOT_DEFINED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->NOT_DEFINED:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    .line 77
    new-instance v0, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    const-string v1, "UNAUTHORIZED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->UNAUTHORIZED:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    .line 78
    new-instance v0, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    const-string v1, "PERMISSION_DENIED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->PERMISSION_DENIED:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    .line 79
    new-instance v0, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    const-string v1, "RATE_LIMIT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->RATE_LIMIT:Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    invoke-static {}, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->$values()[Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->$VALUES:[Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;
    .locals 1

    const-class v0, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->$VALUES:[Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    return-object v0
.end method
