.class public final enum Lwallet/core/jni/proto/Cosmos$Message$VoteOption;
.super Ljava/lang/Enum;
.source "Cosmos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VoteOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Message$VoteOption$VoteOptionVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Cosmos$Message$VoteOption;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

.field public static final enum ABSTAIN:Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

.field public static final ABSTAIN_VALUE:I = 0x2

.field public static final enum NO:Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

.field public static final NO_VALUE:I = 0x3

.field public static final enum NO_WITH_VETO:Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

.field public static final NO_WITH_VETO_VALUE:I = 0x4

.field public static final enum UNRECOGNIZED:Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

.field public static final enum YES:Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

.field public static final YES_VALUE:I = 0x1

.field public static final enum _UNSPECIFIED:Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

.field public static final _UNSPECIFIED_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lwallet/core/jni/proto/Cosmos$Message$VoteOption;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 2099
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    const-string v1, "_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;->_UNSPECIFIED:Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    .line 2107
    new-instance v1, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    const-string v3, "YES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;->YES:Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    .line 2115
    new-instance v3, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    const-string v5, "ABSTAIN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;->ABSTAIN:Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    .line 2123
    new-instance v5, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    const-string v7, "NO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;->NO:Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    .line 2131
    new-instance v7, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    const-string v9, "NO_WITH_VETO"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;->NO_WITH_VETO:Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    .line 2132
    new-instance v9, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v9, v11, v12, v13}, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;->UNRECOGNIZED:Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    const/4 v11, 0x6

    new-array v11, v11, [Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 2090
    sput-object v11, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;->$VALUES:[Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    .line 2212
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$VoteOption$1;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Message$VoteOption$1;-><init>()V

    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    .line 2236
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2237
    iput p3, p0, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Cosmos$Message$VoteOption;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2202
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;->NO_WITH_VETO:Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    return-object p0

    .line 2201
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;->NO:Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    return-object p0

    .line 2200
    :cond_2
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;->ABSTAIN:Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    return-object p0

    .line 2199
    :cond_3
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;->YES:Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    return-object p0

    .line 2198
    :cond_4
    sget-object p0, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;->_UNSPECIFIED:Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lwallet/core/jni/proto/Cosmos$Message$VoteOption;",
            ">;"
        }
    .end annotation

    .line 2209
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 2222
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$VoteOption$VoteOptionVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Cosmos$Message$VoteOption;
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

    .line 2193
    invoke-static {p0}, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;->forNumber(I)Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$VoteOption;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 2090
    const-class v0, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Cosmos$Message$VoteOption;
    .locals 1

    .line 2090
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;->$VALUES:[Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Cosmos$Message$VoteOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 2179
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;->UNRECOGNIZED:Lwallet/core/jni/proto/Cosmos$Message$VoteOption;

    if-eq p0, v0, :cond_0

    .line 2183
    iget v0, p0, Lwallet/core/jni/proto/Cosmos$Message$VoteOption;->value:I

    return v0

    .line 2180
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
