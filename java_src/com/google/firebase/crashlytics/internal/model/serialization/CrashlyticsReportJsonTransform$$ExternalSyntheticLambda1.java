package com.google.firebase.crashlytics.internal.model.serialization;

import android.util.JsonReader;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform;
/* loaded from: classes3.dex */
public final /* synthetic */ class CrashlyticsReportJsonTransform$$ExternalSyntheticLambda1 implements CrashlyticsReportJsonTransform.ObjectParser {
    public static final /* synthetic */ CrashlyticsReportJsonTransform$$ExternalSyntheticLambda1 INSTANCE = new CrashlyticsReportJsonTransform$$ExternalSyntheticLambda1();

    private /* synthetic */ CrashlyticsReportJsonTransform$$ExternalSyntheticLambda1() {
    }

    @Override // com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform.ObjectParser
    public final Object parse(JsonReader jsonReader) {
        CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame parseEventFrame;
        parseEventFrame = CrashlyticsReportJsonTransform.parseEventFrame(jsonReader);
        return parseEventFrame;
    }
}
