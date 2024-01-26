.class public abstract Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;
.super Ljava/lang/Object;
.source "TutorialType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletCreated;,
        Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletIntro;
    }
.end annotation


# instance fields
.field private final lastPageButtonTextResId:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;->lastPageButtonTextResId:I

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getLastPageButtonTextResId()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;->lastPageButtonTextResId:I

    return v0
.end method
