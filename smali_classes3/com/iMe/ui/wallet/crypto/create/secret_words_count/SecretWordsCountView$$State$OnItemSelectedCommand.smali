.class public Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView$$State$OnItemSelectedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "SecretWordsCountView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnItemSelectedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView;",
        ">;"
    }
.end annotation


# instance fields
.field public final wordsCount:I


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView$$State;I)V
    .locals 1

    .line 149
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "onItemSelected"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 151
    iput p2, p0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView$$State$OnItemSelectedCommand;->wordsCount:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView;)V
    .locals 1

    .line 156
    iget v0, p0, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView$$State$OnItemSelectedCommand;->wordsCount:I

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView;->onItemSelected(I)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 145
    check-cast p1, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView$$State$OnItemSelectedCommand;->apply(Lcom/iMe/ui/wallet/crypto/create/secret_words_count/SecretWordsCountView;)V

    return-void
.end method