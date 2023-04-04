package com.iMe.utils.extentions.delegate;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
/* compiled from: ResettableLazyDelegate.kt */
/* loaded from: classes4.dex */
public final class ResettableLazy<PROPTYPE> implements Resettable {
    private final Function0<PROPTYPE> init;
    private volatile Lazy<? extends PROPTYPE> lazyHolder;
    private final ResettableLazyManager manager;

    /* JADX WARN: Multi-variable type inference failed */
    public ResettableLazy(ResettableLazyManager manager, Function0<? extends PROPTYPE> init) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        Intrinsics.checkNotNullParameter(init, "init");
        this.manager = manager;
        this.init = init;
        this.lazyHolder = (Lazy<PROPTYPE>) makeInitBlock();
    }

    public final Function0<PROPTYPE> getInit() {
        return this.init;
    }

    public final ResettableLazyManager getManager() {
        return this.manager;
    }

    public final PROPTYPE getValue(Object obj, KProperty<?> property) {
        Intrinsics.checkNotNullParameter(property, "property");
        return this.lazyHolder.getValue();
    }

    @Override // com.iMe.utils.extentions.delegate.Resettable
    public void reset() {
        this.lazyHolder = (Lazy<PROPTYPE>) makeInitBlock();
    }

    private final Lazy<PROPTYPE> makeInitBlock() {
        Lazy<PROPTYPE> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new ResettableLazy$makeInitBlock$1(this));
        return lazy;
    }
}
