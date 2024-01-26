.class public interface abstract Lorg/ton/block/MsgAddress;
.super Ljava/lang/Object;
.source "MsgAddress.kt"

# interfaces
.implements Lorg/ton/tlb/TlbObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/block/MsgAddress$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lorg/ton/block/MsgAddress$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/block/MsgAddress$Companion;->$$INSTANCE:Lorg/ton/block/MsgAddress$Companion;

    sput-object v0, Lorg/ton/block/MsgAddress;->Companion:Lorg/ton/block/MsgAddress$Companion;

    return-void
.end method
