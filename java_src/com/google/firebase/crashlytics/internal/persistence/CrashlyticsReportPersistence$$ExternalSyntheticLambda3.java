package com.google.firebase.crashlytics.internal.persistence;

import java.io.File;
import java.io.FilenameFilter;
/* loaded from: classes3.dex */
public final /* synthetic */ class CrashlyticsReportPersistence$$ExternalSyntheticLambda3 implements FilenameFilter {
    public static final /* synthetic */ CrashlyticsReportPersistence$$ExternalSyntheticLambda3 INSTANCE = new CrashlyticsReportPersistence$$ExternalSyntheticLambda3();

    private /* synthetic */ CrashlyticsReportPersistence$$ExternalSyntheticLambda3() {
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        boolean startsWith;
        startsWith = str.startsWith("event");
        return startsWith;
    }
}
