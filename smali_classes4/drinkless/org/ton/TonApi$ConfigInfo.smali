.class public Ldrinkless/org/ton/TonApi$ConfigInfo;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigInfo"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x290055ff


# instance fields
.field public config:Ldrinkless/org/ton/TonApi$TvmCell;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 596
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$TvmCell;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 599
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 600
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$ConfigInfo;->config:Ldrinkless/org/ton/TonApi$TvmCell;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x290055ff

    return v0
.end method
