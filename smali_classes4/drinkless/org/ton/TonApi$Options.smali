.class public Ldrinkless/org/ton/TonApi$Options;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x72b3d607


# instance fields
.field public config:Ldrinkless/org/ton/TonApi$Config;

.field public keystoreType:Ldrinkless/org/ton/TonApi$KeyStoreType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1433
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$Config;Ldrinkless/org/ton/TonApi$KeyStoreType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "keystoreType"
        }
    .end annotation

    .line 1436
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 1437
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$Options;->config:Ldrinkless/org/ton/TonApi$Config;

    .line 1438
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$Options;->keystoreType:Ldrinkless/org/ton/TonApi$KeyStoreType;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x72b3d607

    return v0
.end method
