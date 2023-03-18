.class final Lorg/fork/controller/MusicController$Companion$getInstance$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MusicController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/controller/MusicController$Companion;->getInstance(I)Lorg/fork/controller/MusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lorg/fork/controller/MusicController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $accountIndex:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lorg/fork/controller/MusicController$Companion$getInstance$1;->$accountIndex:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 92
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/fork/controller/MusicController$Companion$getInstance$1;->invoke(Ljava/lang/Integer;)Lorg/fork/controller/MusicController;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/Integer;)Lorg/fork/controller/MusicController;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance p1, Lorg/fork/controller/MusicController;

    iget v0, p0, Lorg/fork/controller/MusicController$Companion$getInstance$1;->$accountIndex:I

    invoke-direct {p1, v0}, Lorg/fork/controller/MusicController;-><init>(I)V

    return-object p1
.end method
