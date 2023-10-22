.class public final Lorg/ton/api/liteserver/LiteServerDesc$Companion;
.super Ljava/lang/Object;
.source "LiteServerDesc.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/api/liteserver/LiteServerDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/ton/api/liteserver/LiteServerDesc$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lorg/ton/api/liteserver/LiteServerDesc;",
            ">;"
        }
    .end annotation

    .line 7
    sget-object v0, Lorg/ton/api/liteserver/LiteServerDesc$$serializer;->INSTANCE:Lorg/ton/api/liteserver/LiteServerDesc$$serializer;

    return-object v0
.end method
