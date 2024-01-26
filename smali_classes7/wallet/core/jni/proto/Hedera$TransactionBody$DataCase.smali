.class public final enum Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;
.super Ljava/lang/Enum;
.source "Hedera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Hedera$TransactionBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;

.field public static final enum DATA_NOT_SET:Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;

.field public static final enum TRANSFER:Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1855
    new-instance v0, Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;

    const-string v1, "TRANSFER"

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;->TRANSFER:Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;

    .line 1856
    new-instance v1, Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;

    const-string v3, "DATA_NOT_SET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;->DATA_NOT_SET:Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;

    const/4 v3, 0x2

    new-array v3, v3, [Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 1854
    sput-object v3, Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;->$VALUES:[Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;

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

    .line 1858
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1859
    iput p3, p0, Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;
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

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1871
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;->TRANSFER:Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;

    return-object p0

    .line 1872
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;->DATA_NOT_SET:Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;

    return-object p0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;
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

    .line 1866
    invoke-static {p0}, Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;->forNumber(I)Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1854
    const-class v0, Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;
    .locals 1

    .line 1854
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;->$VALUES:[Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1877
    iget v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;->value:I

    return v0
.end method
