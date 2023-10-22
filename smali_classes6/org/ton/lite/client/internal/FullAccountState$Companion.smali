.class public final Lorg/ton/lite/client/internal/FullAccountState$Companion;
.super Ljava/lang/Object;
.source "BlockHeaderResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/lite/client/internal/FullAccountState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/lite/client/internal/FullAccountState$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/lite/client/internal/FullAccountState;",
            ">;"
        }
    .end annotation

    .line 20
    sget-object v0, Lorg/ton/lite/client/internal/FullAccountState$$serializer;->INSTANCE:Lorg/ton/lite/client/internal/FullAccountState$$serializer;

    return-object v0
.end method
