.class public final enum Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;
.super Ljava/lang/Enum;
.source "TransactionSpeedLevel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

.field public static final Companion:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel$Companion;

.field public static final enum FASTEST:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

.field public static final enum LOW:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

.field public static final enum MEDIUM:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

.field private static final defaultValue:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;


# instance fields
.field private final title:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->LOW:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->MEDIUM:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->FASTEST:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    sget v1, Lcom/iMe/storage/R$string;->transaction_speed_low:I

    const-string v2, "LOW"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->LOW:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    .line 8
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    sget v1, Lcom/iMe/storage/R$string;->transaction_speed_medium:I

    const-string v2, "MEDIUM"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->MEDIUM:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    .line 9
    new-instance v1, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    sget v2, Lcom/iMe/storage/R$string;->transaction_speed_fastest:I

    const-string v3, "FASTEST"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v2}, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->FASTEST:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->$values()[Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    move-result-object v1

    sput-object v1, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    new-instance v1, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->Companion:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel$Companion;

    .line 12
    sput-object v0, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->defaultValue:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->title:I

    return-void
.end method

.method public static final synthetic access$getDefaultValue$cp()Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;
    .locals 1

    .line 6
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->defaultValue:Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;

    return-object v0
.end method


# virtual methods
.method public final getTitle()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;->title:I

    return v0
.end method
