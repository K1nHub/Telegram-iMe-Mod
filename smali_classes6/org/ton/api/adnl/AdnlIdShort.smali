.class public interface abstract Lorg/ton/api/adnl/AdnlIdShort;
.super Ljava/lang/Object;
.source "AdnlIdShort.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/api/adnl/AdnlIdShort$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/ton/api/adnl/AdnlIdShort;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ton/api/adnl/AdnlIdShort$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/api/adnl/AdnlIdShort$Companion;->$$INSTANCE:Lorg/ton/api/adnl/AdnlIdShort$Companion;

    sput-object v0, Lorg/ton/api/adnl/AdnlIdShort;->Companion:Lorg/ton/api/adnl/AdnlIdShort$Companion;

    return-void
.end method


# virtual methods
.method public abstract getId()[B
.end method
