.class public final enum Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;
.super Ljava/lang/Enum;
.source "DbErrorHandler.kt"

# interfaces
.implements Lcom/iMe/storage/data/network/model/error/IErrorStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;",
        ">;",
        "Lcom/iMe/storage/data/network/model/error/IErrorStatus;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;

.field public static final enum EMPTY:Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;

.field public static final enum UNKNOWN:Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;

    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;->UNKNOWN:Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;->EMPTY:Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;->UNKNOWN:Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;

    new-instance v0, Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;

    const-string v1, "EMPTY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;->EMPTY:Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;

    invoke-static {}, Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;->$values()[Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;->$VALUES:[Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;
    .locals 1

    const-class v0, Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;
    .locals 1

    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;->$VALUES:[Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/data/network/handlers/impl/DbErrorHandler$ErrorStatus;

    return-object v0
.end method
