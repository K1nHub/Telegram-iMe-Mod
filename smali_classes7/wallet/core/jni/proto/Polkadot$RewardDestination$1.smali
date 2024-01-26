.class Lwallet/core/jni/proto/Polkadot$RewardDestination$1;
.super Ljava/lang/Object;
.source "Polkadot.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$RewardDestination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lwallet/core/jni/proto/Polkadot$RewardDestination;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 83
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

    .line 83
    invoke-virtual {p0, p1}, Lwallet/core/jni/proto/Polkadot$RewardDestination$1;->findValueByNumber(I)Lwallet/core/jni/proto/Polkadot$RewardDestination;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lwallet/core/jni/proto/Polkadot$RewardDestination;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 86
    invoke-static {p1}, Lwallet/core/jni/proto/Polkadot$RewardDestination;->forNumber(I)Lwallet/core/jni/proto/Polkadot$RewardDestination;

    move-result-object p1

    return-object p1
.end method
