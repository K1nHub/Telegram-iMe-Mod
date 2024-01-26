.class final Lwallet/core/jni/proto/TheOpenNetwork$SendMode$SendModeVerifier;
.super Ljava/lang/Object;
.source "TheOpenNetwork.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/TheOpenNetwork$SendMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SendModeVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 218
    new-instance v0, Lwallet/core/jni/proto/TheOpenNetwork$SendMode$SendModeVerifier;

    invoke-direct {v0}, Lwallet/core/jni/proto/TheOpenNetwork$SendMode$SendModeVerifier;-><init>()V

    sput-object v0, Lwallet/core/jni/proto/TheOpenNetwork$SendMode$SendModeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 216
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

    .line 221
    invoke-static {p1}, Lwallet/core/jni/proto/TheOpenNetwork$SendMode;->forNumber(I)Lwallet/core/jni/proto/TheOpenNetwork$SendMode;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
