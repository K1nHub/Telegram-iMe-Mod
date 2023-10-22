.class public final Lorg/ton/api/tonnode/Shard;
.super Ljava/lang/Object;
.source "Shard.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/tonnode/Shard$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShard.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Shard.kt\norg/ton/api/tonnode/Shard\n+ 2 Shard.kt\norg/ton/api/tonnode/ShardKt\n*L\n1#1,59:1\n56#2:60\n*S KotlinDebug\n*F\n+ 1 Shard.kt\norg/ton/api/tonnode/Shard\n*L\n26#1:60\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/api/tonnode/Shard$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ton/api/tonnode/Shard$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ton/api/tonnode/Shard$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ton/api/tonnode/Shard;->Companion:Lorg/ton/api/tonnode/Shard$Companion;

    const-wide/high16 v0, -0x8000000000000000L

    .line 56
    invoke-static {v0, v1}, Lorg/ton/api/tonnode/Shard;->constructor-impl(J)J

    return-void
.end method

.method public static constructor-impl(J)J
    .locals 0

    return-wide p0
.end method
