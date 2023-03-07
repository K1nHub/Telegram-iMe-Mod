package com.google.firebase.crashlytics.internal.model.serialization;

import android.util.JsonReader;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform;
/* loaded from: classes3.dex */
public final /* synthetic */ class CrashlyticsReportJsonTransform$$ExternalSyntheticLambda0 implements CrashlyticsReportJsonTransform.ObjectParser {
    public static final /* synthetic */ CrashlyticsReportJsonTransform$$ExternalSyntheticLambda0 INSTANCE = new CrashlyticsReportJsonTransform$$ExternalSyntheticLambda0();

    private /* synthetic */ CrashlyticsReportJsonTransform$$ExternalSyntheticLambda0() {
    }

    @Override // com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform.ObjectParser
    public final Object parse(JsonReader jsonReader) {
        CrashlyticsReport.Session.Event parseEvent;
        parseEvent = CrashlyticsReportJsonTransform.parseEvent(jsonReader);
        return parseEvent;
    }
}
