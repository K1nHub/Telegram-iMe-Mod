.class public final Lwallet/core/jni/proto/NEAR$AddKey$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NEAR.java"

# interfaces
.implements Lwallet/core/jni/proto/NEAR$AddKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR$AddKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NEAR$AddKey;",
        "Lwallet/core/jni/proto/NEAR$AddKey$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEAR$AddKeyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3740
    invoke-static {}, Lwallet/core/jni/proto/NEAR$AddKey;->access$5900()Lwallet/core/jni/proto/NEAR$AddKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NEAR$1;)V
    .locals 0

    .line 3733
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$AddKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAccessKey()Lwallet/core/jni/proto/NEAR$AddKey$Builder;
    .locals 1

    .line 3833
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3834
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$AddKey;->access$6500(Lwallet/core/jni/proto/NEAR$AddKey;)V

    return-object p0
.end method

.method public clearPublicKey()Lwallet/core/jni/proto/NEAR$AddKey$Builder;
    .locals 1

    .line 3786
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3787
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$AddKey;->access$6200(Lwallet/core/jni/proto/NEAR$AddKey;)V

    return-object p0
.end method

.method public getAccessKey()Lwallet/core/jni/proto/NEAR$AccessKey;
    .locals 1

    .line 3803
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$AddKey;->getAccessKey()Lwallet/core/jni/proto/NEAR$AccessKey;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lwallet/core/jni/proto/NEAR$PublicKey;
    .locals 1

    .line 3756
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$AddKey;->getPublicKey()Lwallet/core/jni/proto/NEAR$PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public hasAccessKey()Z
    .locals 1

    .line 3796
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$AddKey;->hasAccessKey()Z

    move-result v0

    return v0
.end method

.method public hasPublicKey()Z
    .locals 1

    .line 3749
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$AddKey;->hasPublicKey()Z

    move-result v0

    return v0
.end method

.method public mergeAccessKey(Lwallet/core/jni/proto/NEAR$AccessKey;)Lwallet/core/jni/proto/NEAR$AddKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3826
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3827
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$AddKey;->access$6400(Lwallet/core/jni/proto/NEAR$AddKey;Lwallet/core/jni/proto/NEAR$AccessKey;)V

    return-object p0
.end method

.method public mergePublicKey(Lwallet/core/jni/proto/NEAR$PublicKey;)Lwallet/core/jni/proto/NEAR$AddKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3779
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3780
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$AddKey;->access$6100(Lwallet/core/jni/proto/NEAR$AddKey;Lwallet/core/jni/proto/NEAR$PublicKey;)V

    return-object p0
.end method

.method public setAccessKey(Lwallet/core/jni/proto/NEAR$AccessKey$Builder;)Lwallet/core/jni/proto/NEAR$AddKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3818
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3819
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$AccessKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$AddKey;->access$6300(Lwallet/core/jni/proto/NEAR$AddKey;Lwallet/core/jni/proto/NEAR$AccessKey;)V

    return-object p0
.end method

.method public setAccessKey(Lwallet/core/jni/proto/NEAR$AccessKey;)Lwallet/core/jni/proto/NEAR$AddKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3809
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3810
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$AddKey;->access$6300(Lwallet/core/jni/proto/NEAR$AddKey;Lwallet/core/jni/proto/NEAR$AccessKey;)V

    return-object p0
.end method

.method public setPublicKey(Lwallet/core/jni/proto/NEAR$PublicKey$Builder;)Lwallet/core/jni/proto/NEAR$AddKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3771
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3772
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$PublicKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$AddKey;->access$6000(Lwallet/core/jni/proto/NEAR$AddKey;Lwallet/core/jni/proto/NEAR$PublicKey;)V

    return-object p0
.end method

.method public setPublicKey(Lwallet/core/jni/proto/NEAR$PublicKey;)Lwallet/core/jni/proto/NEAR$AddKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3762
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3763
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$AddKey;->access$6000(Lwallet/core/jni/proto/NEAR$AddKey;Lwallet/core/jni/proto/NEAR$PublicKey;)V

    return-object p0
.end method
