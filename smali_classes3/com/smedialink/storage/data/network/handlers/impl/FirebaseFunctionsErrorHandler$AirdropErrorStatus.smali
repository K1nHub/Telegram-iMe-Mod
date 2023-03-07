.class public final enum Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;
.super Ljava/lang/Enum;
.source "FirebaseFunctionsErrorHandler.kt"

# interfaces
.implements Lcom/smedialink/storage/data/network/model/error/IErrorStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AirdropErrorStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;",
        ">;",
        "Lcom/smedialink/storage/data/network/model/error/IErrorStatus;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

.field public static final enum AIRDROP_NOT_ACTIVE:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

.field public static final enum AIRDROP_NO_TOKENS:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

.field public static final enum REQUEST_ID_NOT_FOUND:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

.field public static final enum USER_ALREADY_PARTICIPATED:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;->AIRDROP_NOT_ACTIVE:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;->REQUEST_ID_NOT_FOUND:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;->USER_ALREADY_PARTICIPATED:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;->AIRDROP_NO_TOKENS:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 85
    new-instance v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    const-string v1, "AIRDROP_NOT_ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;->AIRDROP_NOT_ACTIVE:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    .line 86
    new-instance v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    const-string v1, "REQUEST_ID_NOT_FOUND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;->REQUEST_ID_NOT_FOUND:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    .line 87
    new-instance v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    const-string v1, "USER_ALREADY_PARTICIPATED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;->USER_ALREADY_PARTICIPATED:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    .line 88
    new-instance v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    const-string v1, "AIRDROP_NO_TOKENS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;->AIRDROP_NO_TOKENS:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    invoke-static {}, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;->$values()[Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;->$VALUES:[Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;
    .locals 1

    const-class v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;->$VALUES:[Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    return-object v0
.end method
