.class public final Lwallet/core/jni/proto/Nervos$Script$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$ScriptOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos$Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Nervos$Script;",
        "Lwallet/core/jni/proto/Nervos$Script$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$ScriptOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3529
    invoke-static {}, Lwallet/core/jni/proto/Nervos$Script;->access$5500()Lwallet/core/jni/proto/Nervos$Script;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Nervos$1;)V
    .locals 0

    .line 3522
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$Script$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearArgs()Lwallet/core/jni/proto/Nervos$Script$Builder;
    .locals 1

    .line 3677
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3678
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$Script;->access$6200(Lwallet/core/jni/proto/Nervos$Script;)V

    return-object p0
.end method

.method public clearCodeHash()Lwallet/core/jni/proto/Nervos$Script$Builder;
    .locals 1

    .line 3568
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3569
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$Script;->access$5700(Lwallet/core/jni/proto/Nervos$Script;)V

    return-object p0
.end method

.method public clearHashType()Lwallet/core/jni/proto/Nervos$Script$Builder;
    .locals 1

    .line 3622
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3623
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v0}, Lwallet/core/jni/proto/Nervos$Script;->access$5900(Lwallet/core/jni/proto/Nervos$Script;)V

    return-object p0
.end method

.method public getArgs()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3652
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Script;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Script;->getArgs()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCodeHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3543
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Script;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Script;->getCodeHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHashType()Ljava/lang/String;
    .locals 1

    .line 3583
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Script;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Script;->getHashType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHashTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3596
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Script;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$Script;->getHashTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setArgs(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$Script$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3664
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3665
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$Script;->access$6100(Lwallet/core/jni/proto/Nervos$Script;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCodeHash(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$Script$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3555
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3556
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$Script;->access$5600(Lwallet/core/jni/proto/Nervos$Script;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setHashType(Ljava/lang/String;)Lwallet/core/jni/proto/Nervos$Script$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3609
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3610
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$Script;->access$5800(Lwallet/core/jni/proto/Nervos$Script;Ljava/lang/String;)V

    return-object p0
.end method

.method public setHashTypeBytes(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$Script$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3637
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3638
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Nervos$Script;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Nervos$Script;->access$6000(Lwallet/core/jni/proto/Nervos$Script;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
