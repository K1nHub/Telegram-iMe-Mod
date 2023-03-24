.class public final Lwallet/core/jni/proto/Harmony$Decimal$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Harmony.java"

# interfaces
.implements Lwallet/core/jni/proto/Harmony$DecimalOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony$Decimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lwallet/core/jni/proto/Harmony$Decimal;",
        "Lwallet/core/jni/proto/Harmony$Decimal$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Harmony$DecimalOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4181
    invoke-static {}, Lwallet/core/jni/proto/Harmony$Decimal;->access$8300()Lwallet/core/jni/proto/Harmony$Decimal;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lwallet/core/jni/proto/Harmony$1;)V
    .locals 0

    .line 4174
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$Decimal$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPrecision()Lwallet/core/jni/proto/Harmony$Decimal$Builder;
    .locals 1

    .line 4260
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4261
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$Decimal;->access$8700(Lwallet/core/jni/proto/Harmony$Decimal;)V

    return-object p0
.end method

.method public clearValue()Lwallet/core/jni/proto/Harmony$Decimal$Builder;
    .locals 1

    .line 4220
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4221
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$Decimal;->access$8500(Lwallet/core/jni/proto/Harmony$Decimal;)V

    return-object p0
.end method

.method public getPrecision()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4235
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$Decimal;->getPrecision()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4195
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$Decimal;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setPrecision(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$Decimal$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4247
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4248
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$Decimal;->access$8600(Lwallet/core/jni/proto/Harmony$Decimal;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValue(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$Decimal$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4207
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4208
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lwallet/core/jni/proto/Harmony$Decimal;

    invoke-static {v0, p1}, Lwallet/core/jni/proto/Harmony$Decimal;->access$8400(Lwallet/core/jni/proto/Harmony$Decimal;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
