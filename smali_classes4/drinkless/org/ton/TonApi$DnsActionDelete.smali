.class public Ldrinkless/org/ton/TonApi$DnsActionDelete;
.super Ldrinkless/org/ton/TonApi$DnsAction;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsActionDelete"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x44077f51


# instance fields
.field public category:[B

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2008
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$DnsAction;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "category"
        }
    .end annotation

    .line 2011
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$DnsAction;-><init>()V

    .line 2012
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$DnsActionDelete;->name:Ljava/lang/String;

    .line 2013
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$DnsActionDelete;->category:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x44077f51

    return v0
.end method
