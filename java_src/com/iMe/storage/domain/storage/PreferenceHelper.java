package com.iMe.storage.domain.storage;

import com.iMe.storage.data.locale.prefs.model.RequestAppReviewMetadata;
import com.iMe.storage.data.locale.prefs.model.RequestAppUpdateMetadata;
import com.iMe.storage.domain.model.common.Environment;
/* compiled from: PreferenceHelper.kt */
/* loaded from: classes3.dex */
public interface PreferenceHelper extends BasePreferenceHelper {
    long getCatalogLanguagesLastUpdateTime();

    Long getCatalogSelectedLanguageId();

    Environment getEnvironment();

    String getKiklikoUUID();

    String getPushAllowanceToken();

    String getPushToken();

    RequestAppReviewMetadata getRequestAppReviewMetadata();

    RequestAppUpdateMetadata getRequestAppUpdateMetadata();

    boolean isPushTokenRegistered();

    void setCatalogLanguagesLastUpdateTime(long j);

    void setCatalogSelectedLanguageId(Long l);

    void setEnvironment(Environment environment);

    void setPushAllowanceToken(String str);

    void setPushToken(String str);

    void setPushTokenRegistered(boolean z);

    void setRequestAppReviewMetadata(RequestAppReviewMetadata requestAppReviewMetadata);

    void setRequestAppUpdateMetadata(RequestAppUpdateMetadata requestAppUpdateMetadata);
}
