.class public final Lwallet/core/jni/proto/Harmony$SigningOutput$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Harmony.java"

# interfaces
.implements Lwallet/core/jni/proto/Harmony$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony$SigningOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Harmony$SigningOutput;",
        "Lwallet/core/jni/proto/Harmony$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Harmony$SigningOutputOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 944
    invoke-static {}, Lwallet/core/jni/proto/Harmony$SigningOutput;->access$1300()Lwallet/core/jni/proto/Harmony$SigningOutput;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Harmony$1;)V
    .locals 0

    .line 937
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$SigningOutput$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEncoded()Lwallet/core/jni/proto/Harmony$SigningOutput$Builder;
    .locals 1

    .line 983
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 984
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$SigningOutput;->access$1500(Lwallet/core/jni/proto/Harmony$SigningOutput;)V

    return-object p0
.end method

.method public clearR()Lwallet/core/jni/proto/Harmony$SigningOutput$Builder;
    .locals 1

    .line 1051
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1052
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$SigningOutput;->access$1900(Lwallet/core/jni/proto/Harmony$SigningOutput;)V

    return-object p0
.end method

.method public clearS()Lwallet/core/jni/proto/Harmony$SigningOutput$Builder;
    .locals 1

    .line 1079
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1080
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$SigningOutput;->access$2100(Lwallet/core/jni/proto/Harmony$SigningOutput;)V

    return-object p0
.end method

.method public clearV()Lwallet/core/jni/proto/Harmony$SigningOutput$Builder;
    .locals 1

    .line 1023
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1024
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$SigningOutput;->access$1700(Lwallet/core/jni/proto/Harmony$SigningOutput;)V

    return-object p0
.end method

.method public getEncoded()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$SigningOutput;->getEncoded()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getR()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1034
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$SigningOutput;->getR()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getS()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1062
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$SigningOutput;->getS()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getV()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$SigningOutput;->getV()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setEncoded(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 970
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 971
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$SigningOutput;->access$1400(Lwallet/core/jni/proto/Harmony$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setR(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1042
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1043
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$SigningOutput;->access$1800(Lwallet/core/jni/proto/Harmony$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setS(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1070
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1071
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$SigningOutput;->access$2000(Lwallet/core/jni/proto/Harmony$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setV(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1010
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1011
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$SigningOutput;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$SigningOutput;->access$1600(Lwallet/core/jni/proto/Harmony$SigningOutput;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
