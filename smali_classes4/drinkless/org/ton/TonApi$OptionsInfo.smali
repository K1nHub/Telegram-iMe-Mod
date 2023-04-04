.class public Ldrinkless/org/ton/TonApi$OptionsInfo;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionsInfo"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x3dae380


# instance fields
.field public configInfo:Ldrinkless/org/ton/TonApi$OptionsConfigInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2711
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$OptionsConfigInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configInfo"
        }
    .end annotation

    .line 2714
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 2715
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$OptionsInfo;->configInfo:Ldrinkless/org/ton/TonApi$OptionsConfigInfo;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x3dae380

    return v0
.end method
