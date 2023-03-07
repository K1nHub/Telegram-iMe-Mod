.class public final Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$Companion;
.super Ljava/lang/Object;
.source "BuyCryptoProductFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuyCryptoProductFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuyCryptoProductFragment.kt\ncom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$Companion\n+ 2 BaseFragmentExt.kt\ncom/smedialink/utils/extentions/common/BaseFragmentExtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,182:1\n25#2:183\n1#3:184\n*S KotlinDebug\n*F\n+ 1 BuyCryptoProductFragment.kt\ncom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$Companion\n*L\n178#1:183\n178#1:184\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment;
    .locals 3

    const-string v0, "tokenCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/Pair;

    .line 179
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "token_code"

    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 178
    const-class p1, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/Pair;

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    const-string v0, "T::class.java.newInstanc\u2026nts = bundleOf(*params) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductFragment;

    return-object v2
.end method
