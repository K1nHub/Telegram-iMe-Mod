.class public final enum Lwallet/core/jni/proto/EOS$KeyType;
.super Ljava/lang/Enum;
.source "EOS.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/EOS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/EOS$KeyType$KeyTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/EOS$KeyType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/EOS$KeyType;

.field public static final enum LEGACY:Lwallet/core/jni/proto/EOS$KeyType;

.field public static final LEGACY_VALUE:I = 0x0

.field public static final enum MODERNK1:Lwallet/core/jni/proto/EOS$KeyType;

.field public static final MODERNK1_VALUE:I = 0x1

.field public static final enum MODERNR1:Lwallet/core/jni/proto/EOS$KeyType;

.field public static final MODERNR1_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Lwallet/core/jni/proto/EOS$KeyType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lwallet/core/jni/proto/EOS$KeyType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 19
    new-instance v0, Lwallet/core/jni/proto/EOS$KeyType;

    const-string v1, "LEGACY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lwallet/core/jni/proto/EOS$KeyType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/EOS$KeyType;->LEGACY:Lwallet/core/jni/proto/EOS$KeyType;

    .line 23
    new-instance v1, Lwallet/core/jni/proto/EOS$KeyType;

    const-string v3, "MODERNK1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lwallet/core/jni/proto/EOS$KeyType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/EOS$KeyType;->MODERNK1:Lwallet/core/jni/proto/EOS$KeyType;

    .line 27
    new-instance v3, Lwallet/core/jni/proto/EOS$KeyType;

    const-string v5, "MODERNR1"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lwallet/core/jni/proto/EOS$KeyType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/proto/EOS$KeyType;->MODERNR1:Lwallet/core/jni/proto/EOS$KeyType;

    .line 28
    new-instance v5, Lwallet/core/jni/proto/EOS$KeyType;

    const-string v7, "UNRECOGNIZED"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Lwallet/core/jni/proto/EOS$KeyType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/proto/EOS$KeyType;->UNRECOGNIZED:Lwallet/core/jni/proto/EOS$KeyType;

    const/4 v7, 0x4

    new-array v7, v7, [Lwallet/core/jni/proto/EOS$KeyType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 14
    sput-object v7, Lwallet/core/jni/proto/EOS$KeyType;->$VALUES:[Lwallet/core/jni/proto/EOS$KeyType;

    .line 78
    new-instance v0, Lwallet/core/jni/proto/EOS$KeyType$1;

    invoke-direct {v0}, Lwallet/core/jni/proto/EOS$KeyType$1;-><init>()V

    sput-object v0, Lwallet/core/jni/proto/EOS$KeyType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iput p3, p0, Lwallet/core/jni/proto/EOS$KeyType;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/EOS$KeyType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 68
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/EOS$KeyType;->MODERNR1:Lwallet/core/jni/proto/EOS$KeyType;

    return-object p0

    .line 67
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/EOS$KeyType;->MODERNK1:Lwallet/core/jni/proto/EOS$KeyType;

    return-object p0

    .line 66
    :cond_2
    sget-object p0, Lwallet/core/jni/proto/EOS$KeyType;->LEGACY:Lwallet/core/jni/proto/EOS$KeyType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lwallet/core/jni/proto/EOS$KeyType;",
            ">;"
        }
    .end annotation

    .line 75
    sget-object v0, Lwallet/core/jni/proto/EOS$KeyType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 88
    sget-object v0, Lwallet/core/jni/proto/EOS$KeyType$KeyTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/EOS$KeyType;
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

    .line 61
    invoke-static {p0}, Lwallet/core/jni/proto/EOS$KeyType;->forNumber(I)Lwallet/core/jni/proto/EOS$KeyType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/EOS$KeyType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 14
    const-class v0, Lwallet/core/jni/proto/EOS$KeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$KeyType;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/EOS$KeyType;
    .locals 1

    .line 14
    sget-object v0, Lwallet/core/jni/proto/EOS$KeyType;->$VALUES:[Lwallet/core/jni/proto/EOS$KeyType;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/EOS$KeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/EOS$KeyType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 47
    sget-object v0, Lwallet/core/jni/proto/EOS$KeyType;->UNRECOGNIZED:Lwallet/core/jni/proto/EOS$KeyType;

    if-eq p0, v0, :cond_0

    .line 51
    iget v0, p0, Lwallet/core/jni/proto/EOS$KeyType;->value:I

    return v0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
