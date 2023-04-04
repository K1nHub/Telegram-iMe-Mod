.class public Ldrinkless/org/ton/TonApi$RwalletActionInit;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RwalletActionInit"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x2533bd6b


# instance fields
.field public config:Ldrinkless/org/ton/TonApi$RwalletConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3280
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$RwalletConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 3283
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 3284
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$RwalletActionInit;->config:Ldrinkless/org/ton/TonApi$RwalletConfig;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x2533bd6b

    return v0
.end method
