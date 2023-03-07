.class public final Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;
.super Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;
.source "SelectableToken.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Binance"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final id:Ljava/lang/String;

.field private final logoUrl:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final ticker:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance$Creator;

    invoke-direct {v0}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance$Creator;-><init>()V

    sput-object v0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ticker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logoUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 26
    invoke-direct/range {v1 .. v6}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    iput-object p1, p0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->id:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->ticker:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->name:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->logoUrl:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getId()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getTicker()Ljava/lang/String;

    move-result-object p2

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getName()Ljava/lang/String;

    move-result-object p3

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getLogoUrl()Ljava/lang/String;

    move-result-object p4

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getTicker()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ticker"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logoUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getTicker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getTicker()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getLogoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->logoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTicker()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->ticker:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getTicker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binance(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ticker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getTicker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->ticker:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/smedialink/model/wallet/select/SelectableToken$WithLogoUrl$Binance;->logoUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
