.class final Lcom/smedialink/di/module/PresenterModuleKt$presentationPresenterModule$1$23;
.super Lkotlin/jvm/internal/Lambda;
.source "PresenterModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/di/module/PresenterModuleKt$presentationPresenterModule$1;->invoke(Lorg/koin/core/module/Module;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/koin/core/scope/Scope;",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPresenterModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PresenterModule.kt\ncom/smedialink/di/module/PresenterModuleKt$presentationPresenterModule$1$23\n+ 2 ParametersHolder.kt\norg/koin/core/parameter/ParametersHolder\n*L\n1#1,410:1\n42#2:411\n*S KotlinDebug\n*F\n+ 1 PresenterModule.kt\ncom/smedialink/di/module/PresenterModuleKt$presentationPresenterModule$1$23\n*L\n210#1:411\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/di/module/PresenterModuleKt$presentationPresenterModule$1$23;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/di/module/PresenterModuleKt$presentationPresenterModule$1$23;

    invoke-direct {v0}, Lcom/smedialink/di/module/PresenterModuleKt$presentationPresenterModule$1$23;-><init>()V

    sput-object v0, Lcom/smedialink/di/module/PresenterModuleKt$presentationPresenterModule$1$23;->INSTANCE:Lcom/smedialink/di/module/PresenterModuleKt$presentationPresenterModule$1$23;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;
    .locals 1

    const-string v0, "$this$factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "$dstr$tutorialType"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const-class p1, Lcom/smedialink/model/wallet/crypto/tutorial/TutorialType;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lorg/koin/core/parameter/ParametersHolder;->elementAt(ILkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object p1

    .line 210
    check-cast p1, Lcom/smedialink/model/wallet/crypto/tutorial/TutorialType;

    new-instance p2, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;

    invoke-direct {p2, p1}, Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;-><init>(Lcom/smedialink/model/wallet/crypto/tutorial/TutorialType;)V

    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 210
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/ParametersHolder;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/di/module/PresenterModuleKt$presentationPresenterModule$1$23;->invoke(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/ParametersHolder;)Lcom/smedialink/ui/wallet/crypto/tutorial/CreateWalletTutorialPresenter;

    move-result-object p1

    return-object p1
.end method
