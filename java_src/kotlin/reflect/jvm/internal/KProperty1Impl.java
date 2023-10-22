package kotlin.reflect.jvm.internal;

import java.lang.reflect.Member;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty1;
import kotlin.reflect.jvm.internal.KProperty1Impl;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
/* compiled from: KProperty1Impl.kt */
/* loaded from: classes4.dex */
public class KProperty1Impl<T, V> extends KPropertyImpl<V> implements KProperty1<T, V> {
    private final Lazy<Getter<T, V>> _getter;
    private final Lazy<Member> delegateSource;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KProperty1Impl(KDeclarationContainerImpl container, String name, String signature, Object obj) {
        super(container, name, signature, obj);
        Lazy<Getter<T, V>> lazy;
        Lazy<Member> lazy2;
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(signature, "signature");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<Getter<T, ? extends V>>(this) { // from class: kotlin.reflect.jvm.internal.KProperty1Impl$_getter$1
            final /* synthetic */ KProperty1Impl<T, V> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final KProperty1Impl.Getter<T, V> invoke() {
                return new KProperty1Impl.Getter<>(this.this$0);
            }
        });
        this._getter = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<Member>(this) { // from class: kotlin.reflect.jvm.internal.KProperty1Impl$delegateSource$1
            final /* synthetic */ KProperty1Impl<T, V> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KProperty1Impl(KDeclarationContainerImpl container, PropertyDescriptor descriptor) {
        super(container, descriptor);
        Lazy<Getter<T, V>> lazy;
        Lazy<Member> lazy2;
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<Getter<T, ? extends V>>(this) { // from class: kotlin.reflect.jvm.internal.KProperty1Impl$_getter$1
            final /* synthetic */ KProperty1Impl<T, V> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final KProperty1Impl.Getter<T, V> invoke() {
                return new KProperty1Impl.Getter<>(this.this$0);
            }
        });
        this._getter = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<Member>(this) { // from class: kotlin.reflect.jvm.internal.KProperty1Impl$delegateSource$1
            final /* synthetic */ KProperty1Impl<T, V> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
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
    public Getter<T, V> getGetter() {
        return this._getter.getValue();
    }

    @Override // kotlin.reflect.KProperty1
    public V get(T t) {
        return getGetter().call(t);
    }

    @Override // kotlin.jvm.functions.Function1
    public V invoke(T t) {
        return get(t);
    }

    /* compiled from: KProperty1Impl.kt */
    /* loaded from: classes4.dex */
    public static final class Getter<T, V> extends KPropertyImpl.Getter<V> implements KProperty1.Getter<T, V> {
        private final KProperty1Impl<T, V> property;

        /* JADX WARN: Multi-variable type inference failed */
        public Getter(KProperty1Impl<T, ? extends V> property) {
            Intrinsics.checkNotNullParameter(property, "property");
            this.property = property;
        }

        @Override // kotlin.reflect.jvm.internal.KPropertyImpl.Accessor, kotlin.reflect.KProperty.Accessor
        public KProperty1Impl<T, V> getProperty() {
            return this.property;
        }

        @Override // kotlin.jvm.functions.Function1
        public V invoke(T t) {
            return getProperty().get(t);
        }
    }
}
