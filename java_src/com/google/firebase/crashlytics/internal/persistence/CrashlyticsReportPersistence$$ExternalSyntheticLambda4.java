package com.google.firebase.crashlytics.internal.persistence;

import java.io.File;
import java.util.Comparator;
/* loaded from: classes3.dex */
public final /* synthetic */ class CrashlyticsReportPersistence$$ExternalSyntheticLambda4 implements Comparator {
    public static final /* synthetic */ CrashlyticsReportPersistence$$ExternalSyntheticLambda4 INSTANCE = new CrashlyticsReportPersistence$$ExternalSyntheticLambda4();

    private /* synthetic */ CrashlyticsReportPersistence$$ExternalSyntheticLambda4() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$static$0;
        lambda$static$0 = CrashlyticsReportPersistence.lambda$static$0((File) obj, (File) obj2);
        return lambda$static$0;
    }
}
