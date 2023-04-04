.class public Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView$$State$SetupAdapterCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "SecretWordsCountView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupAdapterCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView;",
        ">;"
    }
.end annotation


# instance fields
.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 116
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "setupAdapter"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 118
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView$$State$SetupAdapterCommand;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView$$State$SetupAdapterCommand;->items:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView;->setupAdapter(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 112
    check-cast p1, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView$$State$SetupAdapterCommand;->apply(Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView;)V

    return-void
.end method
