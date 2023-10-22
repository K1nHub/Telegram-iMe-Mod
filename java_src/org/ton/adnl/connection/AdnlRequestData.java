package org.ton.adnl.connection;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;
/* compiled from: AdnlRequestData.kt */
/* loaded from: classes6.dex */
public final class AdnlRequestData {
    private final byte[] body;
    private final Job executionContext;

    public AdnlRequestData(byte[] body, Job executionContext) {
        Intrinsics.checkNotNullParameter(body, "body");
        Intrinsics.checkNotNullParameter(executionContext, "executionContext");
        this.body = body;
        this.executionContext = executionContext;
    }

    public final byte[] getBody() {
        return this.body;
    }
}
