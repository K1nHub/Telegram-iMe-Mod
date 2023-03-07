package com.google.firebase.crashlytics.internal.persistence;

import java.io.File;
import java.util.Comparator;
/* loaded from: classes3.dex */
public final /* synthetic */ class CrashlyticsReportPersistence$$ExternalSyntheticLambda5 implements Comparator {
    public static final /* synthetic */ CrashlyticsReportPersistence$$ExternalSyntheticLambda5 INSTANCE = new CrashlyticsReportPersistence$$ExternalSyntheticLambda5();

    private /* synthetic */ CrashlyticsReportPersistence$$ExternalSyntheticLambda5() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int oldestEventFileFirst;
        oldestEventFileFirst = CrashlyticsReportPersistence.oldestEventFileFirst((File) obj, (File) obj2);
        return oldestEventFileFirst;
    }
}
