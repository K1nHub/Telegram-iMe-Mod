.class final Lcom/iMe/storage/data/network/api/google/RemoteConfigApi$getBoolean$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RemoteConfigApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/network/api/google/RemoteConfigApi;->getBoolean(Ljava/lang/String;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $key:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/storage/data/network/api/google/RemoteConfigApi;


# direct methods
.method constructor <init>(Lcom/iMe/storage/data/network/api/google/RemoteConfigApi;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/network/api/google/RemoteConfigApi$getBoolean$1;->this$0:Lcom/iMe/storage/data/network/api/google/RemoteConfigApi;

    iput-object p2, p0, Lcom/iMe/storage/data/network/api/google/RemoteConfigApi$getBoolean$1;->$key:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/iMe/storage/data/network/api/google/RemoteConfigApi$getBoolean$1;->this$0:Lcom/iMe/storage/data/network/api/google/RemoteConfigApi;

    invoke-static {p1}, Lcom/iMe/storage/data/network/api/google/RemoteConfigApi;->access$getRemoteConfig$p(Lcom/iMe/storage/data/network/api/google/RemoteConfigApi;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/storage/data/network/api/google/RemoteConfigApi$getBoolean$1;->$key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/network/api/google/RemoteConfigApi$getBoolean$1;->invoke(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
