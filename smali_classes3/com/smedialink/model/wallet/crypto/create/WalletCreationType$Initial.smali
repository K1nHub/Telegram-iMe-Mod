.class public abstract Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;
.super Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;
.source "WalletCreationType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Initial"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Companion;,
        Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Create;,
        Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Import;,
        Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Restore;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Companion;


# instance fields
.field private final iconResId:I

.field private final ordinal:I

.field private final stringResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;->Companion:Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial$Companion;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    iput p1, p0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;->iconResId:I

    .line 18
    iput p2, p0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;->stringResId:I

    .line 19
    iput p3, p0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;->ordinal:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;-><init>(III)V

    return-void
.end method


# virtual methods
.method public getActionText(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;->getStringResId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIconResId()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;->iconResId:I

    return v0
.end method

.method public final getOrdinal()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;->ordinal:I

    return v0
.end method

.method public getStringResId()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/smedialink/model/wallet/crypto/create/WalletCreationType$Initial;->stringResId:I

    return v0
.end method
