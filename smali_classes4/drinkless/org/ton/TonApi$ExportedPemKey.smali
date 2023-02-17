.class public Ldrinkless/org/ton/TonApi$ExportedPemKey;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExportedPemKey"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x54f700bd


# instance fields
.field public pem:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 748
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pem"
        }
    .end annotation

    .line 751
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 752
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$ExportedPemKey;->pem:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x54f700bd

    return v0
.end method
