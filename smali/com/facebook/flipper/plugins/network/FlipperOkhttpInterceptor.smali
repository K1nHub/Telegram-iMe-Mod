.class public final Lcom/facebook/flipper/plugins/network/FlipperOkhttpInterceptor;
.super Ljava/lang/Object;
.source "FlipperOkhttpInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public constructor <init>(Lcom/facebook/flipper/plugins/network/NetworkFlipperPlugin;Ljava/lang/Boolean;)V
    .locals 0

    const-string p2, "plugin"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/flipper/plugins/network/NetworkFlipperPlugin;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 8
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/flipper/plugins/network/FlipperOkhttpInterceptor;-><init>(Lcom/facebook/flipper/plugins/network/NetworkFlipperPlugin;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
