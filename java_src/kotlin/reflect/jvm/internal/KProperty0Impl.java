package kotlin.reflect.jvm.internal;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty0;
import kotlin.reflect.jvm.internal.KProperty0Impl;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
/* compiled from: KProperty0Impl.kt */
/* loaded from: classes4.dex */
public class KProperty0Impl<V> extends KPropertyImpl<V> implements KProperty0<V> {
    private final Lazy<Getter<V>> _getter;
    private final Lazy<Object> delegateValue;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KProperty0Impl(KDeclarationContainerImpl container, PropertyDescriptor descriptor) {
        super(container, descriptor);
        Lazy<Getter<V>> lazy;
        Lazy<Object> lazy2;
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<Getter<? extends V>>(this) { // from class: kotlin.reflect.jvm.internal.KProperty0Impl$_getter$1
            final /* synthetic */ KProperty0Impl<V> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final KProperty0Impl.Getter<V> invoke() {
                return new KProperty0Impl.Getter<>(this.this$0);
            }
        });
        this._getter = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<Object>(this) { // from class: kotlin.reflect.jvm.internal.KProperty0Impl$delegateValue$1
            final /* synthetic */ KProperty0Impl<V> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KPropertyImpl kPropertyImpl = this.this$0;
                return kPropertyImpl.getDelegateImpl(kPropertyImpl.computeDelegateSource(), null, null);
            }
        });
        this.delegateValue = lazy2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KProperty0Impl(KDeclarationContainerImpl container, String name, String signature, Object obj) {
        super(container, name, signature, obj);
        Lazy<Getter<V>> lazy;
        Lazy<Object> lazy2;
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(signature, "signature");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<Getter<? extends V>>(this) { // from class: kotlin.reflect.jvm.internal.KProperty0Impl$_getter$1
            final /* synthetic */ KProperty0Impl<V> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final KProperty0Impl.Getter<V> invoke() {
                return new KProperty0Impl.Getter<>(this.this$0);
            }
        });
        this._getter = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<Object>(this) { // from class: kotlin.reflect.jvm.internal.KProperty0Impl$delegateValue$1
            final /* synthetic */ KProperty0Impl<V> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                KPropertyImpl kPropertyImpl = this.this$0;
                return kPropertyImpl.getDelegateImpl(kPropertyImpl.computeDelegateSource(), null, null);
            }
        });
        this.delegateValue = lazy2;
    }

    @Override // kotlin.reflect.jvm.internal.KPropertyImpl, kotlin.reflect.KProperty
    public Getter<V> getGetter() {
        return this._getter.getValue();
    }

    @Override // kotlin.reflect.KProperty0
    public V get() {
        return getGetter().call(new Object[0]);
    }

    @Override // kotlin.jvm.functions.Function0
    public V invoke() {
        return get();
    }

    /* compiled from: KProperty0Impl.kt */
    /* loaded from: classes4.dex */
    public static final class Getter<R> extends KPropertyImpl.Getter<R> implements KProperty0.Getter<R> {
        private final KProperty0Impl<R> property;

        /* JADX WARN: Multi-variable type inference failed */
        public Getter(KProperty0Impl<? extends R> property) {
            Intrinsics.checkNotNullParameter(property, "property");
            this.property = property;
        }

        @Override // kotlin.reflect.jvm.internal.KPropertyImpl.Accessor, kotlin.reflect.KProperty.Accessor
        public KProperty0Impl<R> getProperty() {
            return this.property;
        }

        @Override // kotlin.jvm.functions.Function0
        public R invoke() {
            return getProperty().get();
        }
    }
}
