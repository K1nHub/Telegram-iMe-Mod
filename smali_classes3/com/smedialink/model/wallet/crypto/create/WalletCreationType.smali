.class public abstract Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;
.super Ljava/lang/Object;
.source "WalletCreationType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Activate;,
        Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;
    }
.end annotation


# instance fields
.field private final iconResId:I

.field private final stringResId:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;->iconResId:I

    .line 11
    iput p2, p0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;->stringResId:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;-><init>(II)V

    return-void
.end method


# virtual methods
.method public abstract getActionText(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
.end method

.method public getIconResId()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;->iconResId:I

    return v0
.end method

.method public getStringResId()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;->stringResId:I

    return v0
.end method
