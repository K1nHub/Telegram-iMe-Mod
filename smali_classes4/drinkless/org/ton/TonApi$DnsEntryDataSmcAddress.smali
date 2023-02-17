.class public Ldrinkless/org/ton/TonApi$DnsEntryDataSmcAddress;
.super Ldrinkless/org/ton/TonApi$DnsEntryData;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsEntryDataSmcAddress"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x68e685be


# instance fields
.field public smcAddress:Ldrinkless/org/ton/TonApi$AccountAddress;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2181
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$DnsEntryData;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$AccountAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "smcAddress"
        }
    .end annotation

    .line 2184
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$DnsEntryData;-><init>()V

    .line 2185
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$DnsEntryDataSmcAddress;->smcAddress:Ldrinkless/org/ton/TonApi$AccountAddress;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x68e685be

    return v0
.end method
