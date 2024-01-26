.class public final Lorg/ton/crypto/DecryptorAes;
.super Ljava/lang/Object;
.source "AesCtr.kt"

# interfaces
.implements Lorg/ton/crypto/Decryptor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAesCtr.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AesCtr.kt\norg/ton/crypto/DecryptorAes\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,62:1\n1#2:63\n*E\n"
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const-string v0, "secret"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
