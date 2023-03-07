package com.google.firebase.crashlytics.internal.common;

import java.io.File;
import java.io.FilenameFilter;
/* loaded from: classes3.dex */
public final /* synthetic */ class CrashlyticsController$$ExternalSyntheticLambda0 implements FilenameFilter {
    public static final /* synthetic */ CrashlyticsController$$ExternalSyntheticLambda0 INSTANCE = new CrashlyticsController$$ExternalSyntheticLambda0();

    private /* synthetic */ CrashlyticsController$$ExternalSyntheticLambda0() {
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        boolean startsWith;
        startsWith = str.startsWith(".ae");
        return startsWith;
    }
}
