.class public abstract Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;
.super Lcom/iMe/model/wallet/crypto/create/WalletCreationType;
.source "WalletCreationType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/create/WalletCreationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Initial"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Companion;,
        Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;,
        Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Companion;


# instance fields
.field private final buttonTextResId:I

.field private final iconResId:I

.field private final ordinal:I

.field private final titleTextResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;->Companion:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Companion;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    iput p1, p0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;->iconResId:I

    .line 18
    iput p2, p0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;->buttonTextResId:I

    .line 19
    iput p3, p0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;->titleTextResId:I

    .line 20
    iput p4, p0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;->ordinal:I

    return-void
.end method

.method public synthetic constructor <init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public getActionText(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;->getButtonTextResId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getButtonTextResId()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;->buttonTextResId:I

    return v0
.end method

.method public getIconResId()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;->iconResId:I

    return v0
.end method

.method public final getOrdinal()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;->ordinal:I

    return v0
.end method

.method public final getTitleTextResId()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;->titleTextResId:I

    return v0
.end method
