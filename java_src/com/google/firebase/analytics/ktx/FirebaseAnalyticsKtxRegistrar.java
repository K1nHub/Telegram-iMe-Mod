package com.google.firebase.analytics.ktx;

import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
/* compiled from: com.google.firebase:firebase-analytics-ktx@@19.0.2 */
/* loaded from: classes4.dex */
public final class FirebaseAnalyticsKtxRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public final List<Component<?>> getComponents() {
        List<Component<?>> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(LibraryVersionComponent.create("fire-analytics-ktx", "19.0.2"));
        return listOf;
    }
}
