.class public final enum Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;
.super Ljava/lang/Enum;
.source "PermissionAction.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;

.field public static final enum GET_ETHER_WALLET_ADDRESS:Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;->GET_ETHER_WALLET_ADDRESS:Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;

    const-string v1, "GET_ETHER_WALLET_ADDRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;->GET_ETHER_WALLET_ADDRESS:Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;

    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;->$values()[Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/crypto/permission/PermissionAction;

    return-object v0
.end method
