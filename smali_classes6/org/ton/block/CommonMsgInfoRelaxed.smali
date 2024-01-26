.class public interface abstract Lorg/ton/block/CommonMsgInfoRelaxed;
.super Ljava/lang/Object;
.source "CommonMsgInfoRelaxed.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/CommonMsgInfoRelaxed$Companion;,
        Lorg/ton/block/CommonMsgInfoRelaxed$ExtOutMsgInfoRelaxed;,
        Lorg/ton/block/CommonMsgInfoRelaxed$IntMsgInfoRelaxed;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation

.annotation runtime Lkotlinx/serialization/json/JsonClassDiscriminator;
    discriminator = "@type"
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/CommonMsgInfoRelaxed$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/block/CommonMsgInfoRelaxed$Companion;->$$INSTANCE:Lorg/ton/block/CommonMsgInfoRelaxed$Companion;

    sput-object v0, Lorg/ton/block/CommonMsgInfoRelaxed;->Companion:Lorg/ton/block/CommonMsgInfoRelaxed$Companion;

    return-void
.end method
