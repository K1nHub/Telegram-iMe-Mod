package com.google.firebase.crashlytics.internal.model.serialization;

import android.util.JsonReader;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform;
/* loaded from: classes3.dex */
public final /* synthetic */ class CrashlyticsReportJsonTransform$$ExternalSyntheticLambda3 implements CrashlyticsReportJsonTransform.ObjectParser {
    public static final /* synthetic */ CrashlyticsReportJsonTransform$$ExternalSyntheticLambda3 INSTANCE = new CrashlyticsReportJsonTransform$$ExternalSyntheticLambda3();

    private /* synthetic */ CrashlyticsReportJsonTransform$$ExternalSyntheticLambda3() {
    }

    @Override // com.google.firebase.crashlytics.internal.model.serialization.CrashlyticsReportJsonTransform.ObjectParser
    public final Object parse(JsonReader jsonReader) {
        CrashlyticsReport.FilesPayload.File parseFile;
        parseFile = CrashlyticsReportJsonTransform.parseFile(jsonReader);
        return parseFile;
    }
}
