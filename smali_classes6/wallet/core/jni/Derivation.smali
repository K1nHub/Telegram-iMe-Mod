.class public final enum Lwallet/core/jni/Derivation;
.super Ljava/lang/Enum;
.source "Derivation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/Derivation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/Derivation;

.field public static final enum BITCOINLEGACY:Lwallet/core/jni/Derivation;

.field public static final enum BITCOINSEGWIT:Lwallet/core/jni/Derivation;

.field public static final enum BITCOINTESTNET:Lwallet/core/jni/Derivation;

.field public static final enum CUSTOM:Lwallet/core/jni/Derivation;

.field public static final enum DEFAULT:Lwallet/core/jni/Derivation;

.field public static final enum LITECOINLEGACY:Lwallet/core/jni/Derivation;

.field public static final enum SOLANASOLANA:Lwallet/core/jni/Derivation;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 17
    new-instance v0, Lwallet/core/jni/Derivation;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lwallet/core/jni/Derivation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/Derivation;->DEFAULT:Lwallet/core/jni/Derivation;

    .line 18
    new-instance v1, Lwallet/core/jni/Derivation;

    const-string v3, "CUSTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lwallet/core/jni/Derivation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/Derivation;->CUSTOM:Lwallet/core/jni/Derivation;

    .line 19
    new-instance v3, Lwallet/core/jni/Derivation;

    const-string v5, "BITCOINSEGWIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lwallet/core/jni/Derivation;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lwallet/core/jni/Derivation;->BITCOINSEGWIT:Lwallet/core/jni/Derivation;

    .line 20
    new-instance v5, Lwallet/core/jni/Derivation;

    const-string v7, "BITCOINLEGACY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lwallet/core/jni/Derivation;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lwallet/core/jni/Derivation;->BITCOINLEGACY:Lwallet/core/jni/Derivation;

    .line 21
    new-instance v7, Lwallet/core/jni/Derivation;

    const-string v9, "BITCOINTESTNET"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lwallet/core/jni/Derivation;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lwallet/core/jni/Derivation;->BITCOINTESTNET:Lwallet/core/jni/Derivation;

    .line 22
    new-instance v9, Lwallet/core/jni/Derivation;

    const-string v11, "LITECOINLEGACY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lwallet/core/jni/Derivation;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lwallet/core/jni/Derivation;->LITECOINLEGACY:Lwallet/core/jni/Derivation;

    .line 23
    new-instance v11, Lwallet/core/jni/Derivation;

    const-string v13, "SOLANASOLANA"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lwallet/core/jni/Derivation;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lwallet/core/jni/Derivation;->SOLANASOLANA:Lwallet/core/jni/Derivation;

    const/4 v13, 0x7

    new-array v13, v13, [Lwallet/core/jni/Derivation;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 16
    sput-object v13, Lwallet/core/jni/Derivation;->$VALUES:[Lwallet/core/jni/Derivation;

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

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lwallet/core/jni/Derivation;->value:I

    return-void
.end method

.method public static createFromValue(I)Lwallet/core/jni/Derivation;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 39
    :pswitch_0
    sget-object p0, Lwallet/core/jni/Derivation;->SOLANASOLANA:Lwallet/core/jni/Derivation;

    return-object p0

    .line 38
    :pswitch_1
    sget-object p0, Lwallet/core/jni/Derivation;->LITECOINLEGACY:Lwallet/core/jni/Derivation;

    return-object p0

    .line 37
    :pswitch_2
    sget-object p0, Lwallet/core/jni/Derivation;->BITCOINTESTNET:Lwallet/core/jni/Derivation;

    return-object p0

    .line 36
    :pswitch_3
    sget-object p0, Lwallet/core/jni/Derivation;->BITCOINLEGACY:Lwallet/core/jni/Derivation;

    return-object p0

    .line 35
    :pswitch_4
    sget-object p0, Lwallet/core/jni/Derivation;->BITCOINSEGWIT:Lwallet/core/jni/Derivation;

    return-object p0

    .line 34
    :pswitch_5
    sget-object p0, Lwallet/core/jni/Derivation;->CUSTOM:Lwallet/core/jni/Derivation;

    return-object p0

    .line 33
    :pswitch_6
    sget-object p0, Lwallet/core/jni/Derivation;->DEFAULT:Lwallet/core/jni/Derivation;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/Derivation;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 16
    const-class v0, Lwallet/core/jni/Derivation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/Derivation;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/Derivation;
    .locals 1

    .line 16
    sget-object v0, Lwallet/core/jni/Derivation;->$VALUES:[Lwallet/core/jni/Derivation;

    invoke-virtual {v0}, [Lwallet/core/jni/Derivation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/Derivation;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 29
    iget v0, p0, Lwallet/core/jni/Derivation;->value:I

    return v0
.end method
