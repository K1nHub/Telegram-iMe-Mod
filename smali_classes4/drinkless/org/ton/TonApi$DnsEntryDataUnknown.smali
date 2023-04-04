.class public Ldrinkless/org/ton/TonApi$DnsEntryDataUnknown;
.super Ldrinkless/org/ton/TonApi$DnsEntryData;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsEntryDataUnknown"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x4ca52c80


# instance fields
.field public bytes:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2100
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$DnsEntryData;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 2103
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$DnsEntryData;-><init>()V

    .line 2104
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$DnsEntryDataUnknown;->bytes:[B

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x4ca52c80

    return v0
.end method
