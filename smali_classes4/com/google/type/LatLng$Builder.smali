.class public final Lcom/google/type/LatLng$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LatLng.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/type/LatLng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/type/LatLng;",
        "Lcom/google/type/LatLng$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 199
    invoke-static {}, Lcom/google/type/LatLng;->access$000()Lcom/google/type/LatLng;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/type/LatLng$1;)V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcom/google/type/LatLng$Builder;-><init>()V

    return-void
.end method
