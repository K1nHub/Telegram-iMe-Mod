.class public final Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$ValidatorsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;",
        "Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$ValidatorsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 13979
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->access$24700()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Cosmos$1;)V
    .locals 0

    .line 13972
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14039
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14040
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->access$24900(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;Ljava/lang/String;)V

    return-object p0
.end method

.method public addAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 14070
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14071
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->access$25200(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addAllAddress(Ljava/lang/Iterable;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators$Builder;
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
            "Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators$Builder;"
        }
    .end annotation

    .line 14050
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14051
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->access$25000(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public clearAddress()Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators$Builder;
    .locals 1

    .line 14059
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14060
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->access$25100(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;)V

    return-object p0
.end method

.method public getAddress(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 14008
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->getAddress(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAddressBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 14018
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-virtual {v0, p1}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->getAddressBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAddressCount()I
    .locals 1

    .line 13999
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->getAddressCount()I

    move-result v0

    return v0
.end method

.method public getAddressList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13990
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    .line 13991
    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->getAddressList()Ljava/util/List;

    move-result-object v0

    .line 13990
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setAddress(ILjava/lang/String;)Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators$Builder;
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

    .line 14028
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 14029
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;->access$24800(Lwallet/core/jni/proto/Cosmos$Message$StakeAuthorization$Validators;ILjava/lang/String;)V

    return-object p0
.end method
