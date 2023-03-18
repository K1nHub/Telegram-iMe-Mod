.class final Lorg/koin/core/scope/Scope$resolveValue$4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Scope.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/koin/core/scope/Scope;->resolveValue(Lorg/koin/core/qualifier/Qualifier;Lkotlin/reflect/KClass;Lorg/koin/core/instance/InstanceContext;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/koin/core/scope/Scope$resolveValue$4$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/koin/core/scope/Scope$resolveValue$4$1;

    invoke-direct {v0}, Lorg/koin/core/scope/Scope$resolveValue$4$1;-><init>()V

    sput-object v0, Lorg/koin/core/scope/Scope$resolveValue$4$1;->INSTANCE:Lorg/koin/core/scope/Scope$resolveValue$4$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 274
    invoke-virtual {p0}, Lorg/koin/core/scope/Scope$resolveValue$4$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "| clear parameter stack"

    return-object v0
.end method
