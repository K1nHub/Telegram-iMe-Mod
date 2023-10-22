.class public final enum Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;
.super Ljava/lang/Enum;
.source "Polkadot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;

.field public static final enum BALANCE_CALL:Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;

.field public static final enum MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;

.field public static final enum STAKING_CALL:Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5817
    new-instance v0, Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;

    const-string v1, "BALANCE_CALL"

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;->BALANCE_CALL:Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;

    .line 5818
    new-instance v1, Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;

    const-string v3, "STAKING_CALL"

    const/4 v4, 0x1

    const/16 v5, 0xb

    invoke-direct {v1, v3, v4, v5}, Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;->STAKING_CALL:Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;

    .line 5819
    new-instance v3, Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;

    const-string v5, "MESSAGEONEOF_NOT_SET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;->MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;

    const/4 v5, 0x3

    new-array v5, v5, [Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 5816
    sput-object v5, Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;->$VALUES:[Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;

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

    .line 5821
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5822
    iput p3, p0, Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;
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

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5835
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;->STAKING_CALL:Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;

    return-object p0

    .line 5834
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;->BALANCE_CALL:Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;

    return-object p0

    .line 5836
    :cond_2
    sget-object p0, Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;->MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;

    return-object p0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;
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

    .line 5829
    invoke-static {p0}, Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;->forNumber(I)Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 5816
    const-class v0, Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;
    .locals 1

    .line 5816
    sget-object v0, Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;->$VALUES:[Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 5841
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;->value:I

    return v0
.end method
