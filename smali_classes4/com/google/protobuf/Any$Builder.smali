.class public final Lcom/google/protobuf/Any$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Any.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Any;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/protobuf/Any;",
        "Lcom/google/protobuf/Any$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 463
    invoke-static {}, Lcom/google/protobuf/Any;->access$000()Lcom/google/protobuf/Any;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Any$1;)V
    .locals 0

    .line 456
    invoke-direct {p0}, Lcom/google/protobuf/Any$Builder;-><init>()V

    return-void
.end method
