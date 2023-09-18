.class public final Lwallet/core/jni/proto/NEAR$DeleteKey$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NEAR.java"

# interfaces
.implements Lwallet/core/jni/proto/NEAR$DeleteKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR$DeleteKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/NEAR$DeleteKey;",
        "Lwallet/core/jni/proto/NEAR$DeleteKey$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEAR$DeleteKeyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4083
    invoke-static {}, Lwallet/core/jni/proto/NEAR$DeleteKey;->access$6700()Lwallet/core/jni/proto/NEAR$DeleteKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/NEAR$1;)V
    .locals 0

    .line 4076
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$DeleteKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPublicKey()Lwallet/core/jni/proto/NEAR$DeleteKey$Builder;
    .locals 1

    .line 4129
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4130
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$DeleteKey;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$DeleteKey;->access$7000(Lwallet/core/jni/proto/NEAR$DeleteKey;)V

    return-object p0
.end method

.method public getPublicKey()Lwallet/core/jni/proto/NEAR$PublicKey;
    .locals 1

    .line 4099
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$DeleteKey;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$DeleteKey;->getPublicKey()Lwallet/core/jni/proto/NEAR$PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public hasPublicKey()Z
    .locals 1

    .line 4092
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$DeleteKey;

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEAR$DeleteKey;->hasPublicKey()Z

    move-result v0

    return v0
.end method

.method public mergePublicKey(Lwallet/core/jni/proto/NEAR$PublicKey;)Lwallet/core/jni/proto/NEAR$DeleteKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4122
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4123
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$DeleteKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$DeleteKey;->access$6900(Lwallet/core/jni/proto/NEAR$DeleteKey;Lwallet/core/jni/proto/NEAR$PublicKey;)V

    return-object p0
.end method

.method public setPublicKey(Lwallet/core/jni/proto/NEAR$PublicKey$Builder;)Lwallet/core/jni/proto/NEAR$DeleteKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 4114
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4115
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$DeleteKey;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$PublicKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$DeleteKey;->access$6800(Lwallet/core/jni/proto/NEAR$DeleteKey;Lwallet/core/jni/proto/NEAR$PublicKey;)V

    return-object p0
.end method

.method public setPublicKey(Lwallet/core/jni/proto/NEAR$PublicKey;)Lwallet/core/jni/proto/NEAR$DeleteKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4105
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4106
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/NEAR$DeleteKey;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/NEAR$DeleteKey;->access$6800(Lwallet/core/jni/proto/NEAR$DeleteKey;Lwallet/core/jni/proto/NEAR$PublicKey;)V

    return-object p0
.end method
