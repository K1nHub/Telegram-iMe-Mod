.class public final Lorg/ton/crypto/mac/Mac$DefaultImpls;
.super Ljava/lang/Object;
.source "Mac.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/crypto/mac/Mac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static build(Lorg/ton/crypto/mac/Mac;[B)[B
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 18
    invoke-interface {p0, p1, v0}, Lorg/ton/crypto/mac/Mac;->build([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static plusAssign(Lorg/ton/crypto/mac/Mac;[B)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-interface {p0, p1}, Lorg/ton/crypto/mac/Mac;->update([B)V

    return-void
.end method

.method public static update(Lorg/ton/crypto/mac/Mac;[B)V
    .locals 2

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/ton/crypto/mac/Mac;->update([BII)V

    return-void
.end method
