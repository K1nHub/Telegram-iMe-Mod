.class public Ldrinkless/org/ton/TonApi$PchanAccountState;
.super Ldrinkless/org/ton/TonApi$AccountState;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PchanAccountState"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x60226f78


# instance fields
.field public config:Ldrinkless/org/ton/TonApi$PchanConfig;

.field public description:Ljava/lang/String;

.field public state:Ldrinkless/org/ton/TonApi$PchanState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 306
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$AccountState;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$PchanConfig;Ldrinkless/org/ton/TonApi$PchanState;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "config",
            "state",
            "description"
        }
    .end annotation

    .line 309
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$AccountState;-><init>()V

    .line 310
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$PchanAccountState;->config:Ldrinkless/org/ton/TonApi$PchanConfig;

    .line 311
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$PchanAccountState;->state:Ldrinkless/org/ton/TonApi$PchanState;

    .line 312
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$PchanAccountState;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x60226f78

    return v0
.end method
