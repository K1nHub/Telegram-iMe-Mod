package com.google.firebase.analytics.ktx;

import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
/* compiled from: com.google.firebase:firebase-analytics-ktx@@19.0.2 */
@Metadata(m152bv = {1, 0, 3}, m151d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, m150d2 = {"Lcom/google/firebase/analytics/ktx/FirebaseAnalyticsKtxRegistrar;", "Lcom/google/firebase/components/ComponentRegistrar;", "<init>", "()V", "java.com.google.android.libraries.firebase.firebase_analytics_ktx_granule"}, m149k = 1, m148mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class FirebaseAnalyticsKtxRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public final List<Component<?>> getComponents() {
        List<Component<?>> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(LibraryVersionComponent.create("fire-analytics-ktx", "19.0.2"));
        return listOf;
    }
}
