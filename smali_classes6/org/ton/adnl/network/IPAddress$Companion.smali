.class public final Lorg/ton/adnl/network/IPAddress$Companion;
.super Ljava/lang/Object;
.source "IPAddress.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/adnl/network/IPAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/adnl/network/IPAddress$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/adnl/network/IPAddress$Companion;

    invoke-direct {v0}, Lorg/ton/adnl/network/IPAddress$Companion;-><init>()V

    sput-object v0, Lorg/ton/adnl/network/IPAddress$Companion;->$$INSTANCE:Lorg/ton/adnl/network/IPAddress$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ipv4(II)Lorg/ton/adnl/network/IPAddress;
    .locals 1

    .line 20
    new-instance v0, Lorg/ton/adnl/network/IPv4Address;

    invoke-direct {v0, p1, p2}, Lorg/ton/adnl/network/IPv4Address;-><init>(II)V

    return-object v0
.end method
