package com.google.firebase.firestore.local;

import java.util.Comparator;
/* renamed from: com.google.firebase.firestore.local.LruGarbageCollector$RollingSequenceNumberBuffer$$ExternalSyntheticLambda0 */
/* loaded from: classes3.dex */
public final /* synthetic */ class C1016xc382edc1 implements Comparator {
    public static final /* synthetic */ C1016xc382edc1 INSTANCE = new C1016xc382edc1();

    private /* synthetic */ C1016xc382edc1() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int compareTo;
        compareTo = ((Long) obj2).compareTo((Long) obj);
        return compareTo;
    }
}
