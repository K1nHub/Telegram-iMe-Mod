package com.google.firebase.crashlytics.internal.model.serialization;

import android.util.JsonReader;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform;
/* loaded from: classes3.dex */
public final /* synthetic */ class CrashlyticsReportJsonTransform$$ExternalSyntheticLambda4 implements CrashlyticsReportJsonTransform.ObjectParser {
    public static final /* synthetic */ CrashlyticsReportJsonTransform$$ExternalSyntheticLambda4 INSTANCE = new CrashlyticsReportJsonTransform$$ExternalSyntheticLambda4();

    private /* synthetic */ CrashlyticsReportJsonTransform$$ExternalSyntheticLambda4() {
    }

    @Override // com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform.ObjectParser
    public final Object parse(JsonReader jsonReader) {
        CrashlyticsReport.Session.Event.Application.Execution.BinaryImage parseEventBinaryImage;
        parseEventBinaryImage = CrashlyticsReportJsonTransform.parseEventBinaryImage(jsonReader);
        return parseEventBinaryImage;
    }
}
