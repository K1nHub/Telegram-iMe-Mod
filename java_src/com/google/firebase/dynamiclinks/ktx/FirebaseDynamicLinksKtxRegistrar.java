package com.google.firebase.dynamiclinks.ktx;

import androidx.annotation.Keep;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
/* compiled from: FirebaseDynamicLinks.kt */
@Keep
@Metadata(m152bv = {1, 0, 3}, m151d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00030\u0002H\u0016¨\u0006\u0007"}, m150d2 = {"Lcom/google/firebase/dynamiclinks/ktx/FirebaseDynamicLinksKtxRegistrar;", "Lcom/google/firebase/components/ComponentRegistrar;", "", "Lcom/google/firebase/components/Component;", "getComponents", "<init>", "()V", "com.google.firebase-firebase-dynamic-links-ktx"}, m149k = 1, m148mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class FirebaseDynamicLinksKtxRegistrar implements ComponentRegistrar {
    @Override // com.google.firebase.components.ComponentRegistrar
    public List<Component<?>> getComponents() {
        List<Component<?>> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(LibraryVersionComponent.create("fire-dl-ktx", "20.1.1"));
        return listOf;
    }
}
