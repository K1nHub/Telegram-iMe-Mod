.class public Ldrinkless/org/ton/TonApi$DnsActionSet;
.super Ldrinkless/org/ton/TonApi$DnsAction;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsActionSet"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x51f44e3d


# instance fields
.field public entry:Ldrinkless/org/ton/TonApi$DnsEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2036
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$DnsAction;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$DnsEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .line 2039
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$DnsAction;-><init>()V

    .line 2040
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$DnsActionSet;->entry:Ldrinkless/org/ton/TonApi$DnsEntry;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x51f44e3d

    return v0
.end method
