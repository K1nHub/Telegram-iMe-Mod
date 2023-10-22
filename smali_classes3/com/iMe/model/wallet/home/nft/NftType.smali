.class public final enum Lcom/iMe/model/wallet/home/nft/NftType;
.super Ljava/lang/Enum;
.source "NftType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/model/wallet/home/nft/NftType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/model/wallet/home/nft/NftType;

.field public static final enum ANONYMOUS_NUMBER:Lcom/iMe/model/wallet/home/nft/NftType;

.field public static final enum IMAGE:Lcom/iMe/model/wallet/home/nft/NftType;

.field public static final enum USERNAME:Lcom/iMe/model/wallet/home/nft/NftType;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/model/wallet/home/nft/NftType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/model/wallet/home/nft/NftType;

    sget-object v1, Lcom/iMe/model/wallet/home/nft/NftType;->IMAGE:Lcom/iMe/model/wallet/home/nft/NftType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/nft/NftType;->ANONYMOUS_NUMBER:Lcom/iMe/model/wallet/home/nft/NftType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/wallet/home/nft/NftType;->USERNAME:Lcom/iMe/model/wallet/home/nft/NftType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/iMe/model/wallet/home/nft/NftType;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/model/wallet/home/nft/NftType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/model/wallet/home/nft/NftType;->IMAGE:Lcom/iMe/model/wallet/home/nft/NftType;

    new-instance v0, Lcom/iMe/model/wallet/home/nft/NftType;

    const-string v1, "ANONYMOUS_NUMBER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/model/wallet/home/nft/NftType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/model/wallet/home/nft/NftType;->ANONYMOUS_NUMBER:Lcom/iMe/model/wallet/home/nft/NftType;

    new-instance v0, Lcom/iMe/model/wallet/home/nft/NftType;

    const-string v1, "USERNAME"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/model/wallet/home/nft/NftType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/model/wallet/home/nft/NftType;->USERNAME:Lcom/iMe/model/wallet/home/nft/NftType;

    invoke-static {}, Lcom/iMe/model/wallet/home/nft/NftType;->$values()[Lcom/iMe/model/wallet/home/nft/NftType;

    move-result-object v0

    sput-object v0, Lcom/iMe/model/wallet/home/nft/NftType;->$VALUES:[Lcom/iMe/model/wallet/home/nft/NftType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/model/wallet/home/nft/NftType;
    .locals 1

    const-class v0, Lcom/iMe/model/wallet/home/nft/NftType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/model/wallet/home/nft/NftType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/model/wallet/home/nft/NftType;
    .locals 1

    sget-object v0, Lcom/iMe/model/wallet/home/nft/NftType;->$VALUES:[Lcom/iMe/model/wallet/home/nft/NftType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/model/wallet/home/nft/NftType;

    return-object v0
.end method
