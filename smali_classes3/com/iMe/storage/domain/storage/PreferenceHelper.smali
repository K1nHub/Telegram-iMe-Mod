.class public interface abstract Lcom/iMe/storage/domain/storage/PreferenceHelper;
.super Ljava/lang/Object;
.source "PreferenceHelper.kt"

# interfaces
.implements Lcom/iMe/storage/domain/storage/BasePreferenceHelper;


# virtual methods
.method public abstract getCatalogLanguagesLastUpdateTime()J
.end method

.method public abstract getCatalogSelectedLanguageId()Ljava/lang/Long;
.end method

.method public abstract getEnvironment()Lcom/iMe/storage/domain/model/common/Environment;
.end method

.method public abstract getKiklikoUUID()Ljava/lang/String;
.end method

.method public abstract getPushAllowanceToken()Ljava/lang/String;
.end method

.method public abstract getPushToken()Ljava/lang/String;
.end method

.method public abstract getRequestAppReviewMetadata()Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;
.end method

.method public abstract getRequestAppUpdateMetadata()Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;
.end method

.method public abstract isPushTokenRegistered()Z
.end method

.method public abstract setCatalogLanguagesLastUpdateTime(J)V
.end method

.method public abstract setCatalogSelectedLanguageId(Ljava/lang/Long;)V
.end method

.method public abstract setEnvironment(Lcom/iMe/storage/domain/model/common/Environment;)V
.end method

.method public abstract setPushAllowanceToken(Ljava/lang/String;)V
.end method

.method public abstract setPushToken(Ljava/lang/String;)V
.end method

.method public abstract setPushTokenRegistered(Z)V
.end method

.method public abstract setRequestAppReviewMetadata(Lcom/iMe/storage/data/locale/prefs/model/RequestAppReviewMetadata;)V
.end method

.method public abstract setRequestAppUpdateMetadata(Lcom/iMe/storage/data/locale/prefs/model/RequestAppUpdateMetadata;)V
.end method
