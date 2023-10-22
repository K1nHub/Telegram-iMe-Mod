.class final Lcom/iMe/fork/controller/WalletFingerprintController$Companion$getInstance$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletFingerprintController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/fork/controller/WalletFingerprintController$Companion;->getInstance(I)Lcom/iMe/fork/controller/WalletFingerprintController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lcom/iMe/fork/controller/WalletFingerprintController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $accountIndex:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/iMe/fork/controller/WalletFingerprintController$Companion$getInstance$1;->$accountIndex:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Integer;)Lcom/iMe/fork/controller/WalletFingerprintController;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance p1, Lcom/iMe/fork/controller/WalletFingerprintController;

    iget v0, p0, Lcom/iMe/fork/controller/WalletFingerprintController$Companion$getInstance$1;->$accountIndex:I

    invoke-direct {p1, v0}, Lcom/iMe/fork/controller/WalletFingerprintController;-><init>(I)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/iMe/fork/controller/WalletFingerprintController$Companion$getInstance$1;->invoke(Ljava/lang/Integer;)Lcom/iMe/fork/controller/WalletFingerprintController;

    move-result-object p1

    return-object p1
.end method
