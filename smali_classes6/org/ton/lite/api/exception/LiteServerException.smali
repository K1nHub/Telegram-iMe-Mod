.class public abstract Lorg/ton/lite/api/exception/LiteServerException;
.super Ljava/lang/RuntimeException;
.source "LiteServerException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/lite/api/exception/LiteServerException$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ton/lite/api/exception/LiteServerException$Companion;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/lite/api/exception/LiteServerException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/lite/api/exception/LiteServerException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/lite/api/exception/LiteServerException;->Companion:Lorg/ton/lite/api/exception/LiteServerException$Companion;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 7
    iput-object p2, p0, Lorg/ton/lite/api/exception/LiteServerException;->message:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/ton/lite/api/exception/LiteServerException;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lorg/ton/lite/api/exception/LiteServerException;->message:Ljava/lang/String;

    return-object v0
.end method
