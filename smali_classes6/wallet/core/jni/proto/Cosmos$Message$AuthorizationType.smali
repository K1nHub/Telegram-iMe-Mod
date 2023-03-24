.class public final enum Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;
.super Ljava/lang/Enum;
.source "Cosmos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthorizationType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType$AuthorizationTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

.field public static final enum DELEGATE:Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

.field public static final DELEGATE_VALUE:I = 0x1

.field public static final enum REDELEGATE:Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

.field public static final REDELEGATE_VALUE:I = 0x3

.field public static final enum UNDELEGATE:Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

.field public static final UNDELEGATE_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

.field public static final enum UNSPECIFIED:Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

.field public static final UNSPECIFIED_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1956
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;->UNSPECIFIED:Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    .line 1964
    new-instance v1, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    const-string v3, "DELEGATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;->DELEGATE:Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    .line 1972
    new-instance v3, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    const-string v5, "UNDELEGATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;->UNDELEGATE:Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    .line 1980
    new-instance v5, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    const-string v7, "REDELEGATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;->REDELEGATE:Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    .line 1981
    new-instance v7, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    const-string v9, "UNRECOGNIZED"

    const/4 v10, 0x4

    const/4 v11, -0x1

    invoke-direct {v7, v9, v10, v11}, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;->UNRECOGNIZED:Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    const/4 v9, 0x5

    new-array v9, v9, [Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 1947
    sput-object v9, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;->$VALUES:[Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    .line 2052
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType$1;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType$1;-><init>()V

    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 2076
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2077
    iput p3, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2042
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;->REDELEGATE:Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    return-object p0

    .line 2041
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;->UNDELEGATE:Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    return-object p0

    .line 2040
    :cond_2
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;->DELEGATE:Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    return-object p0

    .line 2039
    :cond_3
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;->UNSPECIFIED:Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;",
            ">;"
        }
    .end annotation

    .line 2049
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 2062
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType$AuthorizationTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;
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

    .line 2034
    invoke-static {p0}, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;->forNumber(I)Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1947
    const-class v0, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;
    .locals 1

    .line 1947
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;->$VALUES:[Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 2020
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;->UNRECOGNIZED:Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;

    if-eq p0, v0, :cond_0

    .line 2024
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthorizationType;->value:I

    return v0

    .line 2021
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
