.class public final enum Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;
.super Ljava/lang/Enum;
.source "Everscale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Everscale$Transfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccountStateOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;

.field public static final enum ACCOUNTSTATEONEOF_NOT_SET:Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;

.field public static final enum ENCODED_CONTRACT_DATA:Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 242
    new-instance v0, Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;

    const-string v1, "ENCODED_CONTRACT_DATA"

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;->ENCODED_CONTRACT_DATA:Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;

    .line 243
    new-instance v1, Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;

    const-string v3, "ACCOUNTSTATEONEOF_NOT_SET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;->ACCOUNTSTATEONEOF_NOT_SET:Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;

    const/4 v3, 0x2

    new-array v3, v3, [Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 241
    sput-object v3, Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;->$VALUES:[Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;

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

    .line 245
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 246
    iput p3, p0, Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;
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

    .line 258
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;->ENCODED_CONTRACT_DATA:Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;

    return-object p0

    .line 259
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;->ACCOUNTSTATEONEOF_NOT_SET:Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;

    return-object p0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;
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

    .line 253
    invoke-static {p0}, Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;->forNumber(I)Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 241
    const-class v0, Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;
    .locals 1

    .line 241
    sget-object v0, Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;->$VALUES:[Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 264
    iget v0, p0, Lwallet/core/jni/proto/Everscale$Transfer$AccountStateOneofCase;->value:I

    return v0
.end method
