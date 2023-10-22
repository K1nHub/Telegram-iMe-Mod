.class final Lorg/ton/bitstring/BitString$Companion$of$bits$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BitString.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/bitstring/BitString$Companion;->of(Ljava/lang/String;)Lorg/ton/bitstring/BitString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Character;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/bitstring/BitString$Companion$of$bits$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/bitstring/BitString$Companion$of$bits$1;

    invoke-direct {v0}, Lorg/ton/bitstring/BitString$Companion$of$bits$1;-><init>()V

    sput-object v0, Lorg/ton/bitstring/BitString$Companion$of$bits$1;->INSTANCE:Lorg/ton/bitstring/BitString$Companion$of$bits$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(C)Ljava/lang/Boolean;
    .locals 1

    const/16 v0, 0x5f

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 134
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 134
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lorg/ton/bitstring/BitString$Companion$of$bits$1;->invoke(C)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
