.class final Lorg/ton/bitstring/BitString$toBinary$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BitString.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ton/bitstring/BitString$DefaultImpls;->toBinary(Lorg/ton/bitstring/BitString;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ton/bitstring/BitString$toBinary$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/bitstring/BitString$toBinary$1;

    invoke-direct {v0}, Lorg/ton/bitstring/BitString$toBinary$1;-><init>()V

    sput-object v0, Lorg/ton/bitstring/BitString$toBinary$1;->INSTANCE:Lorg/ton/bitstring/BitString$toBinary$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Z)Ljava/lang/CharSequence;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 74
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/ton/bitstring/BitString$toBinary$1;->invoke(Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
