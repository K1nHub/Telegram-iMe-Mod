.class public final enum Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;
.super Ljava/lang/Enum;
.source "Zilliqa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Zilliqa$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;

.field public static final enum MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;

.field public static final enum RAW_TRANSACTION:Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;

.field public static final enum TRANSFER:Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 801
    new-instance v0, Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;

    const-string v1, "TRANSFER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;->TRANSFER:Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;

    .line 802
    new-instance v1, Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;

    const-string v4, "RAW_TRANSACTION"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;->RAW_TRANSACTION:Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;

    .line 803
    new-instance v4, Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;

    const-string v6, "MESSAGEONEOF_NOT_SET"

    invoke-direct {v4, v6, v5, v2}, Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;->MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;

    const/4 v6, 0x3

    new-array v6, v6, [Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    .line 800
    sput-object v6, Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;->$VALUES:[Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;

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

    .line 805
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 806
    iput p3, p0, Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;
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

    .line 819
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;->RAW_TRANSACTION:Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;

    return-object p0

    .line 818
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;->TRANSFER:Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;

    return-object p0

    .line 820
    :cond_2
    sget-object p0, Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;->MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;

    return-object p0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;
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

    .line 813
    invoke-static {p0}, Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;->forNumber(I)Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 800
    const-class v0, Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;
    .locals 1

    .line 800
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;->$VALUES:[Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 825
    iget v0, p0, Lwallet/core/jni/proto/Zilliqa$Transaction$MessageOneofCase;->value:I

    return v0
.end method
