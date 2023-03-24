.class public final enum Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;
.super Ljava/lang/Enum;
.source "Cosmos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GrantTypeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;

.field public static final enum GRANTTYPE_NOT_SET:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;

.field public static final enum GRANT_STAKE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15021
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;

    const-string v1, "GRANT_STAKE"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;->GRANT_STAKE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;

    .line 15022
    new-instance v1, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;

    const-string v3, "GRANTTYPE_NOT_SET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;->GRANTTYPE_NOT_SET:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;

    const/4 v3, 0x2

    new-array v3, v3, [Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 15020
    sput-object v3, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;->$VALUES:[Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 15024
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15025
    iput p3, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 15037
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;->GRANT_STAKE:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;

    return-object p0

    .line 15038
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;->GRANTTYPE_NOT_SET:Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;

    return-object p0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15032
    invoke-static {p0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;->forNumber(I)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 15020
    const-class v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;
    .locals 1

    .line 15020
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;->$VALUES:[Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 15043
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;->value:I

    return v0
.end method
