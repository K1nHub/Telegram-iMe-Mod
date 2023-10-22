.class public final enum Lwallet/core/jni/proto/Cosmos$SigningMode;
.super Ljava/lang/Enum;
.source "Cosmos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SigningMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$SigningMode$SigningModeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Cosmos$SigningMode;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Cosmos$SigningMode;

.field public static final enum JSON:Lwallet/core/jni/proto/Cosmos$SigningMode;

.field public static final JSON_VALUE:I = 0x0

.field public static final enum Protobuf:Lwallet/core/jni/proto/Cosmos$SigningMode;

.field public static final Protobuf_VALUE:I = 0x1

.field public static final enum UNRECOGNIZED:Lwallet/core/jni/proto/Cosmos$SigningMode;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lwallet/core/jni/proto/Cosmos$SigningMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 153
    new-instance v0, Lwallet/core/jni/proto/Cosmos$SigningMode;

    const-string v1, "JSON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lwallet/core/jni/proto/Cosmos$SigningMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Cosmos$SigningMode;->JSON:Lwallet/core/jni/proto/Cosmos$SigningMode;

    .line 161
    new-instance v1, Lwallet/core/jni/proto/Cosmos$SigningMode;

    const-string v3, "Protobuf"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lwallet/core/jni/proto/Cosmos$SigningMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Cosmos$SigningMode;->Protobuf:Lwallet/core/jni/proto/Cosmos$SigningMode;

    .line 162
    new-instance v3, Lwallet/core/jni/proto/Cosmos$SigningMode;

    const-string v5, "UNRECOGNIZED"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v3, v5, v6, v7}, Lwallet/core/jni/proto/Cosmos$SigningMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/proto/Cosmos$SigningMode;->UNRECOGNIZED:Lwallet/core/jni/proto/Cosmos$SigningMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lwallet/core/jni/proto/Cosmos$SigningMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 144
    sput-object v5, Lwallet/core/jni/proto/Cosmos$SigningMode;->$VALUES:[Lwallet/core/jni/proto/Cosmos$SigningMode;

    .line 215
    new-instance v0, Lwallet/core/jni/proto/Cosmos$SigningMode$1;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$SigningMode$1;-><init>()V

    sput-object v0, Lwallet/core/jni/proto/Cosmos$SigningMode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 239
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 240
    iput p3, p0, Lwallet/core/jni/proto/Cosmos$SigningMode;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Cosmos$SigningMode;
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

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 205
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Cosmos$SigningMode;->Protobuf:Lwallet/core/jni/proto/Cosmos$SigningMode;

    return-object p0

    .line 204
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/Cosmos$SigningMode;->JSON:Lwallet/core/jni/proto/Cosmos$SigningMode;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lwallet/core/jni/proto/Cosmos$SigningMode;",
            ">;"
        }
    .end annotation

    .line 212
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningMode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 225
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningMode$SigningModeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Cosmos$SigningMode;
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

    .line 199
    invoke-static {p0}, Lwallet/core/jni/proto/Cosmos$SigningMode;->forNumber(I)Lwallet/core/jni/proto/Cosmos$SigningMode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$SigningMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 144
    const-class v0, Lwallet/core/jni/proto/Cosmos$SigningMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningMode;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Cosmos$SigningMode;
    .locals 1

    .line 144
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningMode;->$VALUES:[Lwallet/core/jni/proto/Cosmos$SigningMode;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Cosmos$SigningMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Cosmos$SigningMode;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 185
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningMode;->UNRECOGNIZED:Lwallet/core/jni/proto/Cosmos$SigningMode;

    if-eq p0, v0, :cond_0

    .line 189
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$SigningMode;->value:I

    return v0

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
