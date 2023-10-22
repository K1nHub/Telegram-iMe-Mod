.class public interface abstract Lorg/ton/adnl/network/IPAddress;
.super Ljava/lang/Object;
.source "IPAddress.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/adnl/network/IPAddress$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ton/adnl/network/IPAddress$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/adnl/network/IPAddress$Companion;->$$INSTANCE:Lorg/ton/adnl/network/IPAddress$Companion;

    sput-object v0, Lorg/ton/adnl/network/IPAddress;->Companion:Lorg/ton/adnl/network/IPAddress$Companion;

    return-void
.end method


# virtual methods
.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getPort()I
.end method
