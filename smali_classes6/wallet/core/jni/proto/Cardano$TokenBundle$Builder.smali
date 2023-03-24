.class public final Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$TokenBundleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano$TokenBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cardano$TokenBundle;",
        "Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$TokenBundleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2869
    invoke-static {}, Lwallet/core/jni/proto/Cardano$TokenBundle;->access$4500()Lwallet/core/jni/proto/Cardano$TokenBundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cardano$1;)V
    .locals 0

    .line 2862
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllToken(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;)",
            "Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;"
        }
    .end annotation

    .line 2954
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2955
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TokenBundle;->access$4900(Lwallet/core/jni/proto/Cardano$TokenBundle;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addToken(ILwallet/core/jni/proto/Cardano$TokenAmount$Builder;)Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 2944
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2945
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    .line 2946
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cardano$TokenAmount;

    .line 2945
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TokenBundle;->access$4800(Lwallet/core/jni/proto/Cardano$TokenBundle;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public addToken(ILwallet/core/jni/proto/Cardano$TokenAmount;)Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 2926
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2927
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TokenBundle;->access$4800(Lwallet/core/jni/proto/Cardano$TokenBundle;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public addToken(Lwallet/core/jni/proto/Cardano$TokenAmount$Builder;)Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 2935
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2936
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TokenAmount;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TokenBundle;->access$4700(Lwallet/core/jni/proto/Cardano$TokenBundle;Lwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public addToken(Lwallet/core/jni/proto/Cardano$TokenAmount;)Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2917
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2918
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TokenBundle;->access$4700(Lwallet/core/jni/proto/Cardano$TokenBundle;Lwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public clearToken()Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;
    .locals 1

    .line 2962
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2963
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TokenBundle;->access$5000(Lwallet/core/jni/proto/Cardano$TokenBundle;)V

    return-object p0
.end method

.method public getToken(I)Lwallet/core/jni/proto/Cardano$TokenAmount;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2892
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Cardano$TokenBundle;->getToken(I)Lwallet/core/jni/proto/Cardano$TokenAmount;

    move-result-object p1

    return-object p1
.end method

.method public getTokenCount()I
    .locals 1

    .line 2886
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TokenBundle;->getTokenCount()I

    move-result v0

    return v0
.end method

.method public getTokenList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;"
        }
    .end annotation

    .line 2878
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    .line 2879
    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TokenBundle;->getTokenList()Ljava/util/List;

    move-result-object v0

    .line 2878
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeToken(I)Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2970
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2971
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cardano$TokenBundle;->access$5100(Lwallet/core/jni/proto/Cardano$TokenBundle;I)V

    return-object p0
.end method

.method public setToken(ILwallet/core/jni/proto/Cardano$TokenAmount$Builder;)Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 2908
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2909
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    .line 2910
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lwallet/core/jni/proto/Cardano$TokenAmount;

    .line 2909
    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TokenBundle;->access$4600(Lwallet/core/jni/proto/Cardano$TokenBundle;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method

.method public setToken(ILwallet/core/jni/proto/Cardano$TokenAmount;)Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 2899
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2900
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cardano$TokenBundle;->access$4600(Lwallet/core/jni/proto/Cardano$TokenBundle;ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-object p0
.end method
