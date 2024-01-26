.class public final enum Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;
.super Ljava/lang/Enum;
.source "NEAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR$AccessKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PermissionCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;

.field public static final enum FULL_ACCESS:Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;

.field public static final enum FUNCTION_CALL:Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;

.field public static final enum PERMISSION_NOT_SET:Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1229
    new-instance v0, Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;

    const-string v1, "FUNCTION_CALL"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;->FUNCTION_CALL:Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;

    .line 1230
    new-instance v1, Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;

    const-string v4, "FULL_ACCESS"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;->FULL_ACCESS:Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;

    .line 1231
    new-instance v4, Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;

    const-string v7, "PERMISSION_NOT_SET"

    invoke-direct {v4, v7, v3, v2}, Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;->PERMISSION_NOT_SET:Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;

    new-array v6, v6, [Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v4, v6, v3

    .line 1228
    sput-object v6, Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;->$VALUES:[Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;

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

    .line 1233
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1234
    iput p3, p0, Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;
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

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1247
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;->FULL_ACCESS:Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;

    return-object p0

    .line 1246
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;->FUNCTION_CALL:Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;

    return-object p0

    .line 1248
    :cond_2
    sget-object p0, Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;->PERMISSION_NOT_SET:Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;

    return-object p0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;
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

    .line 1241
    invoke-static {p0}, Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;->forNumber(I)Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 1228
    const-class v0, Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;
    .locals 1

    .line 1228
    sget-object v0, Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;->$VALUES:[Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1253
    iget v0, p0, Lwallet/core/jni/proto/NEAR$AccessKey$PermissionCase;->value:I

    return v0
.end method
