.class public final enum Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;
.super Ljava/lang/Enum;
.source "TransactionDirection.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

.field public static final Companion:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

.field public static final enum IN:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

.field public static final enum OUT:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

.field public static final enum SELF:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;


# instance fields
.field private final symbol:Ljava/lang/String;

.field private title:I


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->IN:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->OUT:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->SELF:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    sget v1, Lcom/smedialink/storage/R$string;->transaction_direction_in_title:I

    const-string v2, "IN"

    const/4 v3, 0x0

    const-string v4, "+"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->IN:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    .line 9
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    sget v1, Lcom/smedialink/storage/R$string;->transaction_direction_out_title:I

    const-string v2, "OUT"

    const/4 v3, 0x1

    const-string v4, "-"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->OUT:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    .line 10
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    const-string v2, "SELF"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->SELF:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    invoke-static {}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->$values()[Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->$VALUES:[Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->symbol:Ljava/lang/String;

    iput p4, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->title:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;
    .locals 1

    const-class v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->$VALUES:[Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    return-object v0
.end method


# virtual methods
.method public final getSymbol()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->symbol:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->title:I

    return v0
.end method

.method public final setTitle(I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->title:I

    return-void
.end method
