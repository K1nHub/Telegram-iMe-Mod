.class public final enum Lcom/iMe/storage/data/network/model/response/base/Status;
.super Ljava/lang/Enum;
.source "Status.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/network/model/response/base/Status$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/data/network/model/response/base/Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/data/network/model/response/base/Status;

.field public static final enum CANCELLED:Lcom/iMe/storage/data/network/model/response/base/Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cancelled"
    .end annotation
.end field

.field public static final Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

.field public static final enum ERROR:Lcom/iMe/storage/data/network/model/response/base/Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error"
    .end annotation
.end field

.field public static final enum OK:Lcom/iMe/storage/data/network/model/response/base/Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ok"
    .end annotation
.end field

.field public static final enum PENDING:Lcom/iMe/storage/data/network/model/response/base/Status;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pending"
    .end annotation
.end field


# instance fields
.field private final title:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/data/network/model/response/base/Status;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iMe/storage/data/network/model/response/base/Status;

    sget-object v1, Lcom/iMe/storage/data/network/model/response/base/Status;->OK:Lcom/iMe/storage/data/network/model/response/base/Status;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/data/network/model/response/base/Status;->ERROR:Lcom/iMe/storage/data/network/model/response/base/Status;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/data/network/model/response/base/Status;->PENDING:Lcom/iMe/storage/data/network/model/response/base/Status;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/data/network/model/response/base/Status;->CANCELLED:Lcom/iMe/storage/data/network/model/response/base/Status;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lcom/iMe/storage/data/network/model/response/base/Status;

    .line 10
    sget v1, Lcom/iMe/storage/R$string;->status_ok:I

    const-string v2, "OK"

    const/4 v3, 0x0

    .line 9
    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/data/network/model/response/base/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->OK:Lcom/iMe/storage/data/network/model/response/base/Status;

    .line 12
    new-instance v0, Lcom/iMe/storage/data/network/model/response/base/Status;

    .line 13
    sget v1, Lcom/iMe/storage/R$string;->status_error:I

    const-string v2, "ERROR"

    const/4 v3, 0x1

    .line 12
    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/data/network/model/response/base/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->ERROR:Lcom/iMe/storage/data/network/model/response/base/Status;

    .line 15
    new-instance v0, Lcom/iMe/storage/data/network/model/response/base/Status;

    .line 16
    sget v1, Lcom/iMe/storage/R$string;->status_pending:I

    const-string v2, "PENDING"

    const/4 v3, 0x2

    .line 15
    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/data/network/model/response/base/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->PENDING:Lcom/iMe/storage/data/network/model/response/base/Status;

    .line 18
    new-instance v0, Lcom/iMe/storage/data/network/model/response/base/Status;

    .line 19
    sget v1, Lcom/iMe/storage/R$string;->status_cancelled:I

    const-string v2, "CANCELLED"

    const/4 v3, 0x3

    .line 18
    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/data/network/model/response/base/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->CANCELLED:Lcom/iMe/storage/data/network/model/response/base/Status;

    invoke-static {}, Lcom/iMe/storage/data/network/model/response/base/Status;->$values()[Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->$VALUES:[Lcom/iMe/storage/data/network/model/response/base/Status;

    new-instance v0, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/iMe/storage/data/network/model/response/base/Status;->title:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;
    .locals 1

    const-class v0, Lcom/iMe/storage/data/network/model/response/base/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/data/network/model/response/base/Status;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/data/network/model/response/base/Status;
    .locals 1

    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->$VALUES:[Lcom/iMe/storage/data/network/model/response/base/Status;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/data/network/model/response/base/Status;

    return-object v0
.end method


# virtual methods
.method public final getTitle()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/storage/data/network/model/response/base/Status;->title:I

    return v0
.end method
