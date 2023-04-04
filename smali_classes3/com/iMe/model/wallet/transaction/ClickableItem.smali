.class public interface abstract Lcom/iMe/model/wallet/transaction/ClickableItem;
.super Ljava/lang/Object;
.source "ClickableItem.kt"


# virtual methods
.method public abstract getLinkedText()Ljava/lang/String;
.end method

.method public abstract getLinkedTextType()Lcom/iMe/model/wallet/transaction/LinkedTextType;
.end method

.method public abstract getMessageText(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;
.end method

.method public abstract getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;
.end method

.method public abstract getRecipientAddress()Ljava/lang/String;
.end method

.method public abstract getTokenCode()Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
.end method
