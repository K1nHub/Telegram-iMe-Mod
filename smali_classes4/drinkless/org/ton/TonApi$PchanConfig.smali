.class public Ldrinkless/org/ton/TonApi$PchanConfig;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PchanConfig"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x7b790bca


# instance fields
.field public aliceAddress:Ldrinkless/org/ton/TonApi$AccountAddress;

.field public alicePublicKey:Ljava/lang/String;

.field public bobAddress:Ldrinkless/org/ton/TonApi$AccountAddress;

.field public bobPublicKey:Ljava/lang/String;

.field public channelId:J

.field public closeTimeout:I

.field public initTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2836
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ldrinkless/org/ton/TonApi$AccountAddress;Ljava/lang/String;Ldrinkless/org/ton/TonApi$AccountAddress;IIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "alicePublicKey",
            "aliceAddress",
            "bobPublicKey",
            "bobAddress",
            "initTimeout",
            "closeTimeout",
            "channelId"
        }
    .end annotation

    .line 2839
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 2840
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$PchanConfig;->alicePublicKey:Ljava/lang/String;

    .line 2841
    iput-object p2, p0, Ldrinkless/org/ton/TonApi$PchanConfig;->aliceAddress:Ldrinkless/org/ton/TonApi$AccountAddress;

    .line 2842
    iput-object p3, p0, Ldrinkless/org/ton/TonApi$PchanConfig;->bobPublicKey:Ljava/lang/String;

    .line 2843
    iput-object p4, p0, Ldrinkless/org/ton/TonApi$PchanConfig;->bobAddress:Ldrinkless/org/ton/TonApi$AccountAddress;

    .line 2844
    iput p5, p0, Ldrinkless/org/ton/TonApi$PchanConfig;->initTimeout:I

    .line 2845
    iput p6, p0, Ldrinkless/org/ton/TonApi$PchanConfig;->closeTimeout:I

    .line 2846
    iput-wide p7, p0, Ldrinkless/org/ton/TonApi$PchanConfig;->channelId:J

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x7b790bca

    return v0
.end method
