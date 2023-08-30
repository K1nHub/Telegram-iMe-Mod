package com.google.firebase.dynamiclinks.ktx;

import androidx.annotation.Keep;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
/* compiled from: FirebaseDynamicLinks.kt */
@Keep
/* loaded from: classes3.dex */
public final class FirebaseDynamicLinksKtxRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public List<Component<?>> getComponents() {
        List<Component<?>> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(LibraryVersionComponent.create("fire-dl-ktx", "20.1.1"));
        return listOf;
    }
}
