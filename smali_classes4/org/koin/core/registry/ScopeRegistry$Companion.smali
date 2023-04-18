.class public final Lorg/koin/core/registry/ScopeRegistry$Companion;
.super Ljava/lang/Object;
.source "ScopeRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/koin/core/registry/ScopeRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/koin/core/registry/ScopeRegistry$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRootScopeQualifier()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 109
    invoke-static {}, Lorg/koin/core/registry/ScopeRegistry;->access$getRootScopeQualifier$cp()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    return-object v0
.end method
