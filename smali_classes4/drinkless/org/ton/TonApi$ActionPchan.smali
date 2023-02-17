.class public Ldrinkless/org/ton/TonApi$ActionPchan;
.super Ldrinkless/org/ton/TonApi$Action;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionPchan"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x58d23a1f


# instance fields
.field public action:Ldrinkless/org/ton/TonApi$PchanAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 443
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Action;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$PchanAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 446
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Action;-><init>()V

    .line 447
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$ActionPchan;->action:Ldrinkless/org/ton/TonApi$PchanAction;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x58d23a1f

    return v0
.end method
