.class public final synthetic Lcom/iMe/storage/data/network/api/own/KiklikoApi$-CC;
.super Ljava/lang/Object;
.source "KiklikoApi.kt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/iMe/storage/data/network/api/own/KiklikoApi;->Companion:Lcom/iMe/storage/data/network/api/own/KiklikoApi$Companion;

    return-void
.end method

.method public static synthetic getTrending$default(Lcom/iMe/storage/data/network/api/own/KiklikoApi;ILjava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/16 p3, 0x10

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const-string p4, "day"

    .line 33
    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/api/own/KiklikoApi;->getTrending(ILjava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getTrending"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic searchByKeyword$default(Lcom/iMe/storage/data/network/api/own/KiklikoApi;Ljava/lang/String;ILjava/lang/String;IILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/16 p4, 0x10

    .line 17
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/api/own/KiklikoApi;->searchByKeyword(Ljava/lang/String;ILjava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: searchByKeyword"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic searchByTag$default(Lcom/iMe/storage/data/network/api/own/KiklikoApi;Ljava/lang/String;ILjava/lang/String;IILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/16 p4, 0x10

    .line 25
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/iMe/storage/data/network/api/own/KiklikoApi;->searchByTag(Ljava/lang/String;ILjava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: searchByTag"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
