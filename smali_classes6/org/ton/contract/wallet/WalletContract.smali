.class public interface abstract Lorg/ton/contract/wallet/WalletContract;
.super Ljava/lang/Object;
.source "WalletContract.kt"

# interfaces
.implements Lorg/ton/contract/SmartContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/contract/wallet/WalletContract$Companion;,
        Lorg/ton/contract/wallet/WalletContract$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/ton/contract/SmartContract<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_WALLET_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/contract/wallet/WalletContract$Companion;->$$INSTANCE:Lorg/ton/contract/wallet/WalletContract$Companion;

    const v0, 0x29a9a317

    .line 9
    sput v0, Lorg/ton/contract/wallet/WalletContract;->DEFAULT_WALLET_ID:I

    return-void
.end method
