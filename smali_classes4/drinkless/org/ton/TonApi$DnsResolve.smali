.class public Ldrinkless/org/ton/TonApi$DnsResolve;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsResolve"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x6ac69536


# instance fields
.field public accountAddress:Ldrinkless/org/ton/TonApi$AccountAddress;

.field public category:[B

.field public name:Ljava/lang/String;

.field public ttl:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4455
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$AccountAddress;Ljava/lang/String;[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "accountAddress",
            "name",
            "category",
            "ttl"
        }
    .end annotation

    .line 4458
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 4459
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$DnsResolve;->accountAddress:Ldrinkless/org/ton/TonApi$AccountAddress;

    .line 4460
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$DnsResolve;->name:Ljava/lang/String;

    .line 4461
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$DnsResolve;->category:[B

    .line 4462
    iput p4, p0, Ldrinkless/org/ton/TonApi$DnsResolve;->ttl:I

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x6ac69536

    return v0
.end method
