.class public Ldrinkless/org/ton/TonApi$OptionsValidateConfig;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionsValidateConfig"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x14ae45c7


# instance fields
.field public config:Ldrinkless/org/ton/TonApi$Config;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5444
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$Config;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 5447
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 5448
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$OptionsValidateConfig;->config:Ldrinkless/org/ton/TonApi$Config;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x14ae45c7

    return v0
.end method
