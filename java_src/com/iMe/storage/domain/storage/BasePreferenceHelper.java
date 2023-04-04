package com.iMe.storage.domain.storage;
/* compiled from: BasePreferenceHelper.kt */
/* loaded from: classes3.dex */
public interface BasePreferenceHelper {
    void clear();

    boolean isKeyContains(String str);

    void remove(String str);

    void setTempOneActionUserId(String str);

    String withPrefix(String str, String str2);

    String withTgAccount(String str, String str2);

    /* compiled from: BasePreferenceHelper.kt */
    /* renamed from: com.iMe.storage.domain.storage.BasePreferenceHelper$-CC  reason: invalid class name */
    /* loaded from: classes3.dex */
    public final /* synthetic */ class CC {
        public static /* synthetic */ String withTgAccount$default(BasePreferenceHelper basePreferenceHelper, String str, String str2, int i, Object obj) {
            if (obj == null) {
                if ((i & 2) != 0) {
                    str2 = "";
                }
                return basePreferenceHelper.withTgAccount(str, str2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: withTgAccount");
        }
    }
}
