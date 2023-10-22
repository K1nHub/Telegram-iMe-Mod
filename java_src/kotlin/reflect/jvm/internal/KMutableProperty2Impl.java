package kotlin.reflect.jvm.internal;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KMutableProperty;
import kotlin.reflect.jvm.internal.KMutableProperty2Impl;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
/* compiled from: KProperty2Impl.kt */
/* loaded from: classes4.dex */
public final class KMutableProperty2Impl<D, E, V> extends KProperty2Impl<D, E, V> implements KMutableProperty {
    private final Lazy<Setter<D, E, V>> _setter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KMutableProperty2Impl(KDeclarationContainerImpl container, PropertyDescriptor descriptor) {
        super(container, descriptor);
        Lazy<Setter<D, E, V>> lazy;
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<Setter<Object, Object, Object>>(this) { // from class: kotlin.reflect.jvm.internal.KMutableProperty2Impl$_setter$1
            final /* synthetic */ KMutableProperty2Impl<Object, Object, Object> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final KMutableProperty2Impl.Setter<Object, Object, Object> invoke() {
                return new KMutableProperty2Impl.Setter<>(this.this$0);
            }
        });
        this._setter = lazy;
    }

    @Override // kotlin.reflect.KMutableProperty
    public Setter<D, E, V> getSetter() {
        return this._setter.getValue();
    }

    public void set(D d, E e, V v) {
        getSetter().call(d, e, v);
    }

    /* compiled from: KProperty2Impl.kt */
    /* loaded from: classes4.dex */
    public static final class Setter<D, E, V> extends KPropertyImpl.Setter<V> implements Function3 {
        private final KMutableProperty2Impl<D, E, V> property;

        public Setter(KMutableProperty2Impl<D, E, V> property) {
            Intrinsics.checkNotNullParameter(property, "property");
            this.property = property;
        }

        @Override // kotlin.reflect.jvm.internal.KPropertyImpl.Accessor, kotlin.reflect.KProperty.Accessor
        public KMutableProperty2Impl<D, E, V> getProperty() {
            return this.property;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
            m2037invoke((Setter<D, E, V>) obj, obj2, obj3);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: collision with other method in class */
        public void m2037invoke(D d, E e, V v) {
            getProperty().set(d, e, v);
        }
    }
}
