.class public Ldrinkless/org/ton/TonApi$DnsEntryDataNextResolver;
.super Ldrinkless/org/ton/TonApi$DnsEntryData;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsEntryDataNextResolver"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x13b13dc8


# instance fields
.field public resolver:Ldrinkless/org/ton/TonApi$AccountAddress;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2154
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
            "resolver"
        }
    .end annotation

    .line 2157
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$DnsEntryData;-><init>()V

    .line 2158
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$DnsEntryDataNextResolver;->resolver:Ldrinkless/org/ton/TonApi$AccountAddress;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x13b13dc8

    return v0
.end method
