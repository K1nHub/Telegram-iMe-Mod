.class public Ldrinkless/org/ton/TonApi$Config;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x5bb1fdc8


# instance fields
.field public blockchainName:Ljava/lang/String;

.field public config:Ljava/lang/String;

.field public ignoreCache:Z

.field public useCallbacksForNetwork:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 563
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "config",
            "blockchainName",
            "useCallbacksForNetwork",
            "ignoreCache"
        }
    .end annotation

    .line 566
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 567
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$Config;->config:Ljava/lang/String;

    .line 568
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$Config;->blockchainName:Ljava/lang/String;

    .line 569
    iput-boolean p3, p0, Ldrinkless/org/ton/TonApi$Config;->useCallbacksForNetwork:Z

    .line 570
    iput-boolean p4, p0, Ldrinkless/org/ton/TonApi$Config;->ignoreCache:Z

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x5bb1fdc8

    return v0
.end method
