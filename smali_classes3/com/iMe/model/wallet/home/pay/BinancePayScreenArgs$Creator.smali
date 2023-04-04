.class public final Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs$Creator;
.super Ljava/lang/Object;
.source "BinancePayScreenArgs.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;
    .locals 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    const-class v1, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/iMe/model/wallet/select/SelectableToken;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    invoke-direct {v0, v1, p1}, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;-><init>(Lcom/iMe/model/wallet/select/SelectableToken;Ljava/lang/Long;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;
    .locals 0

    new-array p1, p1, [Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs$Creator;->newArray(I)[Lcom/iMe/model/wallet/home/pay/BinancePayScreenArgs;

    move-result-object p1

    return-object p1
.end method
