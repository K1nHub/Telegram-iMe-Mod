.class public interface abstract Lcom/iMe/storage/domain/gateway/TelegramGateway;
.super Ljava/lang/Object;
.source "TelegramGateway.kt"


# virtual methods
.method public abstract cutInBlocks(Ljava/lang/CharSequence;I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppVersion()Ljava/lang/String;
.end method

.method public abstract getCurrentLocaleInformation()Lcom/iMe/storage/domain/model/telegram/TelegramLocaleInformation;
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getFilesFixedDirectory()Ljava/io/File;
.end method

.method public abstract getSelectedAccountId()J
.end method

.method public abstract getSelectedAccountIndex()I
.end method

.method public abstract getWalletRefreshToken()Ljava/lang/String;
.end method

.method public abstract hasUser(J)Z
.end method

.method public abstract setAppVersionRequiredUpdate(Ljava/lang/String;)V
.end method

.method public abstract setWalletRefreshToken(Ljava/lang/String;)V
.end method
