package org.telegram.messenger;
/* loaded from: classes4.dex */
public class ApplicationLoaderImpl extends ApplicationLoader {
    @Override // org.telegram.messenger.ApplicationLoader
    protected String onGetApplicationId() {
        return "com.iMe.android";
    }

    @Override // org.telegram.messenger.ApplicationLoader
    protected int onGetVersionCode() {
        return 941009;
    }

    @Override // org.telegram.messenger.ApplicationLoader
    protected String onGetVersionName() {
        return "9.4.10";
    }
}
