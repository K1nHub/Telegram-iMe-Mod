.class public Ldrinkless/org/ton/TonApi$PchanInitialAccountState;
.super Ldrinkless/org/ton/TonApi$InitialAccountState;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PchanInitialAccountState"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x4dc1e2bc


# instance fields
.field public config:Ldrinkless/org/ton/TonApi$PchanConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1062
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$InitialAccountState;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$PchanConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 1065
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$InitialAccountState;-><init>()V

    .line 1066
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$PchanInitialAccountState;->config:Ldrinkless/org/ton/TonApi$PchanConfig;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x4dc1e2bc

    return v0
.end method
