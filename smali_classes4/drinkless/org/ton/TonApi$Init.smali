.class public Ldrinkless/org/ton/TonApi$Init;
.super Ldrinkless/org/ton/TonApi$Function;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Init"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x3ba3dd4a


# instance fields
.field public options:Ldrinkless/org/ton/TonApi$Options;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5165
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    return-void
.end method

.method public constructor <init>(Ldrinkless/org/ton/TonApi$Options;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .line 5168
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Function;-><init>()V

    .line 5169
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$Init;->options:Ldrinkless/org/ton/TonApi$Options;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x3ba3dd4a

    return v0
.end method
