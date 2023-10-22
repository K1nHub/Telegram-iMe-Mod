.class public final Lwallet/core/jni/proto/Algorand$AssetOptIn$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Algorand.java"

# interfaces
.implements Lwallet/core/jni/proto/Algorand$AssetOptInOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Algorand$AssetOptIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Algorand$AssetOptIn;",
        "Lwallet/core/jni/proto/Algorand$AssetOptIn$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Algorand$AssetOptInOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1137
    invoke-static {}, Lwallet/core/jni/proto/Algorand$AssetOptIn;->access$1600()Lwallet/core/jni/proto/Algorand$AssetOptIn;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Algorand$1;)V
    .locals 0

    .line 1130
    invoke-direct {p0}, Lwallet/core/jni/proto/Algorand$AssetOptIn$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAssetId()Lwallet/core/jni/proto/Algorand$AssetOptIn$Builder;
    .locals 1

    .line 1176
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1177
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$AssetOptIn;

    invoke-static {v0}, Lwallet/core/jni/proto/Algorand$AssetOptIn;->access$1800(Lwallet/core/jni/proto/Algorand$AssetOptIn;)V

    return-object p0
.end method

.method public getAssetId()J
    .locals 2

    .line 1151
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$AssetOptIn;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$AssetOptIn;->getAssetId()J

    move-result-wide v0

    return-wide v0
.end method

.method public setAssetId(J)Lwallet/core/jni/proto/Algorand$AssetOptIn$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1163
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 1164
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Algorand$AssetOptIn;

    invoke-static {v0, p1, p2}, Lwallet/core/jni/proto/Algorand$AssetOptIn;->access$1700(Lwallet/core/jni/proto/Algorand$AssetOptIn;J)V

    return-object p0
.end method
