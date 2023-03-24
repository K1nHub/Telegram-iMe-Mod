.class final Lwallet/core/jni/proto/Polkadot$RewardDestination$RewardDestinationVerifier;
.super Ljava/lang/Object;
.source "Polkadot.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$RewardDestination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RewardDestinationVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Lwallet/core/jni/proto/Polkadot$RewardDestination$RewardDestinationVerifier;

    invoke-direct {v0}, Lwallet/core/jni/proto/Polkadot$RewardDestination$RewardDestinationVerifier;-><init>()V

    sput-object v0, Lwallet/core/jni/proto/Polkadot$RewardDestination$RewardDestinationVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 100
    invoke-static {p1}, Lwallet/core/jni/proto/Polkadot$RewardDestination;->forNumber(I)Lwallet/core/jni/proto/Polkadot$RewardDestination;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
