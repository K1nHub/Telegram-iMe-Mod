package com.microsoft.appcenter.ingestion.models.json;

import com.microsoft.appcenter.ingestion.models.Log;
import com.microsoft.appcenter.ingestion.models.StartServiceLog;
/* loaded from: classes4.dex */
public class StartServiceLogFactory extends AbstractLogFactory {
    @Override // com.microsoft.appcenter.ingestion.models.json.LogFactory
    public Log create() {
        return new StartServiceLog();
    }
}
