.class public Ldrinkless/org/ton/TonApi$DnsEntryDataAdnlAddress;
.super Ldrinkless/org/ton/TonApi$DnsEntryData;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsEntryDataAdnlAddress"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x426745f0


# instance fields
.field public adnlAddress:Ldrinkless/org/ton/TonApi$AdnlAddress;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2208
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$DnsEntryData;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$AdnlAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adnlAddress"
        }
    .end annotation

    .line 2211
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$DnsEntryData;-><init>()V

    .line 2212
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$DnsEntryDataAdnlAddress;->adnlAddress:Ldrinkless/org/ton/TonApi$AdnlAddress;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x426745f0

    return v0
.end method
