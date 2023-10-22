.class public final Lwallet/core/jni/proto/Algorand$Transfer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Algorand.java"

# interfaces
.implements Lwallet/core/jni/proto/Algorand$TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Algorand$Transfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Algorand$Transfer;",
        "Lwallet/core/jni/proto/Algorand$Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Algorand$TransferOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 260
    invoke-static {}, Lwallet/core/jni/proto/Algorand$Transfer;->access$000()Lwallet/core/jni/proto/Algorand$Transfer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Algorand$1;)V
    .locals 0

    .line 253
    invoke-direct {p0}, Lwallet/core/jni/proto/Algorand$Transfer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/Algorand$Transfer$Builder;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 369
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Algorand$Transfer;->access$500(Lwallet/core/jni/proto/Algorand$Transfer;)V

    return-object p0
.end method

.method public clearToAddress()Lwallet/core/jni/proto/Algorand$Transfer$Builder;
    .locals 1

    .line 313
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 314
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Algorand$Transfer;->access$200(Lwallet/core/jni/proto/Algorand$Transfer;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$Transfer;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$Transfer;->getToAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$Transfer;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$Transfer;->getToAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/Algorand$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 356
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$Transfer;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Algorand$Transfer;->access$400(Lwallet/core/jni/proto/Algorand$Transfer;J)V

    return-object p0
.end method

.method public setToAddress(Ljava/lang/String;)Lwallet/core/jni/proto/Algorand$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 301
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Algorand$Transfer;->access$100(Lwallet/core/jni/proto/Algorand$Transfer;Ljava/lang/String;)V

    return-object p0
.end method

.method public setToAddressBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Algorand$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 328
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 329
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$Transfer;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Algorand$Transfer;->access$300(Lwallet/core/jni/proto/Algorand$Transfer;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
