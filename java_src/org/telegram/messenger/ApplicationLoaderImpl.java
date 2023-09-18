package org.telegram.messenger;
/* loaded from: classes6.dex */
public class ApplicationLoaderImpl extends ApplicationLoader {
    @Override // org.telegram.messenger.ApplicationLoader
    protected String onGetApplicationId() {
        return "com.iMe.android";
    }

    @Override // org.telegram.messenger.ApplicationLoader
    protected int onGetVersionCode() {
        return 1000702;
    }

    @Override // org.telegram.messenger.ApplicationLoader
    protected String onGetVersionName() {
        return "10.0.7";
    }
}
