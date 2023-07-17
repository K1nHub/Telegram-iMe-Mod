.class public abstract Lcom/iMe/storage/domain/model/crypto/cancel/CancelArgs;
.super Ljava/lang/Object;
.source "CancelArgs.kt"

# interfaces
.implements Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/cancel/CancelArgs$Ethereum;
    }
.end annotation


# instance fields
.field private final networkId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/cancel/CancelArgs;->networkId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/storage/domain/model/crypto/cancel/CancelArgs;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getNetworkId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/cancel/CancelArgs;->networkId:Ljava/lang/String;

    return-object v0
.end method
