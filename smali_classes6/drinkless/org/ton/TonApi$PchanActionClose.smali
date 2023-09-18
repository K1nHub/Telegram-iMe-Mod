.class public Ldrinkless/org/ton/TonApi$PchanActionClose;
.super Ldrinkless/org/ton/TonApi$PchanAction;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PchanActionClose"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x639c4b16


# instance fields
.field public extraA:J

.field public extraB:J

.field public promise:Ldrinkless/org/ton/TonApi$PchanPromise;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2776
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$PchanAction;-><init>()V

    return-void
.end method

.method public constructor <init>(JJLdrinkless/org/ton/TonApi$PchanPromise;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "extraA",
            "extraB",
            "promise"
        }
    .end annotation

    .line 2779
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$PchanAction;-><init>()V

    .line 2780
    iput-wide p1, p0, Ldrinkless/org/ton/TonApi$PchanActionClose;->extraA:J

    .line 2781
    iput-wide p3, p0, Ldrinkless/org/ton/TonApi$PchanActionClose;->extraB:J

    .line 2782
    iput-object p5, p0, Ldrinkless/org/ton/TonApi$PchanActionClose;->promise:Ldrinkless/org/ton/TonApi$PchanPromise;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x639c4b16

    return v0
.end method
