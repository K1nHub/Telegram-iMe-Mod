.class public Ldrinkless/org/ton/TonApi$KeyStoreTypeDirectory;
.super Ldrinkless/org/ton/TonApi$KeyStoreType;
.source "TonApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrinkless/org/ton/TonApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyStoreTypeDirectory"
.end annotation


# static fields
.field public static final CONSTRUCTOR:I = -0x1696edd6


# instance fields
.field public directory:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1178
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$KeyStoreType;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "directory"
        }
    .end annotation

    .line 1181
    invoke-direct {p0}, Ldrinkless/org/ton/TonApi$KeyStoreType;-><init>()V

    .line 1182
    iput-object p1, p0, Ldrinkless/org/ton/TonApi$KeyStoreTypeDirectory;->directory:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConstructor()I
    .locals 1

    const v0, -0x1696edd6

    return v0
.end method
