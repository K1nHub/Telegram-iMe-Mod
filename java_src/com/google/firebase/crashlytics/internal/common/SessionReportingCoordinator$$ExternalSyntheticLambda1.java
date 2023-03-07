package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.util.Comparator;
/* loaded from: classes3.dex */
public final /* synthetic */ class SessionReportingCoordinator$$ExternalSyntheticLambda1 implements Comparator {
    public static final /* synthetic */ SessionReportingCoordinator$$ExternalSyntheticLambda1 INSTANCE = new SessionReportingCoordinator$$ExternalSyntheticLambda1();

    private /* synthetic */ SessionReportingCoordinator$$ExternalSyntheticLambda1() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$getSortedCustomAttributes$0;
        lambda$getSortedCustomAttributes$0 = SessionReportingCoordinator.lambda$getSortedCustomAttributes$0((CrashlyticsReport.CustomAttribute) obj, (CrashlyticsReport.CustomAttribute) obj2);
        return lambda$getSortedCustomAttributes$0;
    }
}
