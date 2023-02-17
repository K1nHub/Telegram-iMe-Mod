.class public Ldrinkless/org/ton/TonApi$DnsEntry;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsEntry"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x1e1b47a6


# instance fields
.field public category:[B

.field public entry:Ldrinkless/org/ton/TonApi$DnsEntryData;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2068
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLdrinkless/org/ton/TonApi$DnsEntryData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "category",
            "entry"
        }
    .end annotation

    .line 2071
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 2072
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$DnsEntry;->name:Ljava/lang/String;

    .line 2073
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$DnsEntry;->category:[B

    .line 2074
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$DnsEntry;->entry:Ldrinkless/org/ton/TonApi$DnsEntryData;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x1e1b47a6

    return v0
.end method
