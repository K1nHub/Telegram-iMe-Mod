package com.iMe.utils.extentions.delegate;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
/* compiled from: BundleExtractorDelegate.kt */
/* loaded from: classes4.dex */
public final class BundleExtractorDelegate<R, T> implements ReadWriteProperty<R, T> {
    private final Function1<R, T> initializer;
    private Object value;

    /* JADX WARN: Multi-variable type inference failed */
    public BundleExtractorDelegate(Function1<? super R, ? extends T> initializer) {
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        this.initializer = initializer;
        this.value = EMPTY.INSTANCE;
    }

    /* compiled from: BundleExtractorDelegate.kt */
    /* loaded from: classes4.dex */
    private static final class EMPTY {
        public static final EMPTY INSTANCE = new EMPTY();

        private EMPTY() {
        }
    }

    @Override // kotlin.properties.ReadWriteProperty
    public T getValue(R r, KProperty<?> property) {
        Intrinsics.checkNotNullParameter(property, "property");
        if (Intrinsics.areEqual(this.value, EMPTY.INSTANCE)) {
            this.value = this.initializer.invoke(r);
        }
        return (T) this.value;
    }
}
