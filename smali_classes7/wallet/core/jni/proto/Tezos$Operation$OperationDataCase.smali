.class public final enum Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;
.super Ljava/lang/Enum;
.source "Tezos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos$Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationDataCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

.field public static final enum DELEGATION_OPERATION_DATA:Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

.field public static final enum OPERATIONDATA_NOT_SET:Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

.field public static final enum REVEAL_OPERATION_DATA:Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

.field public static final enum TRANSACTION_OPERATION_DATA:Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1750
    new-instance v0, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

    const-string v1, "REVEAL_OPERATION_DATA"

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;->REVEAL_OPERATION_DATA:Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

    .line 1751
    new-instance v1, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

    const-string v3, "TRANSACTION_OPERATION_DATA"

    const/4 v4, 0x1

    const/16 v5, 0x9

    invoke-direct {v1, v3, v4, v5}, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;->TRANSACTION_OPERATION_DATA:Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

    .line 1752
    new-instance v3, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

    const-string v5, "DELEGATION_OPERATION_DATA"

    const/4 v6, 0x2

    const/16 v7, 0xb

    invoke-direct {v3, v5, v6, v7}, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;->DELEGATION_OPERATION_DATA:Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

    .line 1753
    new-instance v5, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

    const-string v7, "OPERATIONDATA_NOT_SET"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;->OPERATIONDATA_NOT_SET:Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

    const/4 v7, 0x4

    new-array v7, v7, [Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 1749
    sput-object v7, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;->$VALUES:[Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

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

    .line 1755
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1756
    iput p3, p0, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;
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

    const/16 v0, 0xb

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1769
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;->TRANSACTION_OPERATION_DATA:Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

    return-object p0

    .line 1768
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;->REVEAL_OPERATION_DATA:Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

    return-object p0

    .line 1770
    :cond_2
    sget-object p0, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;->DELEGATION_OPERATION_DATA:Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

    return-object p0

    .line 1771
    :cond_3
    sget-object p0, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;->OPERATIONDATA_NOT_SET:Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

    return-object p0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;
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

    .line 1763
    invoke-static {p0}, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;->forNumber(I)Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1749
    const-class v0, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;
    .locals 1

    .line 1749
    sget-object v0, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;->$VALUES:[Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1776
    iget v0, p0, Lwallet/core/jni/proto/Tezos$Operation$OperationDataCase;->value:I

    return v0
.end method
