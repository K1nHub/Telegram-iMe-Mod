.class public interface abstract Lorg/ton/contract/SmartContract;
.super Ljava/lang/Object;
.source "SmartContract.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ton/contract/SmartContract$Companion;,
        Lorg/ton/contract/SmartContract$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final Companion:Lorg/ton/contract/SmartContract$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/ton/contract/SmartContract$Companion;->$$INSTANCE:Lorg/ton/contract/SmartContract$Companion;

    sput-object v0, Lorg/ton/contract/SmartContract;->Companion:Lorg/ton/contract/SmartContract$Companion;

    return-void
.end method


# virtual methods
.method public abstract getAddress()Lorg/ton/block/MsgAddressInt;
.end method

.method public abstract getState()Lorg/ton/block/AccountState;
.end method

.method public abstract sendExternalMessage(Lorg/ton/lite/api/LiteApi;Lorg/ton/cell/Cell;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ton/lite/api/LiteApi;",
            "Lorg/ton/cell/Cell;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
