package kotlin.reflect.jvm.internal;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.jvm.internal.KMutableProperty1Impl;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
/* compiled from: KProperty1Impl.kt */
/* loaded from: classes4.dex */
public final class KMutableProperty1Impl<T, V> extends KProperty1Impl<T, V> implements KMutableProperty1<T, V> {
    private final Lazy<Setter<T, V>> _setter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KMutableProperty1Impl(KDeclarationContainerImpl container, String name, String signature, Object obj) {
        super(container, name, signature, obj);
        Lazy<Setter<T, V>> lazy;
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(signature, "signature");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<Setter<T, V>>(this) { // from class: kotlin.reflect.jvm.internal.KMutableProperty1Impl$_setter$1
            final /* synthetic */ KMutableProperty1Impl<T, V> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final KMutableProperty1Impl.Setter<T, V> invoke() {
                return new KMutableProperty1Impl.Setter<>(this.this$0);
            }
        });
        this._setter = lazy;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KMutableProperty1Impl(KDeclarationContainerImpl container, PropertyDescriptor descriptor) {
        super(container, descriptor);
        Lazy<Setter<T, V>> lazy;
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0<Setter<T, V>>(this) { // from class: kotlin.reflect.jvm.internal.KMutableProperty1Impl$_setter$1
            final /* synthetic */ KMutableProperty1Impl<T, V> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final KMutableProperty1Impl.Setter<T, V> invoke() {
                return new KMutableProperty1Impl.Setter<>(this.this$0);
            }
        });
        this._setter = lazy;
    }

    @Override // kotlin.reflect.KMutableProperty1, kotlin.reflect.KMutableProperty
    public Setter<T, V> getSetter() {
        return this._setter.getValue();
    }

    public void set(T t, V v) {
        getSetter().call(t, v);
    }

    /* compiled from: KProperty1Impl.kt */
    /* loaded from: classes4.dex */
    public static final class Setter<T, V> extends KPropertyImpl.Setter<V> implements KMutableProperty1.Setter<T, V> {
        private final KMutableProperty1Impl<T, V> property;

        public Setter(KMutableProperty1Impl<T, V> property) {
            Intrinsics.checkNotNullParameter(property, "property");
            this.property = property;
        }

        @Override // kotlin.reflect.jvm.internal.KPropertyImpl.Accessor, kotlin.reflect.KProperty.Accessor
        public KMutableProperty1Impl<T, V> getProperty() {
            return this.property;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Object obj, Object obj2) {
            invoke2((Setter<T, V>) obj, obj2);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public void invoke2(T t, V v) {
            getProperty().set(t, v);
        }
    }
}
