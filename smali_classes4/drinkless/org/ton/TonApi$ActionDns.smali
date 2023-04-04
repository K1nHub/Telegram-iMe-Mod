.class public Ldrinkless/org/ton/TonApi$ActionDns;
.super Ldrinkless/org/ton/TonApi$Action;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionDns"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x47273021


# instance fields
.field public actions:[Ldrinkless/org/ton/TonApi$DnsAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 416
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Action;-><init>()V

    return-void
.end method

.method public constructor <init>([Ldrinkless/org/ton/TonApi$DnsAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actions"
        }
    .end annotation

    .line 419
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Action;-><init>()V

    .line 420
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$ActionDns;->actions:[Ldrinkless/org/ton/TonApi$DnsAction;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x47273021

    return v0
.end method
