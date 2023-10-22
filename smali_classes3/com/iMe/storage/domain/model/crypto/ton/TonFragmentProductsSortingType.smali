.class public final enum Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;
.super Ljava/lang/Enum;
.source "TonFragmentProductsSortingType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

.field public static final Companion:Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType$Companion;

.field public static final enum ENDING_SOON:Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

.field public static final enum PRICE_ASCENDING:Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

.field public static final enum PRICE_DESCENDING:Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

.field public static final enum RECENTLY_LISTED:Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;


# instance fields
.field private final backendName:Ljava/lang/String;

.field private final textResId:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;->PRICE_DESCENDING:Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;->PRICE_ASCENDING:Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;->RECENTLY_LISTED:Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;->ENDING_SOON:Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    .line 12
    sget v1, Lcom/iMe/storage/R$string;->fragment_usernames_sorting_price_descending:I

    const-string v2, "PRICE_DESCENDING"

    const/4 v3, 0x0

    const-string v4, "price_desc"

    .line 10
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;->PRICE_DESCENDING:Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    .line 14
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    .line 16
    sget v1, Lcom/iMe/storage/R$string;->fragment_usernames_sorting_price_ascending:I

    const-string v2, "PRICE_ASCENDING"

    const/4 v3, 0x1

    const-string v4, "price_asc"

    .line 14
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;->PRICE_ASCENDING:Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    .line 18
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    .line 20
    sget v1, Lcom/iMe/storage/R$string;->fragment_usernames_sorting_recently_listed:I

    const-string v2, "RECENTLY_LISTED"

    const/4 v3, 0x2

    const-string v4, "listed"

    .line 18
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;->RECENTLY_LISTED:Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    .line 22
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    .line 24
    sget v1, Lcom/iMe/storage/R$string;->fragment_usernames_sorting_ending_soon:I

    const-string v2, "ENDING_SOON"

    const/4 v3, 0x3

    const-string v4, "ending"

    .line 22
    invoke-direct {v0, v2, v3, v4, v1}, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;->ENDING_SOON:Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;->$values()[Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;->Companion:Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType$Companion;

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

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    iput-object p3, p0, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;->backendName:Ljava/lang/String;

    .line 8
    iput p4, p0, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;->textResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;->$VALUES:[Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    return-object v0
.end method


# virtual methods
.method public final getBackendName()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;->backendName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextResId()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;->textResId:I

    return v0
.end method
