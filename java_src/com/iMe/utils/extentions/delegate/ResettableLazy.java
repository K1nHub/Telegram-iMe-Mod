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
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<PROPTYPE>(this) { // from class: com.iMe.utils.extentions.delegate.ResettableLazy$makeInitBlock$1
            final /* synthetic */ ResettableLazy<PROPTYPE> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final PROPTYPE invoke() {
                this.this$0.getManager().register(this.this$0);
                return this.this$0.getInit().invoke();
            }
        });
        return lazy;
    }
}
