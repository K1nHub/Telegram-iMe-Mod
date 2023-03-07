package com.google.firebase.crashlytics.internal.send;

import com.google.android.datatransport.Transformer;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* loaded from: classes3.dex */
public final /* synthetic */ class DataTransportCrashlyticsReportSender$$ExternalSyntheticLambda0 implements Transformer {
    public static final /* synthetic */ DataTransportCrashlyticsReportSender$$ExternalSyntheticLambda0 INSTANCE = new DataTransportCrashlyticsReportSender$$ExternalSyntheticLambda0();

    private /* synthetic */ DataTransportCrashlyticsReportSender$$ExternalSyntheticLambda0() {
    }

    @Override // com.google.android.datatransport.Transformer
    public final Object apply(Object obj) {
        byte[] lambda$static$0;
        lambda$static$0 = DataTransportCrashlyticsReportSender.lambda$static$0((CrashlyticsReport) obj);
        return lambda$static$0;
    }
}
