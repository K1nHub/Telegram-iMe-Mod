.class public final Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;
.super Ljava/lang/Object;
.source "BinancePayScreenArgs.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final token:Lcom/smedialink/model/wallet/select/SelectableToken;

.field private final userId:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs$Creator;

    invoke-direct {v0}, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs$Creator;-><init>()V

    sput-object v0, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;-><init>(Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/lang/Long;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;->token:Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 10
    iput-object p2, p0, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;->userId:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 8
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;-><init>(Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/lang/Long;ILjava/lang/Object;)Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;->token:Lcom/smedialink/model/wallet/select/SelectableToken;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;->userId:Ljava/lang/Long;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;->copy(Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/lang/Long;)Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/smedialink/model/wallet/select/SelectableToken;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;->token:Lcom/smedialink/model/wallet/select/SelectableToken;

    return-object v0
.end method

.method public final component2()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public final copy(Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/lang/Long;)Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;
    .locals 1

    new-instance v0, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;-><init>(Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/lang/Long;)V

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
    instance-of v1, p1, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;

    iget-object v1, p0, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;->token:Lcom/smedialink/model/wallet/select/SelectableToken;

    iget-object v3, p1, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;->token:Lcom/smedialink/model/wallet/select/SelectableToken;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;->userId:Ljava/lang/Long;

    iget-object p1, p1, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;->userId:Ljava/lang/Long;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getToken()Lcom/smedialink/model/wallet/select/SelectableToken;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;->token:Lcom/smedialink/model/wallet/select/SelectableToken;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/Long;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;->userId:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;->token:Lcom/smedialink/model/wallet/select/SelectableToken;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;->userId:Ljava/lang/Long;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BinancePayScreenArgs(token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;->token:Lcom/smedialink/model/wallet/select/SelectableToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;->userId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;->token:Lcom/smedialink/model/wallet/select/SelectableToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lcom/smedialink/model/wallet/home/pay/BinancePayScreenArgs;->userId:Ljava/lang/Long;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :goto_0
    return-void
.end method
