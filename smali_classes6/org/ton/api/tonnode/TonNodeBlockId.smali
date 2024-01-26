.class public interface abstract Lorg/ton/api/tonnode/TonNodeBlockId;
.super Ljava/lang/Object;
.source "TonNodeBlockId.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/tonnode/TonNodeBlockId$Companion;,
        Lorg/ton/api/tonnode/TonNodeBlockId$DefaultImpls;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ton/api/tonnode/TonNodeBlockId$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/api/tonnode/TonNodeBlockId$Companion;->$$INSTANCE:Lorg/ton/api/tonnode/TonNodeBlockId$Companion;

    sput-object v0, Lorg/ton/api/tonnode/TonNodeBlockId;->Companion:Lorg/ton/api/tonnode/TonNodeBlockId$Companion;

    return-void
.end method


# virtual methods
.method public abstract getSeqno()I
.end method

.method public abstract getShard()J
.end method

.method public abstract getWorkchain()I
.end method

.method public abstract isMasterchain()Z
.end method

.method public abstract isValid()Z
.end method
