.class public final Lwallet/core/jni/proto/NEAR$FunctionCall$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NEAR.java"

# interfaces
.implements Lwallet/core/jni/proto/NEAR$FunctionCallOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR$FunctionCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NEAR$FunctionCall;",
        "Lwallet/core/jni/proto/NEAR$FunctionCall$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEAR$FunctionCallOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2523
    invoke-static {}, Lwallet/core/jni/proto/NEAR$FunctionCall;->access$3700()Lwallet/core/jni/proto/NEAR$FunctionCall;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NEAR$1;)V
    .locals 0

    .line 2516
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$FunctionCall$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearArgs()Lwallet/core/jni/proto/NEAR$FunctionCall$Builder;
    .locals 1

    .line 2631
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2632
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCall;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$FunctionCall;->access$4200(Lwallet/core/jni/proto/NEAR$FunctionCall;)V

    return-object p0
.end method

.method public clearDeposit()Lwallet/core/jni/proto/NEAR$FunctionCall$Builder;
    .locals 1

    .line 2711
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2712
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCall;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$FunctionCall;->access$4600(Lwallet/core/jni/proto/NEAR$FunctionCall;)V

    return-object p0
.end method

.method public clearGas()Lwallet/core/jni/proto/NEAR$FunctionCall$Builder;
    .locals 1

    .line 2671
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2672
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCall;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$FunctionCall;->access$4400(Lwallet/core/jni/proto/NEAR$FunctionCall;)V

    return-object p0
.end method

.method public clearMethodName()Lwallet/core/jni/proto/NEAR$FunctionCall$Builder;
    .locals 1

    .line 2576
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2577
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCall;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$FunctionCall;->access$3900(Lwallet/core/jni/proto/NEAR$FunctionCall;)V

    return-object p0
.end method

.method public getArgs()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2606
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCall;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$FunctionCall;->getArgs()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDeposit()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2686
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCall;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$FunctionCall;->getDeposit()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGas()J
    .locals 2

    .line 2646
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCall;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$FunctionCall;->getGas()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 2537
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCall;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$FunctionCall;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethodNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2550
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCall;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$FunctionCall;->getMethodNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setArgs(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$FunctionCall$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2618
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2619
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCall;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$FunctionCall;->access$4100(Lwallet/core/jni/proto/NEAR$FunctionCall;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDeposit(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$FunctionCall$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2698
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2699
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCall;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$FunctionCall;->access$4500(Lwallet/core/jni/proto/NEAR$FunctionCall;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setGas(J)Lwallet/core/jni/proto/NEAR$FunctionCall$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2658
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2659
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCall;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/NEAR$FunctionCall;->access$4300(Lwallet/core/jni/proto/NEAR$FunctionCall;J)V

    return-object p0
.end method

.method public setMethodName(Ljava/lang/String;)Lwallet/core/jni/proto/NEAR$FunctionCall$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2563
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2564
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCall;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$FunctionCall;->access$3800(Lwallet/core/jni/proto/NEAR$FunctionCall;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMethodNameBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$FunctionCall$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2591
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2592
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCall;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$FunctionCall;->access$4000(Lwallet/core/jni/proto/NEAR$FunctionCall;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
