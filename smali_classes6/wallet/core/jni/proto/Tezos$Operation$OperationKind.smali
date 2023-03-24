.class public final enum Lwallet/core/jni/proto/Tezos$Operation$OperationKind;
.super Ljava/lang/Enum;
.source "Tezos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos$Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationKind"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tezos$Operation$OperationKind$OperationKindVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Tezos$Operation$OperationKind;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

.field public static final enum DELEGATION:Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

.field public static final DELEGATION_VALUE:I = 0x6e

.field public static final enum ENDORSEMENT:Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

.field public static final ENDORSEMENT_VALUE:I = 0x0

.field public static final enum REVEAL:Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

.field public static final REVEAL_VALUE:I = 0x6b

.field public static final enum TRANSACTION:Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

.field public static final TRANSACTION_VALUE:I = 0x6c

.field public static final enum UNRECOGNIZED:Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lwallet/core/jni/proto/Tezos$Operation$OperationKind;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1644
    new-instance v0, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    const-string v1, "ENDORSEMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;->ENDORSEMENT:Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    .line 1648
    new-instance v1, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    const-string v3, "REVEAL"

    const/4 v4, 0x1

    const/16 v5, 0x6b

    invoke-direct {v1, v3, v4, v5}, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;->REVEAL:Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    .line 1652
    new-instance v3, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    const-string v5, "TRANSACTION"

    const/4 v6, 0x2

    const/16 v7, 0x6c

    invoke-direct {v3, v5, v6, v7}, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;->TRANSACTION:Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    .line 1656
    new-instance v5, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    const-string v7, "DELEGATION"

    const/4 v8, 0x3

    const/16 v9, 0x6e

    invoke-direct {v5, v7, v8, v9}, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;->DELEGATION:Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    .line 1657
    new-instance v7, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    const-string v9, "UNRECOGNIZED"

    const/4 v10, 0x4

    const/4 v11, -0x1

    invoke-direct {v7, v9, v10, v11}, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;->UNRECOGNIZED:Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    const/4 v9, 0x5

    new-array v9, v9, [Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 1635
    sput-object v9, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;->$VALUES:[Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    .line 1716
    new-instance v0, Lwallet/core/jni/proto/Tezos$Operation$OperationKind$1;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tezos$Operation$OperationKind$1;-><init>()V

    sput-object v0, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 1740
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1741
    iput p3, p0, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Tezos$Operation$OperationKind;
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

    const/16 v0, 0x6e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x6b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x6c

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1705
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;->TRANSACTION:Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    return-object p0

    .line 1704
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;->REVEAL:Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    return-object p0

    .line 1706
    :cond_2
    sget-object p0, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;->DELEGATION:Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    return-object p0

    .line 1703
    :cond_3
    sget-object p0, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;->ENDORSEMENT:Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lwallet/core/jni/proto/Tezos$Operation$OperationKind;",
            ">;"
        }
    .end annotation

    .line 1713
    sget-object v0, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1726
    sget-object v0, Lwallet/core/jni/proto/Tezos$Operation$OperationKind$OperationKindVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Tezos$Operation$OperationKind;
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

    .line 1698
    invoke-static {p0}, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;->forNumber(I)Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Tezos$Operation$OperationKind;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1635
    const-class v0, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Tezos$Operation$OperationKind;
    .locals 1

    .line 1635
    sget-object v0, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;->$VALUES:[Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Tezos$Operation$OperationKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 1684
    sget-object v0, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;->UNRECOGNIZED:Lwallet/core/jni/proto/Tezos$Operation$OperationKind;

    if-eq p0, v0, :cond_0

    .line 1688
    iget v0, p0, Lwallet/core/jni/proto/Tezos$Operation$OperationKind;->value:I

    return v0

    .line 1685
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
