.class public final enum Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;
.super Ljava/lang/Enum;
.source "Tezos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos$OperationParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParametersCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;

.field public static final enum FA12_PARAMETERS:Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;

.field public static final enum FA2_PARAMETERS:Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;

.field public static final enum PARAMETERS_NOT_SET:Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5052
    new-instance v0, Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;

    const-string v1, "FA12_PARAMETERS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;->FA12_PARAMETERS:Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;

    .line 5053
    new-instance v1, Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;

    const-string v4, "FA2_PARAMETERS"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;->FA2_PARAMETERS:Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;

    .line 5054
    new-instance v4, Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;

    const-string v6, "PARAMETERS_NOT_SET"

    invoke-direct {v4, v6, v5, v2}, Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;->PARAMETERS_NOT_SET:Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;

    const/4 v6, 0x3

    new-array v6, v6, [Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 5051
    sput-object v6, Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;->$VALUES:[Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;

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

    .line 5056
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5057
    iput p3, p0, Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;
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

    .line 5070
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;->FA2_PARAMETERS:Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;

    return-object p0

    .line 5069
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;->FA12_PARAMETERS:Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;

    return-object p0

    .line 5071
    :cond_2
    sget-object p0, Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;->PARAMETERS_NOT_SET:Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;

    return-object p0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;
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

    .line 5064
    invoke-static {p0}, Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;->forNumber(I)Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 5051
    const-class v0, Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;
    .locals 1

    .line 5051
    sget-object v0, Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;->$VALUES:[Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 5076
    iget v0, p0, Lwallet/core/jni/proto/Tezos$OperationParameters$ParametersCase;->value:I

    return v0
.end method
