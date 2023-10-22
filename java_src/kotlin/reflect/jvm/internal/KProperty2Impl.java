package kotlin.reflect.jvm.internal;

import java.lang.reflect.Member;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.KProperty2Impl;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
/* compiled from: KProperty2Impl.kt */
/* loaded from: classes4.dex */
public class KProperty2Impl<D, E, V> extends KPropertyImpl<V> implements Function2 {
    private final Lazy<Getter<D, E, V>> _getter;
    private final Lazy<Member> delegateSource;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KProperty2Impl(KDeclarationContainerImpl container, PropertyDescriptor descriptor) {
        super(container, descriptor);
        Lazy<Getter<D, E, V>> lazy;
        Lazy<Member> lazy2;
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<Getter<Object, Object, Object>>(this) { // from class: kotlin.reflect.jvm.internal.KProperty2Impl$_getter$1
            final /* synthetic */ KProperty2Impl<Object, Object, Object> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final KProperty2Impl.Getter<Object, Object, Object> invoke() {
                return new KProperty2Impl.Getter<>(this.this$0);
            }
        });
        this._getter = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<Member>(this) { // from class: kotlin.reflect.jvm.internal.KProperty2Impl$delegateSource$1
            final /* synthetic */ KProperty2Impl<Object, Object, Object> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Member invoke() {
                return this.this$0.computeDelegateSource();
            }
        });
        this.delegateSource = lazy2;
    }

    @Override // kotlin.reflect.jvm.internal.KPropertyImpl, kotlin.reflect.KProperty
    public Getter<D, E, V> getGetter() {
        return this._getter.getValue();
    }

    public V get(D d, E e) {
        return getGetter().call(d, e);
    }

    @Override // kotlin.jvm.functions.Function2
    public V invoke(D d, E e) {
        return get(d, e);
    }

    /* compiled from: KProperty2Impl.kt */
    /* loaded from: classes4.dex */
    public static final class Getter<D, E, V> extends KPropertyImpl.Getter<V> implements Function2 {
        private final KProperty2Impl<D, E, V> property;

        /* JADX WARN: Multi-variable type inference failed */
        public Getter(KProperty2Impl<D, E, ? extends V> property) {
            Intrinsics.checkNotNullParameter(property, "property");
            this.property = property;
        }

        @Override // kotlin.reflect.jvm.internal.KPropertyImpl.Accessor, kotlin.reflect.KProperty.Accessor
        public KProperty2Impl<D, E, V> getProperty() {
            return this.property;
        }

        @Override // kotlin.jvm.functions.Function2
        public V invoke(D d, E e) {
            return getProperty().get(d, e);
        }
    }
}
