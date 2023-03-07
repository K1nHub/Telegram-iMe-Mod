package com.google.firebase.crashlytics.internal.persistence;

import java.io.File;
import java.io.FilenameFilter;
/* loaded from: classes3.dex */
public final /* synthetic */ class CrashlyticsReportPersistence$$ExternalSyntheticLambda2 implements FilenameFilter {
    public static final /* synthetic */ CrashlyticsReportPersistence$$ExternalSyntheticLambda2 INSTANCE = new CrashlyticsReportPersistence$$ExternalSyntheticLambda2();

    private /* synthetic */ CrashlyticsReportPersistence$$ExternalSyntheticLambda2() {
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        boolean isNormalPriorityEventFile;
        isNormalPriorityEventFile = CrashlyticsReportPersistence.isNormalPriorityEventFile(file, str);
        return isNormalPriorityEventFile;
    }
}
