.class public Ldrinkless/org/ton/TonApi$ExportedKey;
.super Ldrinkless/org/ton/TonApi$Object;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExportedKey"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x5661c629


# instance fields
.field public wordList:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 718
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
            "wordList"
        }
    .end annotation

    .line 721
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$Object;-><init>()V

    .line 722
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$ExportedKey;->wordList:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x5661c629

    return v0
.end method