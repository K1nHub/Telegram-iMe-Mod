.class public final enum Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;
.super Ljava/lang/Enum;
.source "TokenOrderType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

.field public static final enum ALPHABET:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

.field public static final enum BALANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

.field public static final Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType$Companion;

.field public static final enum DEFAULT:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;


# instance fields
.field private final title:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->ALPHABET:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->BALANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->DEFAULT:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    sget v1, Lcom/iMe/storage/R$string;->choose_tokens_order_alphabet:I

    const-string v2, "ALPHABET"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->ALPHABET:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    .line 11
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    sget v1, Lcom/iMe/storage/R$string;->choose_tokens_order_balance:I

    const-string v2, "BALANCE"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->BALANCE:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    .line 12
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    sget v1, Lcom/iMe/storage/R$string;->choose_tokens_order_default:I

    const-string v2, "DEFAULT"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->DEFAULT:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    invoke-static {}, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->$values()[Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->$VALUES:[Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput p3, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->title:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->$VALUES:[Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    return-object v0
.end method


# virtual methods
.method public final getTitle()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->title:I

    return v0
.end method
