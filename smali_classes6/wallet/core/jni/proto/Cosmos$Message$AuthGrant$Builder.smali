.class public final Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$AuthGrantOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;",
        "Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$AuthGrantOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 15324
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->access$26900()Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 15317
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearExpiration()Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;
    .locals 1

    .line 15509
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15510
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->access$28100(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;)V

    return-object p0
.end method

.method public clearGrantStake()Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;
    .locals 1

    .line 15481
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15482
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->access$27900(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;)V

    return-object p0
.end method

.method public clearGrantType()Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;
    .locals 1

    .line 15334
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15335
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->access$27000(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;)V

    return-object p0
.end method

.method public clearGrantee()Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;
    .locals 1

    .line 15422
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15423
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->access$27500(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;)V

    return-object p0
.end method

.method public clearGranter()Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;
    .locals 1

    .line 15373
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15374
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->access$27200(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;)V

    return-object p0
.end method

.method public getExpiration()J
    .locals 2

    .line 15492
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGrantStake()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;
    .locals 1

    .line 15450
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->getGrantStake()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    move-result-object v0

    return-object v0
.end method

.method public getGrantTypeCase()Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;
    .locals 1

    .line 15330
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->getGrantTypeCase()Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$GrantTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getGrantee()Ljava/lang/String;
    .locals 1

    .line 15395
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->getGrantee()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGranteeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 15404
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->getGranteeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGranter()Ljava/lang/String;
    .locals 1

    .line 15346
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->getGranter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGranterBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 15355
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->getGranterBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasGrantStake()Z
    .locals 1

    .line 15443
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->hasGrantStake()Z

    move-result v0

    return v0
.end method

.method public mergeGrantStake(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15473
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15474
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->access$27800(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;)V

    return-object p0
.end method

.method public setExpiration(J)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15500
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15501
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->access$28000(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;J)V

    return-object p0
.end method

.method public setGrantStake(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Builder;)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 15465
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15466
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->access$27700(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;)V

    return-object p0
.end method

.method public setGrantStake(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15456
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15457
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->access$27700(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization;)V

    return-object p0
.end method

.method public setGrantee(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15413
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15414
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->access$27400(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;Ljava/lang/String;)V

    return-object p0
.end method

.method public setGranteeBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15433
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15434
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->access$27600(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setGranter(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15364
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15365
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->access$27100(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;Ljava/lang/String;)V

    return-object p0
.end method

.method public setGranterBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$AuthGrant$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15384
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 15385
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;->access$27300(Lwallet/core/jni/proto/Cosmos$Message$AuthGrant;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
