package org.telegram.messenger;
/* loaded from: classes4.dex */
public class ApplicationLoaderImpl extends ApplicationLoader {
    @Override // org.telegram.messenger.ApplicationLoader
    protected String onGetApplicationId() {
        return "com.iMe.android";
    }

    @Override // org.telegram.messenger.ApplicationLoader
    protected int onGetVersionCode() {
        return 960609;
    }

    @Override // org.telegram.messenger.ApplicationLoader
    protected String onGetVersionName() {
        return "9.6.6";
    }
}
