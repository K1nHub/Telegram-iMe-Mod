.class public final Lwallet/core/jni/proto/EOS$Asset$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "EOS.java"

# interfaces
.implements Lwallet/core/jni/proto/EOS$AssetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/EOS$Asset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/EOS$Asset;",
        "Lwallet/core/jni/proto/EOS$Asset$Builder;",
        ">;",
        "Lwallet/core/jni/proto/EOS$AssetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 406
    invoke-static {}, Lwallet/core/jni/proto/EOS$Asset;->access$000()Lwallet/core/jni/proto/EOS$Asset;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/EOS$1;)V
    .locals 0

    .line 399
    invoke-direct {p0}, Lwallet/core/jni/proto/EOS$Asset$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAmount()Lwallet/core/jni/proto/EOS$Asset$Builder;
    .locals 1

    .line 445
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 446
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$Asset;

    invoke-static {v0}, Lwallet/core/jni/proto/EOS$Asset;->access$200(Lwallet/core/jni/proto/EOS$Asset;)V

    return-object p0
.end method

.method public clearDecimals()Lwallet/core/jni/proto/EOS$Asset$Builder;
    .locals 1

    .line 485
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 486
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$Asset;

    invoke-static {v0}, Lwallet/core/jni/proto/EOS$Asset;->access$400(Lwallet/core/jni/proto/EOS$Asset;)V

    return-object p0
.end method

.method public clearSymbol()Lwallet/core/jni/proto/EOS$Asset$Builder;
    .locals 1

    .line 539
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 540
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$Asset;

    invoke-static {v0}, Lwallet/core/jni/proto/EOS$Asset;->access$600(Lwallet/core/jni/proto/EOS$Asset;)V

    return-object p0
.end method

.method public getAmount()J
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$Asset;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$Asset;->getAmount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDecimals()I
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$Asset;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$Asset;->getDecimals()I

    move-result v0

    return v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$Asset;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$Asset;->getSymbol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSymbolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$Asset;

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$Asset;->getSymbolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(J)Lwallet/core/jni/proto/EOS$Asset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 432
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 433
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$Asset;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/EOS$Asset;->access$100(Lwallet/core/jni/proto/EOS$Asset;J)V

    return-object p0
.end method

.method public setDecimals(I)Lwallet/core/jni/proto/EOS$Asset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 472
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 473
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$Asset;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$Asset;->access$300(Lwallet/core/jni/proto/EOS$Asset;I)V

    return-object p0
.end method

.method public setSymbol(Ljava/lang/String;)Lwallet/core/jni/proto/EOS$Asset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 526
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 527
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$Asset;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$Asset;->access$500(Lwallet/core/jni/proto/EOS$Asset;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSymbolBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/EOS$Asset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 554
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 555
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/EOS$Asset;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/EOS$Asset;->access$700(Lwallet/core/jni/proto/EOS$Asset;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
