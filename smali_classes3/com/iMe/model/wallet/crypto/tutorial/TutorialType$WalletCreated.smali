.class public final Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletCreated;
.super Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;
.source "TutorialType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WalletCreated"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletCreated;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletCreated;

    invoke-direct {v0}, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletCreated;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletCreated;->INSTANCE:Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletCreated;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 11
    sget v0, Lorg/telegram/messenger/R$string;->common_done:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
