package kotlin.reflect.jvm.internal;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KMutableProperty;
import kotlin.reflect.jvm.internal.KMutableProperty0Impl;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
/* compiled from: KProperty0Impl.kt */
/* loaded from: classes4.dex */
public final class KMutableProperty0Impl<V> extends KProperty0Impl<V> implements KMutableProperty {
    private final Lazy<Setter<V>> _setter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KMutableProperty0Impl(KDeclarationContainerImpl container, PropertyDescriptor descriptor) {
        super(container, descriptor);
        Lazy<Setter<V>> lazy;
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<Setter<V>>(this) { // from class: kotlin.reflect.jvm.internal.KMutableProperty0Impl$_setter$1
            final /* synthetic */ KMutableProperty0Impl<V> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final KMutableProperty0Impl.Setter<V> invoke() {
                return new KMutableProperty0Impl.Setter<>(this.this$0);
            }
        });
        this._setter = lazy;
    }

    @Override // kotlin.reflect.KMutableProperty
    public Setter<V> getSetter() {
        return this._setter.getValue();
    }

    public void set(V v) {
        getSetter().call(v);
    }

    /* compiled from: KProperty0Impl.kt */
    /* loaded from: classes4.dex */
    public static final class Setter<R> extends KPropertyImpl.Setter<R> implements Function1 {
        private final KMutableProperty0Impl<R> property;

        public Setter(KMutableProperty0Impl<R> property) {
            Intrinsics.checkNotNullParameter(property, "property");
            this.property = property;
        }

        @Override // kotlin.reflect.jvm.internal.KPropertyImpl.Accessor, kotlin.reflect.KProperty.Accessor
        public KMutableProperty0Impl<R> getProperty() {
            return this.property;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            m2041invoke((Setter<R>) obj);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: collision with other method in class */
        public void m2041invoke(R r) {
            getProperty().set(r);
        }
    }
}
