.class public Ldrinkless/org/ton/TonApi$DnsResolved;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsResolved"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x7c970596


# instance fields
.field public entries:[Ldrinkless/org/ton/TonApi$DnsEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2238
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ldrinkless/org/ton/TonApi$DnsEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .line 2241
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 2242
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$DnsResolved;->entries:[Ldrinkless/org/ton/TonApi$DnsEntry;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x7c970596

    return v0
.end method
