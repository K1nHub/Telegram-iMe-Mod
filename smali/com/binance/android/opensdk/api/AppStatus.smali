.class public final enum Lcom/binance/android/opensdk/api/AppStatus;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/binance/android/opensdk/api/AppStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/binance/android/opensdk/api/AppStatus;

.field public static final enum Supported:Lcom/binance/android/opensdk/api/AppStatus;

.field public static final enum UnInstalled:Lcom/binance/android/opensdk/api/AppStatus;

.field public static final enum UnSupported:Lcom/binance/android/opensdk/api/AppStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/binance/android/opensdk/api/AppStatus;

    new-instance v1, Lcom/binance/android/opensdk/api/AppStatus;

    const-string v2, "Supported"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/binance/android/opensdk/api/AppStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/binance/android/opensdk/api/AppStatus;->Supported:Lcom/binance/android/opensdk/api/AppStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/binance/android/opensdk/api/AppStatus;

    const-string v2, "UnSupported"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/binance/android/opensdk/api/AppStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/binance/android/opensdk/api/AppStatus;->UnSupported:Lcom/binance/android/opensdk/api/AppStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/binance/android/opensdk/api/AppStatus;

    const-string v2, "UnInstalled"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/binance/android/opensdk/api/AppStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/binance/android/opensdk/api/AppStatus;->UnInstalled:Lcom/binance/android/opensdk/api/AppStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/binance/android/opensdk/api/AppStatus;->$VALUES:[Lcom/binance/android/opensdk/api/AppStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/binance/android/opensdk/api/AppStatus;
    .locals 1

    const-class v0, Lcom/binance/android/opensdk/api/AppStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/binance/android/opensdk/api/AppStatus;

    return-object p0
.end method

.method public static values()[Lcom/binance/android/opensdk/api/AppStatus;
    .locals 1

    sget-object v0, Lcom/binance/android/opensdk/api/AppStatus;->$VALUES:[Lcom/binance/android/opensdk/api/AppStatus;

    invoke-virtual {v0}, [Lcom/binance/android/opensdk/api/AppStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/binance/android/opensdk/api/AppStatus;

    return-object v0
.end method
