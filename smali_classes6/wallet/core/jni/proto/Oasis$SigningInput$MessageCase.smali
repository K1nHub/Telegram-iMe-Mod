.class public final enum Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;
.super Ljava/lang/Enum;
.source "Oasis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Oasis$SigningInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;

.field public static final enum MESSAGE_NOT_SET:Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;

.field public static final enum TRANSFER:Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1057
    new-instance v0, Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;

    const-string v1, "TRANSFER"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;->TRANSFER:Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;

    .line 1058
    new-instance v1, Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;

    const-string v4, "MESSAGE_NOT_SET"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;->MESSAGE_NOT_SET:Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;

    new-array v3, v3, [Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    .line 1056
    sput-object v3, Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;->$VALUES:[Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;

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

    .line 1060
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1061
    iput p3, p0, Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;
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

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1073
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;->TRANSFER:Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;

    return-object p0

    .line 1074
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;->MESSAGE_NOT_SET:Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;

    return-object p0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;
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

    .line 1068
    invoke-static {p0}, Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;->forNumber(I)Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1056
    const-class v0, Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;
    .locals 1

    .line 1056
    sget-object v0, Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;->$VALUES:[Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1079
    iget v0, p0, Lwallet/core/jni/proto/Oasis$SigningInput$MessageCase;->value:I

    return v0
.end method
