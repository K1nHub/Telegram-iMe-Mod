package com.google.firebase.messaging;

import com.google.android.datatransport.Transformer;
import com.google.firebase.messaging.reporting.MessagingClientEventExtension;
/* compiled from: com.google.firebase:firebase-messaging@@23.0.0 */
/* loaded from: classes3.dex */
public final /* synthetic */ class MessagingAnalytics$$ExternalSyntheticLambda0 implements Transformer {
    public static final /* synthetic */ MessagingAnalytics$$ExternalSyntheticLambda0 INSTANCE = new MessagingAnalytics$$ExternalSyntheticLambda0();

    private /* synthetic */ MessagingAnalytics$$ExternalSyntheticLambda0() {
    }

    @Override // com.google.android.datatransport.Transformer
    public final Object apply(Object obj) {
        return ((MessagingClientEventExtension) obj).toByteArray();
    }
}
