.class Lwallet/core/jni/proto/Everscale$MessageBehavior$1;
.super Ljava/lang/Object;
.source "Everscale.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Everscale$MessageBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lwallet/core/jni/proto/Everscale$MessageBehavior;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "number"
        }
    .end annotation

    .line 90
    invoke-virtual {p0, p1}, Lwallet/core/jni/proto/Everscale$MessageBehavior$1;->findValueByNumber(I)Lwallet/core/jni/proto/Everscale$MessageBehavior;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lwallet/core/jni/proto/Everscale$MessageBehavior;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 93
    invoke-static {p1}, Lwallet/core/jni/proto/Everscale$MessageBehavior;->forNumber(I)Lwallet/core/jni/proto/Everscale$MessageBehavior;

    move-result-object p1

    return-object p1
.end method
