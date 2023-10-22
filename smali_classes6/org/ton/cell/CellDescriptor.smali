.class public interface abstract Lorg/ton/cell/CellDescriptor;
.super Ljava/lang/Object;
.source "CellDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/cell/CellDescriptor$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ton/cell/CellDescriptor$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/cell/CellDescriptor$Companion;->$$INSTANCE:Lorg/ton/cell/CellDescriptor$Companion;

    sput-object v0, Lorg/ton/cell/CellDescriptor;->Companion:Lorg/ton/cell/CellDescriptor$Companion;

    return-void
.end method


# virtual methods
.method public abstract component1()B
.end method

.method public abstract component2()B
.end method

.method public abstract getCellType()Lorg/ton/cell/CellType;
.end method

.method public abstract getDataLength()I
.end method

.method public abstract getHasHashes()Z
.end method

.method public abstract getHashCount()I
.end method

.method public abstract getLevelMask-Kat384U()I
.end method

.method public abstract getReferenceCount()I
.end method

.method public abstract isAligned()Z
.end method

.method public abstract isExotic()Z
.end method
