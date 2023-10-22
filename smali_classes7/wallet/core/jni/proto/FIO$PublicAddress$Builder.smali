.class public final Lwallet/core/jni/proto/FIO$PublicAddress$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FIO.java"

# interfaces
.implements Lwallet/core/jni/proto/FIO$PublicAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO$PublicAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/FIO$PublicAddress;",
        "Lwallet/core/jni/proto/FIO$PublicAddress$Builder;",
        ">;",
        "Lwallet/core/jni/proto/FIO$PublicAddressOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 300
    invoke-static {}, Lwallet/core/jni/proto/FIO$PublicAddress;->access$000()Lwallet/core/jni/proto/FIO$PublicAddress;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/FIO$1;)V
    .locals 0

    .line 293
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$PublicAddress$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAddress()Lwallet/core/jni/proto/FIO$PublicAddress$Builder;
    .locals 1

    .line 422
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 423
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$PublicAddress;->access$500(Lwallet/core/jni/proto/FIO$PublicAddress;)V

    return-object p0
.end method

.method public clearCoinSymbol()Lwallet/core/jni/proto/FIO$PublicAddress$Builder;
    .locals 1

    .line 353
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 354
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-static {v0}, Lwallet/core/jni/proto/FIO$PublicAddress;->access$200(Lwallet/core/jni/proto/FIO$PublicAddress;)V

    return-object p0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$PublicAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$PublicAddress;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCoinSymbol()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$PublicAddress;->getCoinSymbol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCoinSymbolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$PublicAddress;->getCoinSymbolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)Lwallet/core/jni/proto/FIO$PublicAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 410
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$PublicAddress;->access$400(Lwallet/core/jni/proto/FIO$PublicAddress;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$PublicAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 437
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 438
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$PublicAddress;->access$600(Lwallet/core/jni/proto/FIO$PublicAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCoinSymbol(Ljava/lang/String;)Lwallet/core/jni/proto/FIO$PublicAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 341
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$PublicAddress;->access$100(Lwallet/core/jni/proto/FIO$PublicAddress;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCoinSymbolBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$PublicAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 368
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 369
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/FIO$PublicAddress;->access$300(Lwallet/core/jni/proto/FIO$PublicAddress;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
