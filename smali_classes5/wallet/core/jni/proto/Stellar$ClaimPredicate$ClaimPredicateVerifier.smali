.class final Lwallet/core/jni/proto/Stellar$ClaimPredicate$ClaimPredicateVerifier;
.super Ljava/lang/Object;
.source "Stellar.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar$ClaimPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClaimPredicateVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lwallet/core/jni/proto/Stellar$ClaimPredicate$ClaimPredicateVerifier;

    invoke-direct {v0}, Lwallet/core/jni/proto/Stellar$ClaimPredicate$ClaimPredicateVerifier;-><init>()V

    sput-object v0, Lwallet/core/jni/proto/Stellar$ClaimPredicate$ClaimPredicateVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
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

    .line 84
    invoke-static {p1}, Lwallet/core/jni/proto/Stellar$ClaimPredicate;->forNumber(I)Lwallet/core/jni/proto/Stellar$ClaimPredicate;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
