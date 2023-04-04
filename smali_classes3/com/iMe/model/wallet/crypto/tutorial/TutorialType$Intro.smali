.class public final Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Intro;
.super Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;
.source "TutorialType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intro"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Intro;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Intro;

    invoke-direct {v0}, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Intro;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Intro;->INSTANCE:Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$Intro;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
