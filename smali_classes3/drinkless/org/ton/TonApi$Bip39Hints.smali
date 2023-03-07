.class public Ldrinkless/org/ton/TonApi$Bip39Hints;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bip39Hints"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = 0x3c559c00


# instance fields
.field public words:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 530
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "words"
        }
    .end annotation

    .line 533
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 534
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$Bip39Hints;->words:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, 0x3c559c00

    return v0
.end method
