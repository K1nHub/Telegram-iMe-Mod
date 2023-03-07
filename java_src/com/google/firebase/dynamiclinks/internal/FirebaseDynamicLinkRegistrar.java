package com.google.firebase.dynamiclinks.internal;

import androidx.annotation.Keep;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.FirebaseApp;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.dynamiclinks.FirebaseDynamicLinks;
import java.util.Arrays;
import java.util.List;
@Keep
@KeepForSdk
/* loaded from: classes3.dex */
public final class FirebaseDynamicLinkRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    public List<Component<?>> getComponents() {
        return Arrays.asList(Component.builder(FirebaseDynamicLinks.class).add(Dependency.required(FirebaseApp.class)).add(Dependency.optionalProvider(AnalyticsConnector.class)).factory(FirebaseDynamicLinkRegistrar$$ExternalSyntheticLambda0.INSTANCE).build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ FirebaseDynamicLinks lambda$getComponents$0(ComponentContainer componentContainer) {
        return new FirebaseDynamicLinksImpl((FirebaseApp) componentContainer.get(FirebaseApp.class), componentContainer.getProvider(AnalyticsConnector.class));
    }
}
