.class public final Lorg/ton/contract/wallet/WalletContract$Companion;
.super Ljava/lang/Object;
.source "WalletContract.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/contract/wallet/WalletContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lorg/ton/contract/wallet/WalletContract$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ton/contract/wallet/WalletContract$Companion;

    invoke-direct {v0}, Lorg/ton/contract/wallet/WalletContract$Companion;-><init>()V

    sput-object v0, Lorg/ton/contract/wallet/WalletContract$Companion;->$$INSTANCE:Lorg/ton/contract/wallet/WalletContract$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
