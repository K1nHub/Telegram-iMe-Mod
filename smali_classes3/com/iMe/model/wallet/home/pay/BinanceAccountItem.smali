.class public final Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;
.super Lcom/iMe/model/common/NoChildNode;
.source "BinanceAccountItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/wallet/home/pay/BinanceAccountItem$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/model/wallet/home/pay/BinanceAccountItem$Companion;

.field private static final SHORT_ID_MAX_LENGTH:I = 0xa

.field private static final SHORT_ID_PART_LENGTH:I = 0x5


# instance fields
.field private final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;"
        }
    .end annotation
.end field

.field private final info:Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->Companion:Lcom/iMe/model/wallet/home/pay/BinanceAccountItem$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/iMe/model/common/NoChildNode;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->info:Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    .line 10
    iput-object p2, p0, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->actions:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;Ljava/util/List;ILjava/lang/Object;)Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->info:Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->actions:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->copy(Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;Ljava/util/List;)Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->info:Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->actions:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;Ljava/util/List;)Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;)",
            "Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;"
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;

    invoke-direct {v0, p1, p2}, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;-><init>(Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->info:Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    iget-object v3, p1, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->info:Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->actions:Ljava/util/List;

    iget-object p1, p1, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->actions:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->actions:Ljava/util/List;

    return-object v0
.end method

.method public final getInfo()Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->info:Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    return-object v0
.end method

.method public final getShortId()Ljava/lang/String;
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->info:Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->info:Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/StringExtKt;->shortened(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->info:Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->info:Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->actions:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BinanceAccountItem(info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->info:Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;->actions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
