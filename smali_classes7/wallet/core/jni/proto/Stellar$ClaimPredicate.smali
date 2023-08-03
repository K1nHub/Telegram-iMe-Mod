.class public final enum Lwallet/core/jni/proto/Stellar$ClaimPredicate;
.super Ljava/lang/Enum;
.source "Stellar.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClaimPredicate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Stellar$ClaimPredicate$ClaimPredicateVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Stellar$ClaimPredicate;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Stellar$ClaimPredicate;

.field public static final enum Predicate_unconditional:Lwallet/core/jni/proto/Stellar$ClaimPredicate;

.field public static final Predicate_unconditional_VALUE:I

.field public static final enum UNRECOGNIZED:Lwallet/core/jni/proto/Stellar$ClaimPredicate;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lwallet/core/jni/proto/Stellar$ClaimPredicate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 25
    new-instance v0, Lwallet/core/jni/proto/Stellar$ClaimPredicate;

    const-string v1, "Predicate_unconditional"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lwallet/core/jni/proto/Stellar$ClaimPredicate;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Stellar$ClaimPredicate;->Predicate_unconditional:Lwallet/core/jni/proto/Stellar$ClaimPredicate;

    .line 26
    new-instance v1, Lwallet/core/jni/proto/Stellar$ClaimPredicate;

    const-string v3, "UNRECOGNIZED"

    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-direct {v1, v3, v4, v5}, Lwallet/core/jni/proto/Stellar$ClaimPredicate;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Stellar$ClaimPredicate;->UNRECOGNIZED:Lwallet/core/jni/proto/Stellar$ClaimPredicate;

    const/4 v3, 0x2

    new-array v3, v3, [Lwallet/core/jni/proto/Stellar$ClaimPredicate;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 20
    sput-object v3, Lwallet/core/jni/proto/Stellar$ClaimPredicate;->$VALUES:[Lwallet/core/jni/proto/Stellar$ClaimPredicate;

    .line 66
    new-instance v0, Lwallet/core/jni/proto/Stellar$ClaimPredicate$1;

    invoke-direct {v0}, Lwallet/core/jni/proto/Stellar$ClaimPredicate$1;-><init>()V

    sput-object v0, Lwallet/core/jni/proto/Stellar$ClaimPredicate;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput p3, p0, Lwallet/core/jni/proto/Stellar$ClaimPredicate;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Stellar$ClaimPredicate;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Stellar$ClaimPredicate;->Predicate_unconditional:Lwallet/core/jni/proto/Stellar$ClaimPredicate;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lwallet/core/jni/proto/Stellar$ClaimPredicate;",
            ">;"
        }
    .end annotation

    .line 63
    sget-object v0, Lwallet/core/jni/proto/Stellar$ClaimPredicate;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 76
    sget-object v0, Lwallet/core/jni/proto/Stellar$ClaimPredicate$ClaimPredicateVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Stellar$ClaimPredicate;
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

    .line 51
    invoke-static {p0}, Lwallet/core/jni/proto/Stellar$ClaimPredicate;->forNumber(I)Lwallet/core/jni/proto/Stellar$ClaimPredicate;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Stellar$ClaimPredicate;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 20
    const-class v0, Lwallet/core/jni/proto/Stellar$ClaimPredicate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$ClaimPredicate;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Stellar$ClaimPredicate;
    .locals 1

    .line 20
    sget-object v0, Lwallet/core/jni/proto/Stellar$ClaimPredicate;->$VALUES:[Lwallet/core/jni/proto/Stellar$ClaimPredicate;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Stellar$ClaimPredicate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Stellar$ClaimPredicate;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 37
    sget-object v0, Lwallet/core/jni/proto/Stellar$ClaimPredicate;->UNRECOGNIZED:Lwallet/core/jni/proto/Stellar$ClaimPredicate;

    if-eq p0, v0, :cond_0

    .line 41
    iget v0, p0, Lwallet/core/jni/proto/Stellar$ClaimPredicate;->value:I

    return v0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
