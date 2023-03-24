.class public final Lwallet/core/jni/proto/Polkadot$Staking$Nominate$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Polkadot.java"

# interfaces
.implements Lwallet/core/jni/proto/Polkadot$Staking$NominateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$Staking$Nominate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Polkadot$Staking$Nominate;",
        "Lwallet/core/jni/proto/Polkadot$Staking$Nominate$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Polkadot$Staking$NominateOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3960
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->access$5600()Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Polkadot$1;)V
    .locals 0

    .line 3953
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllNominators(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Polkadot$Staking$Nominate$Builder;
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
            "Ljava/lang/String;",
            ">;)",
            "Lwallet/core/jni/proto/Polkadot$Staking$Nominate$Builder;"
        }
    .end annotation

    .line 4059
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4060
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->access$5900(Lwallet/core/jni/proto/Polkadot$Staking$Nominate;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addNominators(Ljava/lang/String;)Lwallet/core/jni/proto/Polkadot$Staking$Nominate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4044
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4045
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->access$5800(Lwallet/core/jni/proto/Polkadot$Staking$Nominate;Ljava/lang/String;)V

    return-object p0
.end method

.method public addNominatorsBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$Staking$Nominate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4087
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4088
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->access$6100(Lwallet/core/jni/proto/Polkadot$Staking$Nominate;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearNominators()Lwallet/core/jni/proto/Polkadot$Staking$Nominate$Builder;
    .locals 1

    .line 4072
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4073
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->access$6000(Lwallet/core/jni/proto/Polkadot$Staking$Nominate;)V

    return-object p0
.end method

.method public getNominators(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4001
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->getNominators(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNominatorsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4015
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->getNominatorsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getNominatorsCount()I
    .locals 1

    .line 3988
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->getNominatorsCount()I

    move-result v0

    return v0
.end method

.method public getNominatorsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3975
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    .line 3976
    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->getNominatorsList()Ljava/util/List;

    move-result-object v0

    .line 3975
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setNominators(ILjava/lang/String;)Lwallet/core/jni/proto/Polkadot$Staking$Nominate$Builder;
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

    .line 4029
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4030
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Polkadot$Staking$Nominate;->access$5700(Lwallet/core/jni/proto/Polkadot$Staking$Nominate;ILjava/lang/String;)V

    return-object p0
.end method
