.class final Lwallet/core/jni/proto/Everscale$MessageBehavior$MessageBehaviorVerifier;
.super Ljava/lang/Object;
.source "Everscale.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Everscale$MessageBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageBehaviorVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lwallet/core/jni/proto/Everscale$MessageBehavior$MessageBehaviorVerifier;

    invoke-direct {v0}, Lwallet/core/jni/proto/Everscale$MessageBehavior$MessageBehaviorVerifier;-><init>()V

    sput-object v0, Lwallet/core/jni/proto/Everscale$MessageBehavior$MessageBehaviorVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 102
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

    .line 107
    invoke-static {p1}, Lwallet/core/jni/proto/Everscale$MessageBehavior;->forNumber(I)Lwallet/core/jni/proto/Everscale$MessageBehavior;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
