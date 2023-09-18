.class public Ldrinkless/org/ton/TonApi$DnsEntryDataText;
.super Ldrinkless/org/ton/TonApi$DnsEntryData;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsEntryDataText"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x2f3c5eee


# instance fields
.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2127
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$DnsEntryData;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 2130
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$DnsEntryData;-><init>()V

    .line 2131
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$DnsEntryDataText;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x2f3c5eee

    return v0
.end method
