.class public final enum Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;
.super Ljava/lang/Enum;
.source "Waves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Waves$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

.field public static final enum CANCEL_LEASE_MESSAGE:Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

.field public static final enum LEASE_MESSAGE:Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

.field public static final enum MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

.field public static final enum TRANSFER_MESSAGE:Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1987
    new-instance v0, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

    const-string v1, "TRANSFER_MESSAGE"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;->TRANSFER_MESSAGE:Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

    .line 1988
    new-instance v1, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

    const-string v4, "LEASE_MESSAGE"

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-direct {v1, v4, v5, v6}, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;->LEASE_MESSAGE:Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

    .line 1989
    new-instance v4, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

    const-string v7, "CANCEL_LEASE_MESSAGE"

    const/4 v8, 0x2

    const/4 v9, 0x5

    invoke-direct {v4, v7, v8, v9}, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;->CANCEL_LEASE_MESSAGE:Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

    .line 1990
    new-instance v7, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

    const-string v9, "MESSAGEONEOF_NOT_SET"

    invoke-direct {v7, v9, v3, v2}, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;->MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

    new-array v6, v6, [Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v4, v6, v8

    aput-object v7, v6, v3

    .line 1986
    sput-object v6, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;->$VALUES:[Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

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

    .line 1992
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1993
    iput p3, p0, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;
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

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2007
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;->CANCEL_LEASE_MESSAGE:Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

    return-object p0

    .line 2006
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;->LEASE_MESSAGE:Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

    return-object p0

    .line 2005
    :cond_2
    sget-object p0, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;->TRANSFER_MESSAGE:Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

    return-object p0

    .line 2008
    :cond_3
    sget-object p0, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;->MESSAGEONEOF_NOT_SET:Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

    return-object p0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;
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

    .line 2000
    invoke-static {p0}, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;->forNumber(I)Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1986
    const-class v0, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;
    .locals 1

    .line 1986
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;->$VALUES:[Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 2013
    iget v0, p0, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;->value:I

    return v0
.end method
